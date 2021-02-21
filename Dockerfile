# serverlessがnpmパッケージなためnode.jsのランタイムが入っているdockerをマルチステージビルドして
# パッケージのインストールを行った後にnodeのバイナリとnpmパッケージをメインのpythonイメージにコピーする
FROM node:14.15.5-alpine as node
RUN yarn

FROM python:3.8-alpine
RUN apk --no-cache add bash g++

COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node node_modules node_modules
COPY --from=node /opt/yarn-* /opt/yarn
RUN ln -fs /opt/yarn/bin/yarn /usr/local/bin/yarn

