from gym.envs.registration import registry, register, make, spec
from itertools import product
from .foraging import ForagingEnv

sizes = range(5, 20)
players = range(2, 20)
foods = range(1, 10)
coop = [True, False]
partial_obs = [True, False]
hard_mode = [True, False]

for s, p, f, c, po, h in product(sizes, players, foods, coop, partial_obs, hard_mode):
    register(
        id="CForaging{4}-{0}x{0}-{1}p-{2}f{3}{5}-v1".format(s, p, f, "-coop" if c else "", "-2s" if po else "", "-hard" if h else ""),
        entry_point="smac.env.lbforaging:ForagingEnv",
        kwargs={
            "players": p,
            "max_player_level": 6,
            "field_size": (s, s),
            "max_food": f,
            "sight": 2 if po else s,
            "max_episode_steps": 50,
            "force_coop": c,
            "hard_mode": h,
        },
    )
