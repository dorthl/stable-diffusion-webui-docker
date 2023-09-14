# models
sudo chown -R -v dex:wheel data
cd data/models/Stable-diffusion
git lfs install
git lfs pull
git clone https://huggingface.co/hakurei/waifu-diffusion-v1-4
git clone https://huggingface.co/Linaqruf/anything-v3.0
git clone https://huggingface.co/Lykon/DreamShaper


docker compose --profile auto up --build