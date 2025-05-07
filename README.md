tdd-python
=======================================

SETUP
---------------------------------------

### イメージのビルド

```sh
$ docker compose build
```

### 動作確認

```sh
$ docker compose run --rm python pytest
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


UPDATE DEPS
---------------------------------------

```sh
(dockerの中)$ pip-compile --extra dev -o deps-dev.lock pyproject.toml
```
