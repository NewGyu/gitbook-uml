# GitbookとPlantUMLでUML図入りの文書を管理する

Gitbookでコンテンツ管理してみる試みのためのものです。コンテンツは[./src](src)以下にあるので、ここではドキュメントの公開の方法だけ書きます。

## 必要なもの

* Docker

## 使い方

### Gitbookをローカルで試す

```
$ docker-compose up viewer
```

### S3に発行して公開する

```
$ AWS_PROFILE=xxxx docker-compose up publish
```

AWS_PROFILEは自分の`~/.aws/credentials`の設定に合わせてください。

## 構造

```
.
├── .docker
│   ├── Dockerfile      ...Gitbookのツールセット入りイメージを作る
│   ├── fonts.conf      ...日本語フォント設定
│   ├── gitbook.sh      ...Gitbookソースのコンパイル、ローカルView実行のスクリプト
│   └── ipag.ttc        ...日本語フォント
├── .gitignore
├── README.md
├── docker-compose.yaml   ...ローカルViewer, S3へのPublishの設定
└── src
    ├── .bookignore
    ├── README.md
    ├── SUMMARY.md
    ├── book.json
    └── uml
```
