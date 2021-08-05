#!/usr/bin/env python

from eze.utils.io import load_json
from pydash import py_

projects = load_json("big-demo.json")
projects = py_.sort_by(projects, "name")

print("#!/usr/bin/env bash")
print("set -x")
print("")

print("# GIT REPOS")
print("start=`date +%s`")
for project in projects:
    print("git clone " + py_.get(project, "clone_url"))
print("end=`date +%s`")
print("echo Git Cloning took $((end-start)) seconds")
print("")

print("echo COPY EZERC INTO REPOS")
print("start=`date +%s`")
for project in projects:
    print("cp .ezerc.toml " + py_.get(project, "name") + "/")
print("end=`date +%s`")
print("echo - Copy took $((end-start)) seconds")
print("")
print("")
print("")

print("echo RUN EZE")
print("rm timings.txt")
print("touch timings.txt")
print("rm report.txt")
print("touch report.txt")
for project in projects:
    print("cd " + py_.get(project, "name"))
    print("echo running " + py_.get(project, "name"))
    print("start=`date +%s`")
    print("rm -rf .git")
    print("rm -rf *.lock")
    print("rm -rf dist")
    print("rm -rf vendor")
    print("docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt")
    print("end=`date +%s`")
    print("echo - "+ py_.get(project, "name") + "took $((end-start)) seconds")
    print("echo "+ py_.get(project, "name") + "took $((end-start)) seconds >> ../timings.txt")
    print("cd ..")
print("")
print("")
print("")

print("echo CLEANUP EZE")
print("start=`date +%s`")
for project in projects:
    print("cd " + py_.get(project, "name"))
    print("rm -rf dist")
    print("rm -rf vendor")
    print("rm -rf .git")
    print("rm -rf *.lock")
    print("rm -f reports/*.json")
    print("rm -f eze_report.json")
    print("cd ..")
print("end=`date +%s`")
print("echo - Cleanup took $((end-start)) seconds")
print("")
print("")
print("")