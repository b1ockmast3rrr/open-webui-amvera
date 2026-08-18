FROM ghcr.io/open-webui/open-webui:main

WORKDIR /app

EXPOSE 8080

ENV WEBUI_AUTH true ENV WEBUI_SECRET_KEY your-secret-key-here

VOLUME ["/app/backend/data"]

CMD ["sh", "-c", "exec gunicorn --bind 0.0.0.0:8080 --workers 4 --worker-class uvicorn.workers.UvicornWorker --timeout 120 main:app"]