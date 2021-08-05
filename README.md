# Overview

Eze the one stop solution for security testing in modern development

This is a small example app that takes a list of repos from the github api
and turn it into a bash shell script that'll git clone then run eze across the
repos looking for vulnerabilities

This can be extended or used as a security exercise for quickly building scripts
to manually scan your organisations estate without expensive tooling


# Open used Data Source

sky-uk's publicly accessible projects used in this case

Publicly available at API
https://api.github.com/orgs/xxx/repos?per_page=100

Used https://github.com/godotengine
https://api.github.com/orgs/godotengine/repos?per_page=100

# Example .ezerc.toml
The ezerc toml will run trufflehog secret scanner and semgrep

## Run Eze

- install docker
- install python 3.8
- tailor .ezerc.toml
- run
  
```bash
pip install -r requirements.txt
./list-all-repos.py > demo-cron.sh
./demo-cron.sh
```
- inspect timings.txt and report.txt
  (json reports will also be in each individual repo)
