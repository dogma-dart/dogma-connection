// Copyright (c) 2015-2016, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Command] class.
library dogma_connection.command;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'src/expression/expression.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Represents a command on a data source.
///
/// The [Command] class provides functionality found in the SQL specification.
/// For some data sources not all functionality may be available.
class Command {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The table to query within the database.
  final String table;
  /// An expression representing the criteria for the values requested in the query.
  Expression where;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates an instance of the [Command] class targeting the given [table].
  Command(this.table);
}
