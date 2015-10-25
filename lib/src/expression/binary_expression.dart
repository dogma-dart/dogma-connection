// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains the [BinaryExpression] class.
library dogma_connection.src.expression.binary_expression;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'expression.dart';
import 'expression_type.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Represents an expression that has a binary operator.
///
/// The [BinaryExpression] class operands are generic to allow for more
/// explicit typing when required. The type of the [left] and [right] operands
/// are expected to extend from [Expression].
///
/// [BinaryExpression] encompasses arithmetic expressions as well as some
/// logical expressions. To create a specific [ExpressionType] use the
/// constructor that corresponds to it.
///
/// Here is an example of an equality expression, where (a == 1).
///
///     var aEquality =
///         new BinaryExpression<ParameterExpression, ConstantExpression>(
///             new ParameterExpression('a'),
///             new ConstantExpression(1)
///         );
///
/// Expressions can be extended using logical operations such as "and" and "or".
/// To chain the previous example together to form the expression, (a == 1) &&
/// (b == 2) the following code can be used.
///
///     var bEquality =
///         new BinaryExpression<ParameterExpression, ConstantExpression>(
///             new ParameterExpression('b'),
///             new ConstantExpression(2)
///         );
///
///     var combined =
///         new BinaryExpression<BinaryExpression, BinaryExpression>(aEquality, bEquality);
class BinaryExpression<LeftOperand extends Expression, RightOperand extends Expression> implements Expression {
  //---------------------------------------------------------------------
  // Member variables
  //---------------------------------------------------------------------

  /// The left operand of the binary operation.
  final LeftOperand left;
  /// The right operand of the binary operation.
  final RightOperand right;

  //---------------------------------------------------------------------
  // Construction
  //---------------------------------------------------------------------

  /// Creates a [BinaryExpression] with the given [left] and [right] operands of [nodeType].
  BinaryExpression._internal(this.left, this.right, this.nodeType);

  /// Creates a [BinaryExpression] representing an equality operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.equal].
  BinaryExpression.equal(this.left, this.right)
      : nodeType = ExpressionType.equal;

  /// Creates a [BinaryExpression] representing an inequality operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.notEqual].
  BinaryExpression.notEqual(this.left, this.right)
      : nodeType = ExpressionType.notEqual;

  /// Creates a [BinaryExpression] representing a less than operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.lessThan].
  BinaryExpression.lessThan(this.left, this.right)
      : nodeType = ExpressionType.lessThan;

  /// Creates a [BinaryExpression] representing a less than or equal to operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.lessThanOrEqual].
  BinaryExpression.lessThanOrEqual(this.left, this.right)
      : nodeType = ExpressionType.lessThanOrEqual;

  /// Creates a [BinaryExpression] representing a greater than operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.greaterThan].
  BinaryExpression.greaterThan(this.left, this.right)
      : nodeType = ExpressionType.greaterThan;

  /// Creates a [BinaryExpression] representing a greater than or equal to operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.greaterThanOrEqual].
  BinaryExpression.greaterThanOrEqual(this.left, this.right)
      : nodeType = ExpressionType.greaterThanOrEqual;

  /// Creates a [BinaryExpression] representing an and operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.and].
  BinaryExpression.and(this.left, this.right)
      : nodeType = ExpressionType.and;

  /// Creates a [BinaryExpression] representing an or operation.
  ///
  /// The [nodeType] for an instance will be [ExpressionType.or].
  BinaryExpression.or(this.left, this.right)
      : nodeType = ExpressionType.or;

  /// Creates a [BinaryExpression] which chains together and operations from the list of [expressions].
  ///
  /// This constructor allows the grafting together of multiple expressions
  /// which are separated by and statements. If the length of the list of
  /// [expressions] is 2 then this functions the same as the
  /// [BinaryExpression.and] constructor.
  ///
  /// To generate the expression (a == 1) && (b == 2) && (c == 3) the following
  /// code can be used.
  ///
  ///     var aEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('a'),
  ///             new ConstantExpression(1)
  ///         );
  ///     var bEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('b'),
  ///             new ConstantExpression(2)
  ///         );
  ///     var cEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('c'),
  ///             new ConstantExpression(3)
  ///         );
  ///
  ///     var combined = new BinaryExpression.andFromList([aEquality, bEquality, cEquality]);
  factory BinaryExpression.andFromList(List<Expression> expressions) {
    return new BinaryExpression._chainExpressions(expressions, ExpressionType.and);
  }

  /// Creates a [BinaryExpression] which chains together or operations from the list of [expressions].
  ///
  /// This constructor allows the grafting together of multiple expressions
  /// which are separated by or statements. If the length of the list of
  /// [expressions] is 2 then this functions the same as the
  /// [BinaryExpression.or] constructor.
  ///
  /// To generate the expression (a == 1) && (b == 2) && (c == 3) the following
  /// code can be used.
  ///
  ///     var aEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('a'),
  ///             new ConstantExpression(1)
  ///         );
  ///     var bEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('b'),
  ///             new ConstantExpression(2)
  ///         );
  ///     var cEquality =
  ///         new BinaryExpression<ParameterExpression, ConstantExpression>(
  ///             new ParameterExpression('c'),
  ///             new ConstantExpression(3)
  ///         );
  ///
  ///     var combined = new BinaryExpression.orFromList([aEquality, bEquality, cEquality]);
  factory BinaryExpression.orFromList(List<Expression> expressions) {
    return new BinaryExpression._chainExpressions(expressions, ExpressionType.or);
  }

  /// Creates a [BinaryExpression] which chains together and operations from the list of [expressions] with the given [type].
  factory BinaryExpression._chainExpressions(List<Expression> expressions, ExpressionType type) {
    var size = expressions.length;
    var temp = expressions[size - 1];

    for (var i = size - 2; i >= 1; --i) {
      temp = new BinaryExpression._internal(expressions[i], temp, type);
    }

    return new BinaryExpression._internal(expressions[0], temp, type);
  }

  //---------------------------------------------------------------------
  // Expression
  //---------------------------------------------------------------------

  @override
  final ExpressionType nodeType;
}
