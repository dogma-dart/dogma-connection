// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Credentials] class.
library dogma.connection.credentials;

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Base class for providing user credentials to authenticate against.
class Credentials {}

/// Credentials for password based authentication.
class NetworkCredentials implements Credentials {
  /// The user name associated with the credentials.
  final String userName;
  /// The password associated with the credentials.
  final String password;

  /// Creates an instance of the [NetworkCredentials] class with the given [userName] and [password].
  NetworkCredentials(this.userName, this.password);
}
