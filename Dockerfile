FROM python:2

RUN pip install jira-cli

ENTRYPOINT [ "jira-cli" ]
