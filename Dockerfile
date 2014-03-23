FROM tianon/centos
MAINTAINER SequenceIQ

# install dev tools
RUN yum install -y openssh-server openssh-clients 

# passwordless ssh
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

RUN service sshd start && ssh -o StrictHostKeyChecking=no localhost true
RUN service sshd start && ssh -o StrictHostKeyChecking=no 127.0.0.1 true
RUN service sshd start && ssh -o StrictHostKeyChecking=no 0.0.0.0 true

