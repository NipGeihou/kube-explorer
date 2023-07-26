FROM alpine

WORKDIR /tmp

COPY ./bin/kube-explorer /tmp/kube-explorer

EXPOSE 9890

ENTRYPOINT ["./kube-explorer","--kubeconfig","/tmp/kubeconfig","--http-listen-port=9890","--https-listen-port=0"]
