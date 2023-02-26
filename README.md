# GO, gRPC e Protobuf

1. Suba o container rodando:
```
docker compose up -d
```

2. Acesse o container:
```
docker compose exec -it app bash
```

3. Execute o projeto GO:
```
go run cmd/grpcServer/main.go 
```

4. Caso queira gerar novamente as stubs:
```
protoc --go_out=. --go-grpc_out. proto/course_category.proto

```
5. Utilize o Evans gRPC client para testar o servidor gRPC:
```
evans -r repl 
```