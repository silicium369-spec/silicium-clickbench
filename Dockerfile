FROM ubuntu:24.04
WORKDIR /workspace
COPY . /workspace/
RUN chmod +x reproduce_all.sh
CMD ["./reproduce_all.sh"]
