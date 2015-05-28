// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains a set of functions for generating [Expression]s in a straightforward manner.
///
/// The library contains a number of helper functions that simplify the amount
/// of code required to generate an [Expression].
library dogma_connection.expression_builder;

// \TODO Use generic functions if that becomes part of the Dart specification

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_connection/expression.dart';

//---------------------------------------------------------------------
// Exports
//---------------------------------------------------------------------

export 'package:dogma_connection/expression.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

BinaryExpression<ParameterExpression, ConstantExpression> equal(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.equal(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<ParameterExpression, ConstantExpression> notEqual(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.notEqual(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<ParameterExpression, ConstantExpression> lessThan(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.notEqual(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<ParameterExpression, ConstantExpression> lessThanOrEqual(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.lessThanOrEqual(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<ParameterExpression, ConstantExpression> greaterThan(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.greaterThan(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<ParameterExpression, ConstantExpression> greaterThanOrEqual(String name, dynamic value) {
  return
      new BinaryExpression<ParameterExpression, ConstantExpression>.greaterThanOrEqual(
          new ParameterExpression(name),
          new ConstantExpression(value)
      );
}

BinaryExpression<Expression, Expression> and(Expression left, Expression right) {
  return new BinaryExpression<Expression, Expression>.and(left, right);
}

BinaryExpression<Expression, Expression> or(Expression left, Expression right) {
  return new BinaryExpression<Expression, Expression>.or(left, right);
}

UnaryExpression<Expression> not(Expression expression) {
  return new UnaryExpression.not(expression);
}

BinaryExpression<Expression, Expression> andFromList(List<Expression> expressions) {
  return new BinaryExpression<Expression, Expression>.andFromList(expressions);
}

BinaryExpression<Expression, Expression> orFromList(List<Expression> expressions) {
  return new BinaryExpression<Expression, Expression>.orFromList(expressions);
}
