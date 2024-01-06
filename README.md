# erpnext-hrms-custom

Docker compose for v15 branch of ERPNext with payments and hrms[https://github.com/frappe/hrms] modules.

The image used for this compose file is https://hub.docker.com/r/dakos/erpnext_hrms

The image is built with the documentation https://github.com/frappe/frappe_docker/blob/main/docs/custom-apps.md

buildah build --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe --build-arg=FRAPPE_BRANCH=version-15 --build-arg=PYTHON_VERSION=3.11.6 --build-arg=NODE_VERSION=18.18.2 --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 --tag=local/erpnext_hrms:v15.9.1 --file=images/custom/Containerfile .

The **docker-compose** file used is pwd.yaml located at  https://github.com/frappe/frappe_docker/blob/main/pwd.yml . The only difference is that in the site app, we have added the hrms and payments modules commands for installations as they are already present in the image.
