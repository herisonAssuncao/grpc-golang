FROM golang:1.20.1

WORKDIR /app

RUN apt update && apt install protobuf-compiler -y && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    export PATH="$PATH:$(go env GOPATH)/bin" && \
    go install -v golang.org/x/tools/gopls@latest && \
    go install github.com/ktr0731/evans@latest && \
    apt install sqlite3 -y

 CMD ["tail", "-f", "/dev/null"]