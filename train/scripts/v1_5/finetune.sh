#!/bin/bash

cd /data/home/hanze/Open-LLaVA-NeXT

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/665kpretrain/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665kpretrain \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/reprollava/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-reprollava \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20\
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/chart-captcha-ocrvqa-400k-shuffle/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-chart-captcha-ocrvqa-400k-shuffle \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-9 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/l50k-b169/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-l50k-b169 \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-9 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/l50k-u169/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-l50k-u169 \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-9 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/l10k-b169/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-l10k-b169 \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-9 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/LLaVA-Pretrain/blip_laion_cc_sbu_558k.json \
#     --image_folder /shared/hanze/datasets/LLaVA-Pretrain \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/l10k-u169/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-l10k-u169 \
#     --num_train_epochs 0.00000000000001 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 1 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-9 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

## 6 datasets combnation

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/cosyn-cap-ocr/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-cosyn-cap-ocr \
#     --num_train_epochs 0.000000000000000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/ocr-cap-cosyn/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocr-cap-cosyn \
#     --num_train_epochs 0.000000000000000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/ocr-cosyn-cap/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocr-cosyn-cap \
#     --num_train_epochs 0.000000000000000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/cosyn-ocr-cap/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-cosyn-ocr-cap \
#     --num_train_epochs 0.000000000000000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/cap-cosyn-ocr/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-cap-cosyn-ocrn \
#     --num_train_epochs 0.000000000000000000000001 \
#     --per_device_train_batch_size 2 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 8 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 1e-20 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

    # deepspeed llava/train/train_mem.py \
    # --deepspeed ./scripts/zero3.json \
    # --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
    # --version v1 \
    # --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava_v1_5_mix665k.json \
    # --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
    # --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
    # --pretrain_mm_mlp_adapter /shared/hanze/pretrain/cosyn-ocr/mm_projector.bin \
    # --mm_projector_type mlp2x_gelu \
    # --mm_vision_select_layer -2 \
    # --mm_use_im_start_end False \
    # --mm_use_im_patch_token False \
    # --image_aspect_ratio pad \
    # --group_by_modality_length True \
    # --bf16 True \
    # --output_dir /shared/hanze/pretrain/llava-cosyn-ocr \
    # --num_train_epochs 0.00000000000001 \
    # --per_device_train_batch_size 2 \
    # --per_device_eval_batch_size 4 \
    # --gradient_accumulation_steps 8 \
    # --evaluation_strategy "no" \
    # --save_strategy "steps" \
    # --save_steps 50000 \
    # --save_total_limit 1 \
    # --learning_rate 0 \
    # --weight_decay 0. \
    # --warmup_ratio 0.03 \
    # --lr_scheduler_type "cosine" \
    # --logging_steps 1 \
    # --tf32 True \
    # --model_max_length 2048 \
    # --gradient_checkpointing True \
    # --dataloader_num_workers 4 \
    # --lazy_preprocess True \
    # --report_to none

# export GRAD_SAVE_SPLITS=600
# export GRAD_SAVE_TAG=ocrvqa-166k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=12


#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/ocrvqa-166k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/test \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# export GRAD_SAVE_SPLITS=400
# export GRAD_SAVE_TAG=captcha-113k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=25

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/captcha-113k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-captcha-113k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# export GRAD_SAVE_SPLITS=450
# export GRAD_SAVE_TAG=cosyn-chart-117k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=25

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/cosyn-chart-117k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-cosyn-chart-117k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none




# export GRAD_SAVE_SPLITS=600
# export GRAD_SAVE_TAG=LLaVA_Instruct_150K
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=25

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/LLaVA_Instruct_150K \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-LLaVA_Instruct_150K \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 850 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# export GRAD_SAVE_SPLITS=19
# export GRAD_SAVE_TAG=ai2d_merged_5k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=10


#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/ai2d_merged_5k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/test \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 0 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# export GRAD_SAVE_SPLITS=600
# export GRAD_SAVE_TAG=ocrvqa-166k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=5


#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/ocrvqa-166k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/tesr \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 0 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none





# export GRAD_SAVE_SPLITS=450
# export GRAD_SAVE_TAG=cosyn-chart-117k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=10

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/cosyn-chart-117k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/tesr \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 0 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none




# export GRAD_SAVE_SPLITS=600
# export GRAD_SAVE_TAG=LLaVA_Instruct_150K
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=5

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/LLaVA_Instruct_150K \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/tesr \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 100000 \
#     --save_total_limit 1 \
#     --learning_rate 0 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none





# export GRAD_SAVE_SPLITS=400
# export GRAD_SAVE_TAG=captcha-113k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=5

#     deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/captcha-113k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/tesr \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 50000 \
#     --save_total_limit 1 \
#     --learning_rate 0 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none







# export GRAD_SAVE_SPLITS=300
# export GRAD_SAVE_TAG=vqav2_83k
# export GRAD_SAVE_START=0
# export GRAD_SAVE_END=25




# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/llava-fin-cosyn-chart-117k \
#     --version v1 \
#     --data_path /shared/mllm-sft/LLaVA_Instruct_150K \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-cosyn-LLaVA_Instruct_150K \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 2000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none




# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/llava-fin-cosyn-chart-117k \
#     --version v1 \
#     --data_path /shared/mllm-sft/ocrvqa-166k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-cosyn-ocrvqa-166k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 2000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none




# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/vqav2_83k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-vqav2_83k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 300 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none








# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/llava-fin-ocrvqa-166k \
#     --version v1 \
#     --data_path /shared/mllm-sft/cosyn-chart-117k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-fin-ocr-cosyn-chart-117k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 2000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/re-ocrvqa-166k \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-re5k-ocrvqa-166k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/ocrvqa-cosyn-same-shuffle  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocrvqa-cosyn-same-shuffle \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/re-ocrvqa-166k-10k  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-re-ocrvqa-166k-10k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/ocrvqamore-cosynless-18k-shuffle  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocrvqamore-cosynless-18k-shuffle \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/ocrvq-cosyn-31-shuffle  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocrvq-cosyn-31-shuffle \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/mix-val1-train5-10-30  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-mix-val1-train5-10-30 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/mix-val7-train5-10-30  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-mix-val7-train5-10-30 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-uniform-113k  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-uniform-113k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/filtered-665k-uniform-113k  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-filtered-665k-uniform-113k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/mix-uniform  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-mix-uniform \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-rehigh-val7-train5  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-rehigh-val7-train5 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-rmguide-val7-train5  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-rmguide-val7-train5 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-rehigh-val1-train5  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-rehigh-val1-train5 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/llava-icons-133k.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-icons-133k \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/mllm-sft/ocrvqa-166k-filtered  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-ocrvqa-166k-filtered \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-uniform-113k-filtered  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-uniform-113k-filtered \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/665k-rehigh-val7-train5-filtered  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-rehigh-val7-train5-filtered \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/ocrbench-w-guidance  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-ocrbench-w-guidance \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/mmvet-w-guidance  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-mmvet-w-guidance \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none

# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/ocrbench-wo-guidance  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-ocrbench-wo-guidance \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/TIVE_15%.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-tive \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/download/llava-v1.5-instruct/coincide20.json \
#     --image_folder /shared/hanze/datasets/download/llava-v1.5-instruct \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --group_by_modality_length True \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-coincide20 \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none



# deepspeed llava/train/train_mem.py \
#     --deepspeed ./scripts/zero3.json \
#     --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
#     --version v1 \
#     --data_path /shared/hanze/datasets/mmvet-wo-guidance  \
#     --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
#     --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
#     --mm_projector_type mlp2x_gelu \
#     --mm_vision_select_layer -2 \
#     --mm_use_im_start_end False \
#     --mm_use_im_patch_token False \
#     --image_aspect_ratio pad \
#     --bf16 True \
#     --output_dir /shared/hanze/pretrain/llava-665k-mmvet-wo-guidance \
#     --num_train_epochs 1 \
#     --per_device_train_batch_size 16 \
#     --per_device_eval_batch_size 4 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "no" \
#     --save_strategy "steps" \
#     --save_steps 20000 \
#     --save_total_limit 1 \
#     --learning_rate 2e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.03 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --tf32 True \
#     --model_max_length 2048 \
#     --gradient_checkpointing True \
#     --dataloader_num_workers 4 \
#     --lazy_preprocess True \
#     --report_to none


deepspeed llava/train/train_mem.py \
    --deepspeed ./scripts/zero3.json \
    --model_name_or_path /shared/hanze/pretrain/vicuna-7b-v1.5 \
    --version v1 \
    --data_path /shared/mllm-sft/vqav2_83k  \
    --vision_tower /shared/hanze/pretrain/clip-vit-large-patch14-336 \
    --pretrain_mm_mlp_adapter /shared/hanze/pretrain/llava-v1.5-mlp2x-336px-pretrain-vicuna-7b-v1.5/mm_projector.bin \
    --mm_projector_type mlp2x_gelu \
    --mm_vision_select_layer -2 \
    --mm_use_im_start_end False \
    --mm_use_im_patch_token False \
    --image_aspect_ratio pad \
    --bf16 True \
    --output_dir /shared/hanze/pretrain/pretrained-llava1.5-7b \
    --num_train_epochs 0.000000000000000000001 \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 2 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 20000 \
    --save_total_limit 1 \
    --learning_rate 0 \
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