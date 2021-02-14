#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 OMP_NUM_THREADS=60 python ner.py --config configs/ner/quaero-100-demi.json --num_epochs 10 --batch_size 16 \
 --loss_type sentence --optim sgd --learning_rate 0.01 --lr_decay 0.99999 --grad_clip 0.0 --warmup_steps 10 --weight_decay 0.0 --unk_replace 0.0 \
 --embedding sskip --embedding_dict "../../cbow_med.vec.gz" --model_path "../Results/ner-fra4_ID-w2v-conll17-half" \
 --train "../../../TP_ISD2020/QUAERO_FrenchPress/fra4_ID.train" --dev "../../../TP_ISD2020/QUAERO_FrenchPress/fra4_ID.dev" --test "../../../TP_ISD2020/QUAERO_FrenchPress/fra4_ID.test"
