python3 ../../../main_pretrain.py \
    --dataset $1 \
    --encoder resnet18 \
    --data_dir ./datasets \
    --max_epochs 1000 \
    --gpus 0 \
    --precision 16 \
    --num_workers 4 \
    --optimizer adam \
    --scheduler warmup_cosine \
    --warmup_epochs 2 \
    --lr 3e-3 \
    --warmup_start_lr 0 \
    --classifier_lr 3e-3 \
    --weight_decay 1e-6 \
    --batch_size 256 \
    --crop_size 32 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 0.0 0.0 \
    --crop_size 32 \
    --num_crops_per_aug 1 1 \
    --min_scale 0.2 \
    --name wmse-$1 \
    --wandb \
    --save_checkpoint \
    --project solo-learn \
    --entity unitn-mhug \
    --method wmse \
    --proj_output_dim 64 \
    --whitening_size 128
