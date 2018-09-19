compile: zorb.proto device.proto
	protoc -o zorb.pb zorb.proto
	protoc -o device.pb device.proto

c: zorb.pb device.pb
	cd ../resources/nanopb/generator/proto && make && cd ../../../../source
	python ../resources/nanopb/generator/nanopb_generator.py zorb.pb
	python ../resources/nanopb/generator/nanopb_generator.py device.pb

python: zorb.proto device.proto
	protoc --python_out=. zorb.proto
	protoc --python_out=. device.proto

swift: zorb.proto device.proto
	protoc --swift_opt=Visibility=Public --swift_out=. zorb.proto
	protoc --swift_opt=Visibility=Public --swift_out=. device.proto

.PHONY: clean

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