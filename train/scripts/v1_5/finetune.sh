
#!/bin/bash
set -euo pipefail

PROJECT_ROOT="${DCBENCH_PROJECT_ROOT:-/home/hanze/datacuration-benchmark}"

BASE_LLM_PATH="${DCBENCH_BASE_LLM_PATH:-$PROJECT_ROOT/model/download/vicuna-7b-v1.5}"
DATA_PATH="${DCBENCH_DATA_PATH:-$PROJECT_ROOT/curated-data/current}"
IMAGE_FOLDER="${DCBENCH_IMAGE_FOLDER:-$PROJECT_ROOT/data/download/llava-v1.5-instruct}"
VISION_TOWER="${DCBENCH_VISION_TOWER_PATH:-$PROJECT_ROOT/model/download/clip-vit-large-patch14-336}"
MM_PROJECTOR_PATH="${DCBENCH_MM_PROJECTOR_PATH:-$PROJECT_ROOT/model/download/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin}"
TRAINED_MODEL_DIR="${DCBENCH_TRAINED_MODEL_DIR:-$PROJECT_ROOT/trained-weights/llava-smoke-run}"

cd "$PROJECT_ROOT/train"

deepspeed llava/train/train_mem.py \
    --deepspeed ./scripts/zero3.json \
    --model_name_or_path "$BASE_LLM_PATH" \
    --version v1 \
    --data_path "$DATA_PATH" \
    --image_folder "$IMAGE_FOLDER" \
    --vision_tower "$VISION_TOWER" \
    --pretrain_mm_mlp_adapter "$MM_PROJECTOR_PATH" \
    --mm_projector_type mlp2x_gelu \
    --mm_vision_select_layer -2 \
    --mm_use_im_start_end False \
    --mm_use_im_patch_token False \
    --image_aspect_ratio pad \
    --group_by_modality_length True \
    --bf16 True \
    --output_dir "$TRAINED_MODEL_DIR" \
    --num_train_epochs 1 \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 2 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 20000 \
    --save_total_limit 1 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True \
    --dataloader_num_workers 4 \
    --lazy_preprocess True \
    --report_to none