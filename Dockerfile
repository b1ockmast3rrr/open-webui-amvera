FROM ollama/ollama:latest 
ARG HF_TOKEN 
ENV HF_TOKEN=${HF_TOKEN} 
EXPOSE 11434 
RUN mkdir -p /entrypoint && echo '#!/bin/sh\nollama serve &\nsleep 10\nollama pull llama3.3\nwait' > /entrypoint/start.sh && chmod +x /entrypoint/start.sh 
CMD ["/bin/sh", "/entrypoint/start.sh"]
