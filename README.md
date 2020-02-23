1. Run `docker image build --tag=vps-proxy .`
2. Run `docker container run --name vps-proxy --detach --publish 80:80 vps-proxy`
3. Visit http://localhost