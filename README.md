# streamlit_sample

このプロジェクトは、Streamlitを使用した簡単なWebアプリケーションのサンプルです。Dockerコンテナ上で動作し、開発環境の構築が容易に行えます。

## 必要要件

- Docker Desktop
- Git

## セットアップと起動方法

### 1. プロジェクトのクローン

```bash
git clone [リポジトリURL]
cd streamlit_sample
```

### 2. アプリケーションの起動

#### Dockerイメージのビルド

以下のコマンドでDockerイメージを作成します：

```bash
docker build . -t streamlit_sample_app_env
```

#### コンテナの起動

以下のコマンドでコンテナを起動します：

```bash
docker run -p 8501:8501 -v $(pwd)/src:/opt/app/src --rm --name streamlit_sample_app_env -it streamlit_sample_app_env
```

このコマンドの説明：
- `-p 8501:8501`: Streamlitのデフォルトポート(8501)をホストマシンに公開
- `-v $(pwd)/src:/opt/app/src`: ソースコードのボリュームマウント（ホットリロード対応）
- `--rm`: コンテナ停止時に自動的にコンテナを削除
- `--name streamlit_sample_app_env`: コンテナ名の指定
- `-it`: 対話モードでコンテナを起動

### 3. アプリケーションへのアクセス

コンテナ起動後、ブラウザで以下のURLにアクセスしてください：

```
http://localhost:8501
```

### 4. アプリケーションの停止

コンテナを停止するには、以下のいずれかの方法を使用します：

- ターミナルで `Ctrl + C` を押す
- 別のターミナルから `docker stop streamlit_sample_app_env` を実行

## 開発について

ソースコードは `src` ディレクトリ内にあります。ファイルを変更すると、Streamlitの自動リロード機能により、変更が即座にブラウザに反映されます。

```bash
cd [アプリのルートディレクトリ]
```

- イメージの作成

```bash
docker build . -t streamlit_sample_app_env
```

- コンテナの起動

```bash
docker run -p 8501:8501 -v $(pwd)/src:/opt/app/src --rm  --name streamlit_sample_app_env -it streamlit_sample_app_env
```

- コンテナの停止

```
ctr(コントロール) + c
```
