# Links
- [公式](https://github.com/ollama/ollama?tab=readme-ov-file#running-local-builds)

# コマンド
- 起動
  - `docker-compose up -d`
  - `docker-compose exec ollama //bin/bash`
  - `ollama run llama3.1`
- 停止: `docker-compose down`

# 「llama.cpp」と「ollama」
1. llama.cpp:
   - C++で書かれた大規模言語モデル（LLM）の推論エンジンです。
   - 主にMeta AIのLLaMAモデルとその派生モデルに焦点を当てています。
   - 低レベルの最適化に重点を置き、CPU上で効率的にLLMを実行することを目的としています。
   - モデルの量子化やファインチューニングなどの高度な機能を提供します。
   - より技術的なユーザーやデベロッパー向けです。

2. ollama:
   - Go言語で書かれたAIモデル管理・実行フレームワークです。
   - 様々なオープンソースLLMをサポートしています（LLaMA、GPT-J、OPT等）。
   - ユーザーフレンドリーなインターフェースを提供し、モデルのダウンロード、実行、管理を簡素化します。
   - APIを通じてアプリケーションに容易に統合できます。
   - エンドユーザーや、AIを自分のプロジェクトに簡単に組み込みたい開発者向けです。

主な違い:
- 実装言語: llama.cppはC++、ollamaはGo
- 焦点: llama.cppは低レベルの最適化、ollamaは使いやすさとインテグレーション
- 対象ユーザー: llama.cppはより技術的なユーザー、ollamaは幅広いユーザー
- モデルの範囲: llama.cppは主にLLaMAとその派生、ollamaはより広範なモデルをサポート
