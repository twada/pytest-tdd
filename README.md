tdd-python
=======================================

SETUP
---------------------------------------

### イメージのビルドと動作確認

```sh
$ docker compose build
$ docker compose up
```

TEST
---------------------------------------

### インタラクティブシェル（Dockerの中）に入る

```sh
$ docker compose run --rm python bash
```

### （Dockerの中の）シェル上でテストの実行

```sh
(dockerの中)$ pytest -v tests/
```

### （Dockerの中の）シェルから抜けてホストOSに戻る

```sh
(dockerの中)$ exit
```
