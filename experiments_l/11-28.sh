#!/bin/bash

#echo "Training ACKTR on QB using pong init for 10M Steps"
#OPENAI_LOGDIR=logs/pong_qb_10M_acktr_1 python -m baselines.run --alg=acktr --env=QbertNoFrameskip-v0 --num_timesteps=1e7 --load_path=models/pong_10M_acktr_1 --save_path=models/pong_qb_10M_acktr_1

#echo "Training ACKTR on QB using pong init for 10M Steps run 2"
#OPENAI_LOGDIR=logs/pong_qb_10M_acktr_2 python -m baselines.run --alg=acktr --env=QbertNoFrameskip-v0 --num_timesteps=1e7 --load_path=models/pong_10M_acktr_1 --save_path=models/pong_qb_10M_acktr_2

echo "Training ACKTR on DA using pong init for 10M Steps"
OPENAI_LOGDIR=logs/pong_da_10M_acktr_1_recovery python -m baselines.run --alg=acktr --env=DemonAttackNoFrameskip-v0 --num_timesteps=1e7 --load_path=models/pong_10M_acktr_1 --save_path=models/pong_da_10M_acktr_1_recovery

echo "Training ACKTR on DA using pong init for 10M Steps run 2"
OPENAI_LOGDIR=logs/pong_da_10M_acktr_2_recovery python -m baselines.run --alg=acktr --env=DemonAttackNoFrameskip-v0 --num_timesteps=1e7 --load_path=models/pong_10M_acktr_1 --save_path=models/pong_da_10M_acktr_2_recovery

#
git pull
git add .
git commit -m ' trained on DA init pong (2runs)' 
#
