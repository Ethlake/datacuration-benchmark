export CUDA_DEVICE_MAX_CONNECTIONS=1
export CUDA_VISIBLE_DEVICES=0,1,2,3


# 按你机器实际 GPU 数修改
GPUS_PER_NODE=4

cd /data/home/hanze/Open-LLaVA-NeXT

#!/bin/bash

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero2.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version plain \
#     --data_path ./playground/data/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder ./playground/data/LLaVA-Pretrain/images \
#     --vision_tower openai/clip-vit-large-patch14-336 \
#     --mm_projector_type mlp2x_gelu \
#     --tune_mm_mlp_adapter True \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --bf16 True \
#     --output_dir ./checkpoints/llava-v1.5-13b-pretrain \
#     --num_train_epochs 0.5 \
#     --per_device_train_batch_size 1 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 64 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 24000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-3 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to wandb



# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/ocrvqa-166k/train \
#   --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#   --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower True \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/llava-original \
#   --num_train_epochs 0.5 \
#   --per_device_train_batch_size 1 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 32 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b





PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
torchrun \
  --nproc_per_node=$GPUS_PER_NODE \
  --master_port=29502 \
  llava/train/train_mem.py \
  --deepspeed ./scripts/zero2.json \
  --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
  --version plain \
  --data_path /shared/mllm-sft/ocrvqa-166k/train \
  --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
  --mm_projector_type mlp2x_gelu \
  --tune_mm_mlp_adapter False \
  --unfreeze_mm_vision_tower True \
  --image_aspect_ratio anyres \
  --mm_vision_select_layer -2 \
  --mm_vision_select_feature patch \
  --mm_patch_merge_type spatial_unpad \
  --mm_use_im_start_end False \
  --mm_use_im_patch_token False \
  --bf16 True \
  --output_dir /shared/hanze/pretrain/ocrvqa \
  --num_train_epochs 1 \
  --per_device_train_batch_size 8 \
  --per_device_eval_batch_size 4 \
  --gradient_accumulation_steps 2 \
  --evaluation_strategy "no" \
  --save_strategy "steps" \
  --save_steps 5000 \
  --save_total_limit 1 \
  --learning_rate 1e-3 \
  --weight_decay 0. \
  --warmup_ratio 0.03 \
  --lr_scheduler_type "cosine" \
  --logging_steps 1 \
  --tf32 True \
  --model_max_length 4096 \
  --gradient_checkpointing True \
  --dataloader_num_workers 4 \
  --lazy_preprocess True \
  --report_to none \
  --run_name llava1b






# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/chart-captcha-ocrvqa-400k-shuffle/train \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower False \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/chart-captcha-ocrvqa-400k-shuffle \
#   --num_train_epochs 1 \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 1 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b





# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/l1k-b169/train \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower False \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/l1k-b169 \
#   --num_train_epochs 1 \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 1 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b



# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/l1k-u169/train \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower False \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/l1k-u169 \
#   --num_train_epochs 1 \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 1 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b






# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/l10k-u169/train \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower False \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/l10k-u169 \
#   --num_train_epochs 1 \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 1 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b



# PYTHONPATH="$(dirname pretrain.sh)/..":$PYTHONPATH \
# torchrun \
#   --nproc_per_node=$GPUS_PER_NODE \
#   --master_port=29502 \
#   llava/train/train_mem.py \
#   --deepspeed ./scripts/zero2.json \
#   --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#   --version plain \
#   --data_path /shared/mllm-sft/cosyn-chart-117k/train \
#   --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#   --mm_projector_type mlp2x_gelu \
#   --tune_mm_mlp_adapter False \
#   --unfreeze_mm_vision_tower False \
#   --image_aspect_ratio anyres \
#   --mm_vision_select_layer -2 \
#   --mm_vision_select_feature patch \
#   --mm_patch_merge_type spatial_unpad \
#   --mm_use_im_start_end False \
#   --mm_use_im_patch_token False \
#   --bf16 True \
#   --output_dir /shared/hanze/pretrain/cosyn-chart-117k \
#   --num_train_epochs 1 \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 4 \
#   --gradient_accumulation_steps 1 \
#   --evaluation_strategy "no" \
#   --save_strategy "steps" \
#   --save_steps 50000 \
#   --save_total_limit 1 \
#   --learning_rate 1e-3 \
#   --weight_decay 0. \
#   --warmup_ratio 0.03 \
#   --lr_scheduler_type "cosine" \
#   --logging_steps 1 \
#   --tf32 True \
#   --model_max_length 4096 \
#   --gradient_checkpointing True \
#   --dataloader_num_workers 4 \
#   --lazy_preprocess True \
#   --report_to none \
#   --run_name llava1b




