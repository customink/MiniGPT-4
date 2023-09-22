pip install --upgrade accelerate
nvidia-smi

# https://github.com/Vision-CAIR/MiniGPT-4/issues/117
pip install -U bitsandbytes

# minigpt4_eval.yaml
ckpt: '/workspaces/vicuna-7b-checkpoint/prerained_minigpt4_7b.pth'

#RuntimeError: probability tensor contains either `inf`, `nan` or element < 0
https://github.com/Vision-CAIR/MiniGPT-4/issues/74
