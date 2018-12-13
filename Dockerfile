FROM gcc:latest
COPY ./ci/gitlab_install_pre_build.sh /tmp/gitlab_install_pre_build.sh
RUN /tmp/gitlab_install_pre_build.sh
COPY ./ /workspace/
RUN cd /workspace && /workspace/ci/gitlab_build.sh
RUN cd /workspace && /workspace/ci/gitlab_test.sh