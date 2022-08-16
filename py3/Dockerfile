# https://hub.docker.com/_/python
FROM python:3.10.6-buster

# 対話形式での確認無効化（Dockerイメージビルド時に入力待ちで先に進めなくなるため）
# ENVで設定するとイメージ自体に設定が引き継がれるため、ARGで一時的な設定とする。
ARG DEBIAN_FRONTEND=noninteractive

# 必要なパッケージの追加とタイムゾーンの設定
# open-cvを使うためにlibgl1-mesa-devが必要
RUN apt update && apt install -y \
    tzdata \
    libgl1-mesa-dev \
&&  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
&&  apt clean \
&&  rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Tokyo

# Pythonパッケージ
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    numpy \
    opencv-python

