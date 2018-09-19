# phony targets
.PHONY: all compile c python swift clean

# make all targets
all: compile c python swift

# compile the protobuf binaries
compile: zorb.proto device.proto
	@echo Compiling the protobuf binaries
	protoc -o zorb.pb zorb.proto
	protoc -o device.pb device.proto

# generate C structs using nanopb
c: zorb.pb device.pb
	@echo Generating C structs
	cd ../resources/nanopb/generator/proto && make && cd ../../../../source
	python ../resources/nanopb/generator/nanopb_generator.py zorb.pb
	python ../resources/nanopb/generator/nanopb_generator.py device.pb

# generate Python structs
python: zorb.proto device.proto
	@echo Generating Python structs
	protoc --python_out=. zorb.proto
	protoc --python_out=. device.proto

# generate Swift structs
swift: zorb.proto device.proto
	@echo Generating Swift structs
	protoc --swift_opt=Visibility=Public --swift_out=. zorb.proto
	protoc --swift_opt=Visibility=Public --swift_out=. device.proto

# remove all compiled/generated files
clean:
	rm -f zorb.pb
	rm -f zorb.pb.c
	rm -f zorb.pb.h
	rm -f zorb.pb.swift
	rm -f zorb_pb2.py
	rm -f device.pb
	rm -f device.pb.c
	rm -f device.pb.h
	rm -f device.pb.swift
	rm -f device_pb2.py