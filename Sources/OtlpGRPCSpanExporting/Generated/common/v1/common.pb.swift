// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: opentelemetry/proto/common/v1/common.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019, OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

/// AnyValue is used to represent any type of attribute value. AnyValue may contain a
/// primitive value such as a string or integer or it may contain an arbitrary nested
/// object containing arrays, key-value lists and primitives.
struct Opentelemetry_Proto_Common_V1_AnyValue {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The value is one of the listed fields. It is valid for all values to be unspecified
    /// in which case this AnyValue is considered to be "null".
    var value: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value?

    var stringValue: String {
        get {
            if case .stringValue(let v)? = value { return v }
            return String()
        }
        set { value = .stringValue(newValue) }
    }

    var boolValue: Bool {
        get {
            if case .boolValue(let v)? = value { return v }
            return false
        }
        set { value = .boolValue(newValue) }
    }

    var intValue: Int64 {
        get {
            if case .intValue(let v)? = value { return v }
            return 0
        }
        set { value = .intValue(newValue) }
    }

    var doubleValue: Double {
        get {
            if case .doubleValue(let v)? = value { return v }
            return 0
        }
        set { value = .doubleValue(newValue) }
    }

    var arrayValue: Opentelemetry_Proto_Common_V1_ArrayValue {
        get {
            if case .arrayValue(let v)? = value { return v }
            return Opentelemetry_Proto_Common_V1_ArrayValue()
        }
        set { value = .arrayValue(newValue) }
    }

    var kvlistValue: Opentelemetry_Proto_Common_V1_KeyValueList {
        get {
            if case .kvlistValue(let v)? = value { return v }
            return Opentelemetry_Proto_Common_V1_KeyValueList()
        }
        set { value = .kvlistValue(newValue) }
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    /// The value is one of the listed fields. It is valid for all values to be unspecified
    /// in which case this AnyValue is considered to be "null".
    enum OneOf_Value: Equatable {
        case stringValue(String)
        case boolValue(Bool)
        case intValue(Int64)
        case doubleValue(Double)
        case arrayValue(Opentelemetry_Proto_Common_V1_ArrayValue)
        case kvlistValue(Opentelemetry_Proto_Common_V1_KeyValueList)

        #if !swift(>=4.1)
        static func == (lhs: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value, rhs: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value) -> Bool {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch (lhs, rhs) {
            case (.stringValue, .stringValue): return {
                    guard case .stringValue(let l) = lhs, case .stringValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.boolValue, .boolValue): return {
                    guard case .boolValue(let l) = lhs, case .boolValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.intValue, .intValue): return {
                    guard case .intValue(let l) = lhs, case .intValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.doubleValue, .doubleValue): return {
                    guard case .doubleValue(let l) = lhs, case .doubleValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.arrayValue, .arrayValue): return {
                    guard case .arrayValue(let l) = lhs, case .arrayValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.kvlistValue, .kvlistValue): return {
                    guard case .kvlistValue(let l) = lhs, case .kvlistValue(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            default: return false
            }
        }
        #endif
    }

    init() {}
}

/// ArrayValue is a list of AnyValue messages. We need ArrayValue as a message
/// since oneof in AnyValue does not allow repeated fields.
struct Opentelemetry_Proto_Common_V1_ArrayValue {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Array of values. The array may be empty (contain 0 elements).
    var values: [Opentelemetry_Proto_Common_V1_AnyValue] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

/// KeyValueList is a list of KeyValue messages. We need KeyValueList as a message
/// since `oneof` in AnyValue does not allow repeated fields. Everywhere else where we need
/// a list of KeyValue messages (e.g. in Span) we use `repeated KeyValue` directly to
/// avoid unnecessary extra wrapping (which slows down the protocol). The 2 approaches
/// are semantically equivalent.
struct Opentelemetry_Proto_Common_V1_KeyValueList {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// A collection of key/value pairs of key-value pairs. The list may be empty (may
    /// contain 0 elements).
    var values: [Opentelemetry_Proto_Common_V1_KeyValue] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

/// KeyValue is a key-value pair that is used to store Span attributes, Link
/// attributes, etc.
struct Opentelemetry_Proto_Common_V1_KeyValue {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var key = String()

    var value: Opentelemetry_Proto_Common_V1_AnyValue {
        get { _value ?? Opentelemetry_Proto_Common_V1_AnyValue() }
        set { _value = newValue }
    }

    /// Returns true if `value` has been explicitly set.
    var hasValue: Bool { self._value != nil }
    /// Clears the value of `value`. Subsequent reads from it will return its default value.
    mutating func clearValue() { _value = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    private var _value: Opentelemetry_Proto_Common_V1_AnyValue?
}

/// StringKeyValue is a pair of key/value strings. This is the simpler (and faster) version
/// of KeyValue that only supports string values.
struct Opentelemetry_Proto_Common_V1_StringKeyValue {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var key = String()

    var value = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

/// InstrumentationLibrary is a message representing the instrumentation library information
/// such as the fully qualified name and version.
struct Opentelemetry_Proto_Common_V1_InstrumentationLibrary {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// An empty instrumentation library name means the name is unknown.
    var name = String()

    var version = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "opentelemetry.proto.common.v1"

extension Opentelemetry_Proto_Common_V1_AnyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".AnyValue"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "string_value"),
        2: .standard(proto: "bool_value"),
        3: .standard(proto: "int_value"),
        4: .standard(proto: "double_value"),
        5: .standard(proto: "array_value"),
        6: .standard(proto: "kvlist_value"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try {
                    if self.value != nil { try decoder.handleConflictingOneOf() }
                    var v: String?
                    try decoder.decodeSingularStringField(value: &v)
                    if let v = v { self.value = .stringValue(v) }
                }()
            case 2: try {
                    if self.value != nil { try decoder.handleConflictingOneOf() }
                    var v: Bool?
                    try decoder.decodeSingularBoolField(value: &v)
                    if let v = v { self.value = .boolValue(v) }
                }()
            case 3: try {
                    if self.value != nil { try decoder.handleConflictingOneOf() }
                    var v: Int64?
                    try decoder.decodeSingularInt64Field(value: &v)
                    if let v = v { self.value = .intValue(v) }
                }()
            case 4: try {
                    if self.value != nil { try decoder.handleConflictingOneOf() }
                    var v: Double?
                    try decoder.decodeSingularDoubleField(value: &v)
                    if let v = v { self.value = .doubleValue(v) }
                }()
            case 5: try {
                    var v: Opentelemetry_Proto_Common_V1_ArrayValue?
                    if let current = self.value {
                        try decoder.handleConflictingOneOf()
                        if case .arrayValue(let m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v { self.value = .arrayValue(v) }
                }()
            case 6: try {
                    var v: Opentelemetry_Proto_Common_V1_KeyValueList?
                    if let current = self.value {
                        try decoder.handleConflictingOneOf()
                        if case .kvlistValue(let m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v { self.value = .kvlistValue(v) }
                }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch value {
        case .stringValue?: try {
                guard case .stringValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularStringField(value: v, fieldNumber: 1)
            }()
        case .boolValue?: try {
                guard case .boolValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
            }()
        case .intValue?: try {
                guard case .intValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
            }()
        case .doubleValue?: try {
                guard case .doubleValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularDoubleField(value: v, fieldNumber: 4)
            }()
        case .arrayValue?: try {
                guard case .arrayValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
            }()
        case .kvlistValue?: try {
                guard case .kvlistValue(let v)? = self.value else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
            }()
        case nil: break
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_AnyValue, rhs: Opentelemetry_Proto_Common_V1_AnyValue) -> Bool {
        if lhs.value != rhs.value { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Common_V1_ArrayValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ArrayValue"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "values"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedMessageField(value: &self.values) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !values.isEmpty {
            try visitor.visitRepeatedMessageField(value: values, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_ArrayValue, rhs: Opentelemetry_Proto_Common_V1_ArrayValue) -> Bool {
        if lhs.values != rhs.values { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Common_V1_KeyValueList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".KeyValueList"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "values"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedMessageField(value: &self.values) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !values.isEmpty {
            try visitor.visitRepeatedMessageField(value: values, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_KeyValueList, rhs: Opentelemetry_Proto_Common_V1_KeyValueList) -> Bool {
        if lhs.values != rhs.values { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Common_V1_KeyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".KeyValue"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "key"),
        2: .same(proto: "value"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
            case 2: try { try decoder.decodeSingularMessageField(value: &self._value) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !key.isEmpty {
            try visitor.visitSingularStringField(value: key, fieldNumber: 1)
        }
        if let v = _value {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_KeyValue, rhs: Opentelemetry_Proto_Common_V1_KeyValue) -> Bool {
        if lhs.key != rhs.key { return false }
        if lhs._value != rhs._value { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Common_V1_StringKeyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".StringKeyValue"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "key"),
        2: .same(proto: "value"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !key.isEmpty {
            try visitor.visitSingularStringField(value: key, fieldNumber: 1)
        }
        if !value.isEmpty {
            try visitor.visitSingularStringField(value: value, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_StringKeyValue, rhs: Opentelemetry_Proto_Common_V1_StringKeyValue) -> Bool {
        if lhs.key != rhs.key { return false }
        if lhs.value != rhs.value { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Common_V1_InstrumentationLibrary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".InstrumentationLibrary"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "name"),
        2: .same(proto: "version"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.version) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !name.isEmpty {
            try visitor.visitSingularStringField(value: name, fieldNumber: 1)
        }
        if !version.isEmpty {
            try visitor.visitSingularStringField(value: version, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Common_V1_InstrumentationLibrary, rhs: Opentelemetry_Proto_Common_V1_InstrumentationLibrary) -> Bool {
        if lhs.name != rhs.name { return false }
        if lhs.version != rhs.version { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}