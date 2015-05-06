// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [Expression] interface.
library dogma.connection.src.expression.expression;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'expression_type.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// The interface from which the classes that represent expression tree nodes are implemented.
abstract class Expression {
  /// The node type of this [Expression].
  ExpressionType get nodeType;
}
