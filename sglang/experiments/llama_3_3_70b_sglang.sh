# Launch sglang
# Llama 3.3 70B on 4 x H200 (bf16)
# python3 -m sglang.launch_server --model-path meta-llama/Llama-3.3-70B-Instruct --tp-size 4 --host 0.0.0.0 --port 30000 --disable-radix-cache --enable-torch-compile

# offline
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 3000 --random-input 1024 --random-output 1024 --output-file llama_3_3_70b_offline_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 4000 --random-input 1024 --random-output 512 --output-file llama_3_3_70b_offline_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 800 --random-input 4096 --random-output 2048 --output-file llama_3_3_70b_offline_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 1500 --random-input 4096 --random-output 1024 --output-file llama_3_3_70b_offline_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 6000 --random-input 256 --random-output 512 --output-file llama_3_3_70b_offline_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name sharegpt --num-prompt 2000 --output-file llama_3_3_70b_offline_output.jsonl
cat llama_3_3_70b_offline_output.jsonl | cut -d':' -f9 | cut -d',' -f1

# online
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 300 --request-rate 1 --random-input 1024 --random-output 1024  --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 600 --request-rate 2 --random-input 1024 --random-output 1024 --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 1200 --request-rate 4 --random-input 1024 --random-output 1024 --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 2400 --request-rate 8 --random-input 1024 --random-output 1024 --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompt 3200 --request-rate 16 --random-input 1024 --random-output 1024 --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name sharegpt --num-prompts 1200 --request-rate 4 --output-file llama_3_3_70b_online_output.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name sharegpt --num-prompts 2400 --request-rate 8 --output-file llama_3_3_70b_online_output.jsonl