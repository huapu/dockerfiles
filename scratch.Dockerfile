FROM scratch

COPY ./bundle /usr/local/server

ENV RunMode prod
EXPOSE 80

CMD ["/usr/local/server/start"]
