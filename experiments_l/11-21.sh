#!/bin/bash

echo "Training ppo2 on Pong for 10M Steps"
OPENAI_LOGDIR=logs/pong_10M_ppo2_2 python -m baselines.run --alg=ppo2 --env=PongNoFrameskip-v0 --num_timesteps=1e7 --save_path=models/pong_10M_ppo2_2

echo "Training acktr on Pong for 10M Steps"
OPENAI_LOGDIR=logs/pong_10M_acktr_2 python -m baselines.run --alg=acktr --env=PongNoFrameskip-v0 --num_timesteps=1e7 --save_path=models/pong_10M_acktr_2

#
git pull
git add .
git commit -m ' trained on pong'
#
