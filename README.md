# Zorb Protocol

Zorb uses protocol buffers for communicating haptic timelines.

[What are protocol buffers?](https://developers.google.com/protocol-buffers/)
> Protocol buffers are Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data – think XML, but smaller, faster, and simpler. You define how you want your data to be structured once, then you can use special generated source code to easily write and read your structured data to and from a variety of data streams and using a variety of languages.

For more details, see Google's protocol buffer [Developer Guide](https://developers.google.com/protocol-buffers/docs/overview).

## Getting Started

### Include Zorb Protocol in your project

If you want your application to communicate with Zorb, you can include this repository as a submodule in your project.

```
git submodule add https://github.com/SomaticLabs/zorb-protocol
```

#### C
To use Zorb Protocol in a C project, simply include the following files in your list of source code files:
- [`zorb.pb.c`](build/zorb.pb.c)
- [`zorb.pb.h`](build/zorb.pb.h)
- [`device.pb.c`](build/device.pb.c)
- [`device.pb.h`](build/device.pb.h)

#### Python
To use Zorb Protocol in a Python project, you will need to install the protobuf package:
```
pip install protobuf
```

Then, you can use the generated Python modules in your source code:
```
import zorb_pb2
import device_pb2
```

#### Swift
To use Zorb Protocol in a Swift project, you will need to [add the SwiftProtobuf library to your project](https://github.com/apple/swift-protobuf#adding-the-swiftprotobuf-library-to-your-project).

Then, you can [use the generated types as you would any other Swift struct](https://github.com/apple/swift-protobuf#quick-start).

### Generate source code

If you make changes to the `.proto` files or want to generate code for a language that's not currently in this repository, you can generate source code to write and read haptic timelines using your language of choice.

You will first need to [install the `protoc` compiler](https://github.com/protocolbuffers/protobuf#protocol-compiler-installation) and the [SwiftProtobuf code generator plugin](https://github.com/apple/swift-protobuf#building-and-installing-the-code-generator-plugin).

#### Install the `protoc` compiler on macOS

You can use Homebrew:

```
brew install protobuf swift-protobuf
```

#### Re-generate source code when the `.proto` files change

Make sure you load all the needed submodules:

```
git submodule update --init --recursive
```

Next, change directory to the `build` folder and then run `make`.

```
cd build
make
```

### Generate source code for another language

See Google's protocol buffer [Tutorials](https://developers.google.com/protocol-buffers/docs/tutorials) for instructions on generating source code for C++, C#, Go, Java, and Python.

For other languages, you can take a look at Google's [list of third-party add-ons for protocol buffers](https://github.com/protocolbuffers/protobuf/blob/master/docs/third_party.md).

## Documentation

More information is available in the associated documentation:
- [Google's protobuf documentation](https://developers.google.com/protocol-buffers/) provides general information about protocol buffers, the protoc compiler, and how to use protocol buffers with Python and other languages.
- [The nanopb repository](https://github.com/nanopb/nanopb) provides instructions on using protocol buffers with embedded systems.
- [Apple's Swift Protobuf repository](https://github.com/apple/swift-protobuf) describes how to use protocol buffers with Swift.