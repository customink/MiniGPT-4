
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
- Run `bin/server` command.
- 
## Troubleshooting

pip install --upgrade accelerate
nvidia-smi

pip install -U bitsandbytes
https://github.com/Vision-CAIR/MiniGPT-4/issues/117

`RuntimeError: probability tensor contains either `inf`, `nan` or element < 0`
https://github.com/Vision-CAIR/MiniGPT-4/issues/74
