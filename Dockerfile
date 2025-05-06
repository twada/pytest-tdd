FROM python:3.13-slim

WORKDIR /pytest-tdd

RUN apt-get update && \
    apt-get install -y --no-install-recommends locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN addgroup --gid 10001 --system pyuser \
 && adduser  --uid 10000 --system --ingroup pyuser --home /home/pyuser pyuser

USER pyuser

ENV PATH="/home/pyuser/.local/bin:${PATH}"

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pip-tools
COPY deps-dev.lock ./
RUN pip-sync deps-dev.lock

COPY . ./
