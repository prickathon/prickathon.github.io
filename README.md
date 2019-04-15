# prickathon.github.io

> Nuxt.js project

## Build Setup

``` bash
# install dependencies
$ npm install # Or yarn install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm start

# generate static project
$ npm run generate
```

For detailed explanation on how things work, checkout the [Nuxt.js docs](https://github.com/nuxt/nuxt.js).

# ハッカソン作品追加方法

1. git clone します

1. static/history.json を開きます。

1. `"title"` が参加した回であることを確認し、 `"works"` 配列の中身を編集します

    1. json の抜粋

        ```json
            {
              "title": "prickathon #7",
              "times": 7,
              "works": [
                {
                  "id": 27,
                  "name": "pretty-series-calendar",
                  "authors": [
                    "@yumechi"
                  ],
                  "thumbnailUrl": "/works/prickathon7/yumechi.png",
                  "description": "プリティーシリーズのイベントをまとめるカレンダー作りました",
                  "linkToContent": "https://github.com/yumechi/pretty-series-calendar"
                },
        ```

    1. 各パラメータの説明

        * `"id"`:   idです。機械的に前の数値より1つ大きいものを指定してください
        * `"name"`: 作品名です。
        * `"authors"`: 作者名です。複数人指定可能です。
        * `"thumbnailUrl"`: 作品のイメージです。staticディレクトリをルートとして指定します。省略した場合は「ゆめ準備中」画像になります。
        * `"description"`: 作品の説明です。
        * `"linkToContent"`: 作品のタイトル名をクリックしたときにジャンプするリンクです。

1. 上のBuild Setupを行うと、[ローカル](http://localhost:3000)で確認できます

わからないことがあったら、 @takanakahiko , @yumechi あたりに聞いてね！


