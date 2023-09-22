
# Codespaces Setup

This project's branch makes has some additions to use Codespaces as well as streamline the setup process. This includes setting a few config files. For us, the convention is to use Llama 2. This branch also assumes you have access to a GPU Codespace. More details here:

https://docs.github.com/en/codespaces/developing-in-codespaces/getting-started-with-github-codespaces-for-machine-learning

## Pre-requisites

Getting access to Llama 2 may require a day or two.

- Request access to [Meta's Llama 2](https://ai.meta.com/llama/) LLM.
- Request access to [Llama 2 on Hugging Face](https://huggingface.co/meta-llama/Llama-2-7b-chat-hf/tree/main) repo.
- Make sure you have a [Hugging Face](https://huggingface.co) account.
- Create a Hugging Face [User Access Token](https://huggingface.co/settings/tokens).

## Secrets

Tokens created above can be setup in your [Codespaces Settings](https://github.com/settings/codespaces). Remember to grant secrets access to this repo. Here are the environment variables we need:

- `HUGGING_FACE_USER` Ex: MetaSkills
- `HUGGING_FACE_TOKEN` Ex: hf_...

## Setup

Step by step instructions to get up and running quickly.

- Run `bin/setup` command.
- Open New terminal. Run `conda activate minigpt4` command.
- Run `bin/llama` command.
- Run `bin/checkpoints` command.
- ⚠️ Run `pip install --upgrade accelerate` command.
- ⚠️ Run `pip install --upgrade bitsandbytes` command.
- Run `bin/server` command.
- Open `http://127.0.0.1:7860`

## ⚠️ Troubleshooting

Running `pip install --upgrade accelerate` seems to solve this issue.

```
ImportError: cannot import name 'is_npu_available' from 'accelerate.utils' (/opt/conda/envs/minigpt4/lib/python3.9/site-packages/accelerate/utils/__init__.py)
```

Running `pip install --upgrade bitsandbytes` seems to solve this issue. Details: https://github.com/Vision-CAIR/MiniGPT-4/issues/117

```
NameError: name 'cuda_setup' is not defined
```

This appears to be a warning only?

```
/opt/conda/envs/minigpt4/lib/python3.9/site-packages/torchvision/io/image.py:13: UserWarning: Failed to load image Python extension: libtorch_cuda_cu.so: cannot open shared object file: No such file or directory
  warn(f"Failed to load image Python extension: {e}")
```

This command was needed at some point but not now?

```
pip install --upgrade accelerate
```

Not sure if we hit this error with Llama 2. Details: https://github.com/Vision-CAIR/MiniGPT-4/issues/74

```
RuntimeError: probability tensor contains either `inf`, `nan` or element < 0
```

Use this command to see GPU info.

```
nvidia-smi
```
