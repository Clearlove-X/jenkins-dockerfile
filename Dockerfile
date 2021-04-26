FROM jenkins/jenkins:2.235.5
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugins github-branch-source:1.8
