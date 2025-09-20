export CUDA_VISIBLE_DEVICES=0
# Running on Hallay:4x6x10
python src/main.py --config=masia --env-config=hallway with env_args.n_agents=3 env_args.state_numbers=[4,6,10] > hallway_log.txt 2>&1 &
sleep 2
# Running on Hallay:4x6x10
python src/main.py --config=masia --env-config=hallway_group > hallway_group_log.txt 2>&1 &
sleep 2

export CUDA_VISIBLE_DEVICES=1
# Running on LBF:11x11-6p-4f-s1
python src/main.py --config=masia --env-config=lbf with env_args.sight=1 env_args.players=6 env_args.field_size=11 env_args.max_food=4 env_args.force_coop=False > lbf_6p_log.txt 2>&1 &
sleep 2
# Running on LBF:20x20-10p-6f-s1
python src/main.py --config=masia --env-config=lbf with env_args.sight=1 env_args.players=10 env_args.field_size=20 env_args.max_food=6 env_args.force_coop=False > lbf_10p_log.txt 2>&1 &
sleep 2

export CUDA_VISIBLE_DEVICES=2
# Running on TJ:hard
python src/main.py --config=masia --env-config=traffic_junction_hard > tj_hard_log.txt 2>&1 &
sleep 2
# Running on TJ:medium
python src/main.py --config=masia --env-config=traffic_junction > tj_medium_log.txt 2>&1 &
sleep 2

export CUDA_VISIBLE_DEVICES=3
# Running on SMAC:1o_10b_vs_1r
python src/main.py --config=masia --env-config=sc2 with env_args.map_name=1o_10b_vs_1r > smac_1o10b_log.txt 2>&1 &
sleep 2
# Running on SMAC:1o_2r_vs_4r
python src/main.py --config=masia --env-config=sc2 with env_args.map_name=1o_2r_vs_4r > smac_1o2r_log.txt 2>&1 &
sleep 2