FROM dgllib/dgl-ci-cpu:latest

EXPOSE 8888

COPY install_env.sh /install/install_env.sh
RUN bash /install/install_env.sh
