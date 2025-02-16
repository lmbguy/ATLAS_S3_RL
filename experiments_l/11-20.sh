#!/bin/bash

echo "Training ppo2 on DemonAttack for 10M Steps"
OPENAI_LOGDIR=logs/da_10M_ppo2_2 python -m baselines.run --alg=ppo2 --env=DemonAttackNoFrameskip-v0 --num_timesteps=1e7 --save_path=models/da_10M_ppo2_2

echo "Training acktr on DemonAttack for 10M Steps"
OPENAI_LOGDIR=logs/da_10M_acktr_2 python -m baselines.run --alg=acktr --env=DemonAttackNoFrameskip-v0 --num_timesteps=1e7 --save_path=models/da_10M_acktr_2


#
git pull
git add .
git commit -m ' trained on DemonAttack'
#
