FROM gcc:latest
COPY ./ci/po-install.sh /tmp/po-install.sh
RUN /tmp/po-install.sh
COPY ./ /workspace/
RUN cd /workspace && /workspace/ci/gitlab_build.sh
RUN cd /workspace && /workspace/ci/gitlab_test.sh
