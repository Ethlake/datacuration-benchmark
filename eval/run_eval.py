import argparse
import os
import subprocess
import sys
from pathlib import Path


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model-path", required=True, help="Path to trained model")
    parser.add_argument("--datasets", nargs="+", required=True, help="Eval dataset names, e.g. MMVet OCRBench")
    parser.add_argument("--work-dir", required=True, help="Directory to store eval results")
    parser.add_argument("--lmu-data-root", required=True, help="Directory for VLMEvalKit dataset cache/download")
    parser.add_argument("--gpu", default="0", help="CUDA_VISIBLE_DEVICES")
    parser.add_argument("--model-name", default="llava_v1.5_7b", help="Model key in vlmeval/config.py")
    parser.add_argument("--mode", default="all", choices=["all", "infer", "eval"])
    return parser.parse_args()


def main():
    args = parse_args()
    eval_root = Path(__file__).resolve().parent

    env = os.environ.copy()
    env["CUDA_VISIBLE_DEVICES"] = args.gpu
    env["LMUData"] = str(Path(args.lmu_data_root).resolve())
    env["DCBENCH_EVAL_MODEL_PATH"] = str(Path(args.model_path).resolve())

    cmd = [
        sys.executable,
        "run.py",
        "--data",
        *args.datasets,
        "--model",
        args.model_name,
        "--mode",
        args.mode,
        "--work-dir",
        str(Path(args.work_dir).resolve()),
    ]

    print("Running eval command:")
    print(" ".join(cmd))
    subprocess.run(cmd, cwd=str(eval_root), env=env, check=True)


if __name__ == "__main__":
    main()