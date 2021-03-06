FROM clojure
WORKDIR /usr/src/app
COPY project.clj /usr/src/app/
RUN lein deps
COPY . /usr/src/app

EXPOSE 3000

ENTRYPOINT ["lein"]
CMD ["ring", "server-headless"]