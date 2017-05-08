FROM python

RUN pip install jira-cli

ENTRYPOINT [ "jira-cli" ]
