SOURCE_DIR := ../source

# phony targets
.PHONY: all compile c python swift clean

# make all targets
all: compile c python swift

# compile the protobuf binaries
compile: $(SOURCE_DIR)/zorb.proto $(SOURCE_DIR)/device.proto
	@echo Compiling the protobuf binaries
	protoc -I=$(SOURCE_DIR) -o zorb.pb $(SOURCE_DIR)/zorb.proto
	protoc -I=$(SOURCE_DIR) -o device.pb $(SOURCE_DIR)/device.proto

# generate C structs using nanopb
c: zorb.pb device.pb
	@echo Generating C structs
	cd ../resources/nanopb/generator/proto && make && cd ../../../../source
	python ../resources/nanopb/generator/nanopb_generator.py zorb.pb
	python ../resources/nanopb/generator/nanopb_generator.py device.pb

# generate Python structs
python: $(SOURCE_DIR)/zorb.proto $(SOURCE_DIR)/device.proto
	@echo Generating Python structs
	protoc -I=$(SOURCE_DIR) --python_out=. $(SOURCE_DIR)/zorb.proto
	protoc -I=$(SOURCE_DIR) --python_out=. $(SOURCE_DIR)/device.proto

# generate Swift structs
swift: $(SOURCE_DIR)/zorb.proto $(SOURCE_DIR)/device.proto
	@echo Generating Swift structs
	protoc -I=$(SOURCE_DIR) --swift_opt=Visibility=Public --swift_out=. $(SOURCE_DIR)/zorb.proto
	protoc -I=$(SOURCE_DIR) --swift_opt=Visibility=Public --swift_out=. $(SOURCE_DIR)/device.proto

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