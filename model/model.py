"""
model.py

Utility functions for downloading model weights into local disk.

Usage:
    python model.py --model-id vicuna-7b-v1.5
    python model.py --model-id all
    python model.py --model-id clip-vit-large-patch14-336 --root-dir /workspace/model
"""

import argparse
import subprocess
from pathlib import Path
from typing import Dict, TypedDict


ModelComponent = TypedDict(
    "ModelComponent",
    {
        "name": str,
        "repo": str,
    },
)


MODEL_REGISTRY: Dict[str, ModelComponent] = {
    "llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5": {
        "name": "llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5",
        "repo": "https://huggingface.co/liuhaotian/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5",
    },
    "vicuna-7b-v1.5": {
        "name": "vicuna-7b-v1.5",
        "repo": "https://huggingface.co/lmsys/vicuna-7b-v1.5",
    },
    "clip-vit-large-patch14-336": {
        "name": "clip-vit-large-patch14-336",
        "repo": "https://huggingface.co/openai/clip-vit-large-patch14-336",
    },
}


def _ensure_model_exists(model_id: str) -> None:
    if model_id not in MODEL_REGISTRY:
        available = ", ".join(sorted(MODEL_REGISTRY.keys()))
        raise ValueError(
            f"Unknown model_id `{model_id}`. "
            f"Available model_ids: {available}, or use `all`."
        )


def _run_command(cmd: list[str], cwd: Path | None = None) -> None:
    print("Running command:", " ".join(cmd))
    subprocess.run(cmd, cwd=str(cwd) if cwd else None, check=True)


def _is_git_repo(path: Path) -> bool:
    return (path / ".git").exists()


def clone_model_repo(repo_url: str, target_dir: Path) -> Path:
    """
    Clone a Hugging Face git repo into target_dir.
    If target_dir already exists, skip cloning.
    """
    if target_dir.exists():
        if _is_git_repo(target_dir):
            print(f"Model repo already exists, skipping clone: {target_dir}")
            return target_dir
        else:
            raise FileExistsError(
                f"Target path exists but is not a git repo: {target_dir}"
            )

    target_dir.parent.mkdir(parents=True, exist_ok=True)
    _run_command(["git", "clone", repo_url, str(target_dir)])
    return target_dir


def download_model(model_id: str, root_dir: Path) -> Path:
    """
    Download one model from MODEL_REGISTRY.

    Final download directory:
        root_dir / "download" / model_name
    """
    _ensure_model_exists(model_id)

    root_dir = Path(root_dir).resolve()
    download_root = root_dir / "download"
    download_root.mkdir(parents=True, exist_ok=True)

    model_info = MODEL_REGISTRY[model_id]
    model_name = model_info["name"]
    repo_url = model_info["repo"]

    target_dir = download_root / model_name
    print(f"Preparing model `{model_id}` in `{target_dir}`")

    clone_model_repo(repo_url, target_dir)

    print(f"Finished preparing model `{model_id}` at `{target_dir}`")
    return target_dir


def download_all_models(root_dir: Path) -> Dict[str, Path]:
    """
    Download all registered models and return mapping: model_id -> local_path
    """
    results: Dict[str, Path] = {}
    for model_id in MODEL_REGISTRY:
        results[model_id] = download_model(model_id, root_dir)
    return results


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Download model weights from MODEL_REGISTRY.")
    parser.add_argument(
        "--model-id",
        type=str,
        required=True,
        help="Model ID from MODEL_REGISTRY, or `all`.",
    )
    parser.add_argument(
        "--root-dir",
        type=str,
        default=str(Path(__file__).resolve().parent),
        help="Root directory under which models will be placed. "
        "Final path will be <root-dir>/download/<model-name>",
    )
    return parser.parse_args()


if __name__ == "__main__":
    args = parse_args()

    model_id = args.model_id
    root_dir = Path(args.root_dir).resolve()

    if model_id == "all":
        results = download_all_models(root_dir)
        print("\nAll models ready:")
        for mid, path in results.items():
            print(f"  - {mid}: {path}")
    else:
        final_dir = download_model(model_id, root_dir)
        print(f"\nModel ready at: {final_dir}")