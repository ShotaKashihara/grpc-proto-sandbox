//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: user.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate UserServiceClient, then call methods of this protocol to make API calls.
public protocol UserServiceClientProtocol: GRPCClient {
  func addUser(
    _ request: AddUserRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<AddUserRequest, User>

  func listUsers(
    _ request: ListUsersRequest,
    callOptions: CallOptions?,
    handler: @escaping (User) -> Void
  ) -> ServerStreamingCall<ListUsersRequest, User>

  func listUsers2(
    _ request: ListUsersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<ListUsersRequest, User>

}

extension UserServiceClientProtocol {

  /// Unary call to AddUser
  ///
  /// - Parameters:
  ///   - request: Request to send to AddUser.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addUser(
    _ request: AddUserRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<AddUserRequest, User> {
    return self.makeUnaryCall(
      path: "/UserService/AddUser",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Server streaming call to ListUsers
  ///
  /// - Parameters:
  ///   - request: Request to send to ListUsers.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func listUsers(
    _ request: ListUsersRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (User) -> Void
  ) -> ServerStreamingCall<ListUsersRequest, User> {
    return self.makeServerStreamingCall(
      path: "/UserService/ListUsers",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Unary call to ListUsers2
  ///
  /// - Parameters:
  ///   - request: Request to send to ListUsers2.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listUsers2(
    _ request: ListUsersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<ListUsersRequest, User> {
    return self.makeUnaryCall(
      path: "/UserService/ListUsers2",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class UserServiceClient: UserServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the UserService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

