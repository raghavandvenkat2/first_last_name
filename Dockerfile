## Lightweight Ansible image (I use a custom image, but this one works)
FROM williamyeh/ansible:alpine3

#FROM python:latest

## Set a temp workdir
WORKDIR /playbook

## This is the context of the git repository that holds the playbook(s) and ancillary files
ADD playbook /playbook
ADD first_name.sh /playbook
ADD name.txt /playbook
#ADD last_name.py /playbook

## Assume the playbook is called deploy in the playbook dir
ENTRYPOINT ["ansible-playbook"]
CMD ["./first_name.sh"]
