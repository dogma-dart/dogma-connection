// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Connection] class.
library dogma_connection.connection;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:async';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_connection/command.dart';
import 'package:dogma_connection/query.dart';

//---------------------------------------------------------------------
// Exports
//---------------------------------------------------------------------

export 'package:dogma_connection/command.dart';
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
///     // Start querying the data source
///     var query = new Query('foo');
///     var queryValues = await connection.query(query);
abstract class Connection {
  /// Runs the [query] on the data connection.
  ///
  /// The result of the query is a single value.
  Future<dynamic> query(Query query);

  /// Runs the [query] on the data connection.
  ///
  /// The result of the query is a list of values.
  Stream<dynamic> queryAll(Query query);

  /// Executes the [command] on the data connection.
  ///
  /// The result of the command is a single value.
  Future<dynamic> execute(Command command);
}
