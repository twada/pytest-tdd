FROM python:3.14.4-slim-trixie

WORKDIR /pytest-tdd

RUN apt-get update && \
    apt-get install -y --no-install-recommends locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8
ENV TZ=JST-9

COPY requirements.txt ./
RUN pip install --root-user-action=ignore --no-cache-dir -r requirements.txt

COPY . ./
