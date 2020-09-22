// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: calculator.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Operation: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unspecified // = 0
  case add // = 1
  case subtract // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .add
    case 2: self = .subtract
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .add: return 1
    case .subtract: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Operation: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Operation] = [
    .unspecified,
    .add,
    .subtract,
  ]
}

#endif  // swift(>=4.2)

public struct BinaryOperation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var firstOperand: Int32 = 0

  public var secondOperand: Int32 = 0

  public var operation: Operation = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct CalculationResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var result: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Operation: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "ADD"),
    2: .same(proto: "SUBTRACT"),
  ]
}

extension BinaryOperation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "BinaryOperation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "first_operand"),
    2: .standard(proto: "second_operand"),
    3: .same(proto: "operation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.firstOperand) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.secondOperand) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.operation) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.firstOperand != 0 {
      try visitor.visitSingularInt32Field(value: self.firstOperand, fieldNumber: 1)
    }
    if self.secondOperand != 0 {
      try visitor.visitSingularInt32Field(value: self.secondOperand, fieldNumber: 2)
    }
    if self.operation != .unspecified {
      try visitor.visitSingularEnumField(value: self.operation, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: BinaryOperation, rhs: BinaryOperation) -> Bool {
    if lhs.firstOperand != rhs.firstOperand {return false}
    if lhs.secondOperand != rhs.secondOperand {return false}
    if lhs.operation != rhs.operation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CalculationResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "CalculationResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.result) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != 0 {
      try visitor.visitSingularInt32Field(value: self.result, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CalculationResult, rhs: CalculationResult) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
