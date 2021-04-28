ARG SOURCE_BRANCH
FROM python:${SOURCE_BRANCH}
ENV DEBIAN_FRONTEND noninteractive
RUN /usr/sbin/groupadd -g 2000 app && /usr/sbin/useradd -g app -d /home/app -m -N -u 2000 app
USER app
WORKDIR /home/app
ENV PATH /home/app/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


