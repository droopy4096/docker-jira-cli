# FROM python:3-slim
FROM python:3-alpine

RUN \
  apk update && \
  apk add -U gcc musl-dev linux-headers openssl-dev libffi-dev && \
  pip install --no-cache-dir jira-cli && \
  apk del gcc musl-dev linux-headers openssl-dev libffi-dev

RUN adduser -D -h  /jira jira jira
USER jira

VOLUME ['/jira/.jira-cli']

ENTRYPOINT [ "jira-cli" ]
CMD [ "-h" ]
