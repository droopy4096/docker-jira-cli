Usage
=====

Entrypoint is `jira-cli <https://jira-cli.readthedocs.io/en/latest>`_  itself so any parameters passed to container will be passed along to the command::

  docker run -it docker-jira-cli --help

to pre-configure container use /jira volume (or sub-volume /jira/.jira-cli)::

  docker run -it -v my_jira_config_dir:/jira/.jira-cli list

where my_jira_config looks like::

  my_jira_config
    \_ .jira-cli
       \_ config.cfg

       
