python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1024 --random-output 1024 --num-prompts 300 --request-rate 1 --output-file online.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1024 --random-output 1024 --num-prompts 600 --request-rate 2 --output-file online.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1024 --random-output 1024 --num-prompts 1200 --request-rate 4 --output-file online.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1024 --random-output 1024 --num-prompts 2400 --request-rate 8 --output-file online.jsonl
python3 -m sglang.bench_serving --backend sglang --dataset-name random --random-input 1024 --random-output 1024 --num-prompts 3200 --request-rate 16 --output-file online.jsonl
cat online.jsonl | cut -d':' -f9 | cut -d',' -f1