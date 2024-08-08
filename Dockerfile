FROM ubuntu:20.04

# 環境変数の設定
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# ollamaのインストール
RUN curl -fsSL https://ollama.com/install.sh | sh

# 作業ディレクトリの設定
WORKDIR /app

# ollamaのポートを公開
EXPOSE 11434

# エントリーポイントの設定
ENTRYPOINT ["ollama"]
CMD ["serve"]