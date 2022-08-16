# id-column-wslg

WSL上のdocker-ceで動かしているコンテナ上からGUIを表示する、WSLgのサンプル。

## ファイル構成

- py3
  - Dockerfile　… Python+OpenCV環境用のDockerfile
- workspace
  - app.py　… OpenCVでGUI画面を表示するコード
  - fireworks.jpg　… サンプル画像
- docker-compose.yml　… WSLgを使うための設定をしたdocker-compose定義
- launch.cmd　…　処理実行用のバッチファイル

