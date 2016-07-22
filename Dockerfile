FROM pnnlhep/osg-base
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

#FIXME support a newer version once we figure out the brokenness introduced in a point release. :/
RUN yum install -y fuse cvmfs-2.1.20-1.osg33.el7 cvmfs-config-osg-1.1-8.osg33.el7; echo user_allow_other > /etc/fuse.conf
ADD ./start.sh /etc/start.sh
RUN chmod +x /etc/start.sh

CMD ["/etc/start.sh"]
