FROM python:3.12-slim

WORKDIR /app

# 仮想環境作成とインストール
RUN python -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"
RUN pip install litellm[proxy]

COPY config.yaml /app/config.yaml

RUN useradd -m appuser
USER appuser

EXPOSE 4000

ENTRYPOINT ["litellm", "--config", "config.yaml"]
CMD ["--port", "4000"]
