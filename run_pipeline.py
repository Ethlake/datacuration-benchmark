import argparse
import os
import subprocess
import sys
from pathlib import Path

import yaml

from data.data import download_extract
from model.model import download_model


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", default="pipeline.yaml")
    return parser.parse_args()


def main():
    args = parse_args()
    project_root = Path(__file__).resolve().parent

    with open(args.config, "r", encoding="utf-8") as f:
        cfg = yaml.safe_load(f)

    paths = cfg["paths"]
    downloads = cfg["downloads"]
    train_cfg = cfg["train"]
    eval_cfg = cfg["eval"]

    data_root = Path(paths["data_root"]).resolve()
    model_root = Path(paths["model_root"]).resolve()
    curated_root = Path(paths["curated_root"]).resolve()
    trained_root = Path(paths["trained_root"]).resolve()
    eval_root = Path(paths["eval_root"]).resolve()
    lmu_data_root = Path(paths["lmu_data_root"]).resolve()

    curated_root.mkdir(parents=True, exist_ok=True)
    trained_root.mkdir(parents=True, exist_ok=True)
    eval_root.mkdir(parents=True, exist_ok=True)
    lmu_data_root.mkdir(parents=True, exist_ok=True)

    # 1) 下载数据
    dataset_id = downloads["dataset_id"]
    dataset_dir = download_extract(dataset_id, data_root)

    # 2) 下载模型
    model_ids = downloads["model_ids"]
    model_dirs = {}
    for mid in model_ids:
        model_dirs[mid] = download_model(mid, model_root)

    # 3) 当前先用固定数据集充当 curated data
    current_curated = curated_root / "current"
    if current_curated.exists() or current_curated.is_symlink():
        current_curated.unlink()
    current_curated.symlink_to(dataset_dir, target_is_directory=True)

    # 4) train
    trained_model_dir = trained_root / train_cfg["output_name"]
    env = os.environ.copy()
    env["DCBENCH_PROJECT_ROOT"] = str(project_root)
    env["DCBENCH_BASE_LLM_PATH"] = str(model_dirs["vicuna-7b-v1.5"])
    env["DCBENCH_DATA_PATH"] = str(current_curated)
    env["DCBENCH_IMAGE_FOLDER"] = str(dataset_dir)
    env["DCBENCH_VISION_TOWER_PATH"] = str(model_dirs["clip-vit-large-patch14-336"])
    env["DCBENCH_MM_PROJECTOR_PATH"] = str(
        model_dirs["llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5"] / "mm_projector.bin"
    )
    env["DCBENCH_TRAINED_MODEL_DIR"] = str(trained_model_dir)

    print(f"\n[Pipeline] Start training -> {trained_model_dir}")
    subprocess.run(["bash", train_cfg["script"]], env=env, check=True)

    # 5) eval
    eval_work_dir = eval_root / train_cfg["output_name"]
    eval_work_dir.mkdir(parents=True, exist_ok=True)

    print(f"\n[Pipeline] Start evaluation -> {eval_work_dir}")
    subprocess.run(
        [
            sys.executable,
            str(project_root / "eval" / "run_eval.py"),
            "--model-path",
            str(trained_model_dir),
            "--datasets",
            *eval_cfg["datasets"],
            "--work-dir",
            str(eval_work_dir),
            "--lmu-data-root",
            str(lmu_data_root),
            "--gpu",
            str(eval_cfg["gpu"]),
            "--model-name",
            eval_cfg["model_name"],
            "--mode",
            eval_cfg["mode"],
        ],
        check=True,
    )

    print("\n[Pipeline] All done.")


if __name__ == "__main__":
    main()