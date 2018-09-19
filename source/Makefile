compile: zorb.proto device.proto
	protoc -o zorb.pb zorb.proto
	protoc -o device.pb device.proto

c: zorb.pb device.pb
	cd ../resources/nanopb/generator/proto && make && cd ../../../../source
	python ../resources/nanopb/generator/nanopb_generator.py zorb.pb
	python ../resources/nanopb/generator/nanopb_generator.py device.pb

swift: zorb.proto device.proto
	protoc --swift_opt=Visibility=Public --swift_out=. zorb.proto

.PHONY: clean

clean:
	rm -f zorb.pb
	rm -f zorb.pb.c
	rm -f zorb.pb.h
	rm -f zorb.pb.swift
	rm -f zorb_pb2.py