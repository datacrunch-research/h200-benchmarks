# ref:
# sglang/benchmark/benchmark_vllm_060/README.md
# sglang/benchmark/blog_v0_2

# LLaMA 405B on 8 X H200 (bf16)
# python3 -m sglang.launch_server --model-path meta-llama/Llama-3.1-405B-Instruct --tp-size 8 --host 0.0.0.0 --port 30000 --disable-radix-cache --enable-torch-compile

# online
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 300 --request-rate 1 --random-input 1024 --random-output 1024  --output-file llama_405b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 600 --request-rate 2 --random-input 1024 --random-output 1024 --output-file llama_405b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 1200 --request-rate 4 --random-input 1024 --random-output 1024 --output-file llama_405b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 2400 --request-rate 8 --random-input 1024 --random-output 1024 --output-file llama_405b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name sharegpt --num-prompts 1200 --request-rate 4 --output-file llama_405b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name sharegpt --num-prompts 2400 --request-rate 8 --output-file llama_405b_online_output.jsonl