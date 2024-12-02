## sglang benchmarks H200
Following the benchmarks from [sglang benchmarks](https://github.com/sgl-project/sglang/tree/main/benchmark/benchmark_vllm_060)

## Online benchmark results

### Llama 3.1 70B Insruct 4 x H200 141G

| RPS  | Num Prompts | Engine | Median E2E Latency | Median TTFT | Median TPOT | Median ITL |
|------|-------------|--------|--------------------|-------------|-------------|------------|
| 4    | 1200        | SGLang | 3005.24            | **65.72**   | 18.47       | **15.94**  |
| 8    | 2400        | SGLang | 4064.98            | **73.70**   | 24.02       | **17.75**  |

## Offline benchmark results

### Llama 3.1 70B Insruct 4 x H200 141G

| RPS  | Num Prompts | Engine | Request throughput | Output token throughput |  Tensor Parallel  |
|------|-------------|--------|--------------------|-------------------------|-------------------|
| inf  | 5000        | SGLang | 25.14              | **4885.17**             |4                  |


### Llama 3.1 70B Insruct 8 x H200 141G

| RPS  | Num Prompts | Engine | Request throughput | Output token throughput |  Tensor Parallel  |
|------|-------------|--------|--------------------|-------------------------|-------------------|
| inf  | 5000        | SGLang | 37.96              | **7376.03**             |8                  |
