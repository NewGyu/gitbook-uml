# PalThrow Doc のコンテンツ

Gitbookでコンテンツ管理してみる試みのためのものです。コンテンツは[./src](src)以下にあるので、ここではドキュメントの公開の方法だけ書きます。

## 必要なもの

以下のどちらか。

* [Docker for Windows](https://docs.docker.com/docker-for-windows/)
* [Docker Toolbox](https://docs.docker.com/toolbox/overview/)

Docker for Windowsと ToolBoxの微妙な違いは[こちら](http://qiita.com/NewGyu/items/d9e6bddb85e2bf9afd15#docker-for-windows-%E3%81%A8-docker-toolbox)を。

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

