FROM ollama/ollama:latest 
ARG HF_TOKEN 
ENV HF_TOKEN=${HF_TOKEN} 
RUN ollama pull llama3.3 
EXPOSE 11434 
CMD ["ollama", "serve"]
