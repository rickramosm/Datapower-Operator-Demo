#oc create secret tls mytlscerts --key=airline.key --cert=airline.cer
oc create secret generic mycerts --from-file=airline.key --from-file=airline.cer

oc create configmap default-config --from-file=defaultDomain.cfg
oc create configmap rrdomain-config --from-file=RRdomain.cfg

tar --directory=./local -czvf rrdomain-local.tar.gz .
oc create configmap rrdomain-local --from-file=rrdomain-local.tar.gz