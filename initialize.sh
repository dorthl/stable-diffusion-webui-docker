# models
sudo chown -R -v dex:wheel data
cd data/models/Stable-diffusion
git lfs install
git lfs pull

# git clone https://huggingface.co/hakurei/waifu-diffusion-v1-4
# git clone https://huggingface.co/Linaqruf/anything-v3.0
#  Anything V5 https://civitai.com/models/9409
# git clone https://huggingface.co/Lykon/DreamShaper

git clone https://huggingface.co/XpucT/Deliberate

docker compose --profile auto up --build  

docker push registry.cn-hangzhou.aliyuncs.com/dorthl/stable-diffusion:latest
docker pull registry.cn-hangzhou.aliyuncs.com/dorthl/stable-diffusion:latest
docker-compose up -d auto

7z a data.7z data -mx=9
7z x data.7z