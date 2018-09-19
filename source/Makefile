.PHONY: clean

swift: zorb.proto
	protoc --swift_opt=Visibility=Public --swift_out=. zorb.proto

clean:
	rm -f zorb.pb.swift