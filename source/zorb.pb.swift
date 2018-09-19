// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: zorb.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

//*
//
// Defines a protocol buffer format for the compiled output. This message
//
// structure can be used in any situation where the contents of a Haptic Timeline
//
// need to be transmitted as a compact stream of bytes or saved to a file
//
// for future use.

/// Use v3 of the Protocol Buffer syntax

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///*
///
/// A timeline consists of an array of vibrations that can have an arbitrary
///
/// length.
public struct Zorb_Timeline {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// a field of zero or more vibrations (you can have an empty Timeline)
  public var vibrations: [Zorb_Vibration] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///*
///
/// A vibration consists of:
///
///   1) the unsigned integer of LRA channels with which to communicate
///
///   2) the delay to apply to the vibration in milliseconds
///
///   3) the duration of the vibration in milliseconds
///
///   4) the starting position within the vibration (amount to clip off the beginning)
///
///   5) the starting amplitude of the vibration
///
///   6) the ending amplitude of the vibration
///
///   7) the integer index of an easing equation to use in an array of easing functions
public struct Zorb_Vibration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var channels: UInt32 = 0

  public var delay: UInt32 = 0

  public var duration: UInt32 = 0

  public var position: UInt32 = 0

  public var start: UInt32 = 0

  public var end: UInt32 = 0

  public var easing: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "zorb"

extension Zorb_Timeline: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Timeline"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vibrations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.vibrations)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vibrations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vibrations, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Zorb_Timeline, rhs: Zorb_Timeline) -> Bool {
    if lhs.vibrations != rhs.vibrations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Zorb_Vibration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Vibration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "channels"),
    2: .same(proto: "delay"),
    3: .same(proto: "duration"),
    4: .same(proto: "position"),
    5: .same(proto: "start"),
    6: .same(proto: "end"),
    7: .same(proto: "easing"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.channels)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.delay)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.duration)
      case 4: try decoder.decodeSingularUInt32Field(value: &self.position)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.start)
      case 6: try decoder.decodeSingularUInt32Field(value: &self.end)
      case 7: try decoder.decodeSingularUInt32Field(value: &self.easing)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.channels != 0 {
      try visitor.visitSingularUInt32Field(value: self.channels, fieldNumber: 1)
    }
    if self.delay != 0 {
      try visitor.visitSingularUInt32Field(value: self.delay, fieldNumber: 2)
    }
    if self.duration != 0 {
      try visitor.visitSingularUInt32Field(value: self.duration, fieldNumber: 3)
    }
    if self.position != 0 {
      try visitor.visitSingularUInt32Field(value: self.position, fieldNumber: 4)
    }
    if self.start != 0 {
      try visitor.visitSingularUInt32Field(value: self.start, fieldNumber: 5)
    }
    if self.end != 0 {
      try visitor.visitSingularUInt32Field(value: self.end, fieldNumber: 6)
    }
    if self.easing != 0 {
      try visitor.visitSingularUInt32Field(value: self.easing, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Zorb_Vibration, rhs: Zorb_Vibration) -> Bool {
    if lhs.channels != rhs.channels {return false}
    if lhs.delay != rhs.delay {return false}
    if lhs.duration != rhs.duration {return false}
    if lhs.position != rhs.position {return false}
    if lhs.start != rhs.start {return false}
    if lhs.end != rhs.end {return false}
    if lhs.easing != rhs.easing {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}