// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [ConstantExpresion] class.
library dogma_connection.src.expression.constant_expression;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'expression.dart';
import 'expression_type.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Represents an expression that has a constant value.
///
/// The [ConstantExpression] class operands are generic to allow for more
/// explicit typing when required.
class ConstantExpression<T> implements Expression {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The value of the constant expression.
  final T value;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates an instance of the [ConstantExpression] class with the given [value].
  ConstantExpression(this.value);

  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  @override
  ExpressionType get nodeType => ExpressionType.constant;
}
