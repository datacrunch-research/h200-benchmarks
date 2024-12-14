# DeepSeek-V2 on 8 x H200 (bf16)
# python3 -m sglang.launch_server --model-path neuralmagic/DeepSeek-Coder-V2-Instruct-FP8 --disable-radix-cache --trust-remote-code --tp 8 --enable-dp-attention --mem-fraction-static 0.78
# python3 -m sglang.launch_server --model-path deepseek-ai/DeepSeek-V2.5-1210 --disable-radix-cache --trust-remote-code --tp 8 --enable-dp-attention --mem-fraction-static 0.78 --enable-torch-compile

python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1 --random-output 512 --random-range-ratio 1 --num-prompts 10000
