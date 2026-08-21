FROM ubuntu:22.04 

RUN apt-get update && apt-get install -y curl zstd && rm -rf /var/lib/apt/lists/* 

ENV HF_TOKEN=${HF_TOKEN} 

RUN curl -fsSL https://ollama.ai/install.sh | sh 

EXPOSE 11434 

CMD ["/bin/bash", "-c", "ollama serve & sleep 15 && ollama pull llama3.3 && wait"]
