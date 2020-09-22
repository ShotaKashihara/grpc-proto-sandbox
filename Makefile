install:
	go get \
		github.com/golang/protobuf/protoc-gen-go \
		github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway

generate:
	protoc \
		-I ./protos \
		-I third_party/grpc-gateway/ \
		-I third_party/googleapis \
		--go_out=plugins=grpc,paths=source_relative:./golang/. \
		--grpc-gateway_out=paths=source_relative:./golang/. \
    --swift_out=./swift \
    --swift_opt=Visibility=Public \
    --grpc-swift_out=./swift \
    --grpc-swift_opt=Visibility=Public,Server=false \
		protos/*.proto
