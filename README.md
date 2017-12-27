# prickathon.github.io

公式ページみたいなもの

# Contribution

## 開発

### Getting Started

1. レポジトリをcloneします

2. `dev` をチェックアウトし、適当な作業用ブランチを生やします

3. `yarn install`

4. `npm run dev` でファイル編集時に自動でビルド・ブラウザリロードが走るモードになるので、書いていきます:pencil2:

5. いい感じになったら `dev`へPRを出します(GitHub Workflowについての詳細は後述します。)

## ワークフロー

### 開発フェーズ

1. レポジトリをcloneし、 `dev`ブランチをチェックアウトしてやっていきをします。必須ではないですが機能追加・修正ごとにブランチを切ってもらえるといい感じになりそうです:pray:

2. `dev`ブランチへPRを出します。

---

### リリースフェーズ

1. `dev` から `release`へPRを出します。
2. [CI](https://circleci.com/gh/prickathon/prickathon.github.io)でビルドが行われ、成功すると `master` にmergeされます。`master` の内容がGitHub Pagesに反映されます。

## 各ブランチの説明

- `master`
  - GitHub Pagesのデプロイ用のブランチです。`release` ブランチへPRがマージされるとCIが走り、ビルド・テストが成功すれば @entyo-machine によって自動的にコミット(=デプロイ)されます。

- `dev` ブランチ
  - 開発用ブランチです。レビューはこのブランチへのPRで行われます。**(`dev` -> `release` へのPRはCIが通ってしまうとそのままデプロイされてしまうため、レビューの工程はないです)**

- `release` ブランチ
  - PRを出されるとCIが走るブランチです。 必要に応じてコミットに`tag` とかつけてもいいかもしれないです。
