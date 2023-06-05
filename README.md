# streamlit_sample

### アプリケーションの起動方法

- アプリケーションルートディレクトリに移動する。

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
