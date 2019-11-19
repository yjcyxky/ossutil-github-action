FROM docker:stable

LABEL "name"="ossutil-github-action"
LABEL "maintainer"="Jingcheng Yang <yjcyxky@163.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="ossutil-github-action"
LABEL "com.github.actions.description"="GitHub actions for aliyun ossutil."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git bash libc6-compat

COPY entrypoint.sh /entrypoint.sh
ADD http://gosspublic.alicdn.com/ossutil/1.6.9/ossutil64 /bin/ossutil
RUN chmod a+x /bin/ossutil

ENTRYPOINT ["/entrypoint.sh"]
