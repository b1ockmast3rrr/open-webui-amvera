FROM ollama/ollama:latest 

ENV HF_TOKEN=${HF_TOKEN} 

EXPOSE 11434 

CMD ["/bin/sh", "-c", "ollama serve & sleep 15 && ollama pull llama3.3 && wait"]
