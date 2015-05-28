// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Connection] class.
library dogma_connection;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:async';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_connection/command.dart';
import 'package:dogma_connection/credentials.dart';
import 'package:dogma_connection/query.dart';

//---------------------------------------------------------------------
// Exports
//---------------------------------------------------------------------

export 'package:dogma_connection/command.dart';
export 'package:dogma_connection/credentials.dart';
export 'package:dogma_connection/query.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Interface for a data connection.
///
/// The [Connection] class provides a common interface for making queries and
/// executing commands on a data source. The interface follows the CRUD (Create,
/// Read, Update, Delete) model where a [Query] allows reading from the data
/// source, through the [query] method, while a [Command] handles the creation,
/// updating, and deleting from the source, through the [execute] method.
///
/// Typical usage of a [Connection] instance is as follows.
///
///     // Create the connection
///     var connection = new MyConnection(...);
///
///     // Open the connection
///     var credentials = new MyCredentials(...);
///     await connection.open(credentials);
///
///     // Start querying the data source
///     var query = new Query('foo');
///     var queryValues = await connection.query(query);
abstract class Connection {
  /// Opens the connection with the given [credentials].
  ///
  /// If the connection was successful the [Future] will execute, otherwise an
  /// [AuthenticationError] will be thrown.
  Future<Null> open(Credentials credentials);

  /// Runs the [query] on the data connection.
  Stream<dynamic> query(Query query);

  /// Executes the [command] on the data connection.
  Stream<dynamic> execute(Command command);
}

