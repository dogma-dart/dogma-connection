// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Query] class.
library dogma.connection.query;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'src/expression/expression.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Represents a query into a data source.
///
/// The [Query] class provides functionality found in the SQL specification.
/// For some data sources not all functionality may be available.
class Query {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The table to query within the database.
  final String table;
  /// The fields to query for within the table.
  ///
  /// If the list is empty then the query assumes that all fields should be
  /// delivered.
  final List<String> fields = new List<String>();
  /// The offset into the results of the query.
  ///
  /// Used in conjunction with [limit] to specify a range of results to return
  /// if applicable.
  int offset = 0;
  /// The maximum number of results to return from the query.
  ///
  /// Used in conjunction with [offset] to specify a range of results to return
  /// if applicable.
  int limit = 0x3fffffff; // \TODO Switch to constant for max smi
  /// An expression representing the criteria for the values requested in the query.
  Expression where;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates an instance of the [Query] class targeting the given [table].
  Query(this.table);
}
