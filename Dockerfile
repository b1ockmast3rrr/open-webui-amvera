FROM ubuntu:22.04 

RUN apt-get update && apt-get install -y curl zstd && rm -rf /var/lib/apt/lists/* 

ENV HF_TOKEN=${HF_TOKEN} 

RUN curl -fsSL https://ollama.ai/install.sh | sh 

EXPOSE 11434 

RUN echo '#!/bin/bash\nollama serve &\nsleep 15\nollama pull llama3.3\nwait' > /start.sh && chmod +x /start.sh 

CMD ["/start.sh"]
