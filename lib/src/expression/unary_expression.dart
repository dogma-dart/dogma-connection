// Copyright (c) 2015, the Dogma Project Authors.
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

/// Represents an expression that has a unary operator.
class UnaryExpression<Operand extends Expression> implements Expression {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The operand of the unary operation.
  final Operand operand;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates an instance of [UnaryExpression] representing a not expression.
  UnaryExpression.not(this.operand);

  //---------------------------------------------------------------------
  // Expression
  //---------------------------------------------------------------------

  // \TODO Modify if any other unary expressions are supported.
  @override
  ExpressionType get nodeType => ExpressionType.not;
}
