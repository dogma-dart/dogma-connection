// Copyright (c) 2015-2016, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'expression.dart';
import 'expression_type.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Represents a named parameter expression.
class ParameterExpression implements Expression {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The name of the parameter or variable.
  final String name;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates an instance of the [ParameterExpression] class with a parameter, or variable, of the given [name].
  ParameterExpression(this.name);

  //---------------------------------------------------------------------
  // Expression
  //---------------------------------------------------------------------

  @override
  ExpressionType get nodeType => ExpressionType.parameter;
}
