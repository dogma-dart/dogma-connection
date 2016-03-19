// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

/// Contains a set of functions for generating [Expression]s in a
/// straightforward manner.
///
/// The library contains a number of helper functions that simplify the amount
/// of code required to generate an [Expression].
library dogma_connection.expression_builder;

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

/// Helper function to generate an equals expression with the given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.equal] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    equal/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.equal(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate a not equal expression with the given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.notEqual] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    notEqual/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.notEqual(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate a less than expression with the given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.lessThan] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    lessThan/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.notEqual(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate a less than or equal to expression with the
/// given [name] and [value].
///
/// Wraps a call to the [BinaryExpression.lessThanOrEqual] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    lessThanOrEqual/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.lessThanOrEqual(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate a greater than expression with the given [name]
/// and [value].
///
/// Wraps a call to the [BinaryExpression.greaterThan] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    greaterThan/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.greaterThan(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate a greater than or equal to expression with the
/// given [name] and [value].
///
/// Wraps a call to the [BinaryExpression.greaterThanOrEqual] constructor.
BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>
    greaterThanOrEqual/*<T>*/(String name, dynamic/*=T*/ value) =>
        new BinaryExpression<ParameterExpression, ConstantExpression/*<T>*/>.greaterThanOrEqual(
            new ParameterExpression(name),
            new ConstantExpression/*<T>*/(value)
        );

/// Helper function to generate an and expression with the  given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.and] constructor.
BinaryExpression<Expression/*=LeftOperand*/, Expression/*=RightOperand*/>
    and/*<LeftOperand extends Expression, RightOperand extends Expression>*/(Expression/*=LeftOperand*/ left, Expression/*=RightOperand*/ right) =>
        new BinaryExpression<Expression/*=LeftOperand*/, Expression/*=RightOperand*/>.and(left, right);

/// Helper function to generate an or expression with the  given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.or] constructor.
BinaryExpression<Expression/*=LeftOperand*/, Expression/*=RightOperand*/>
    or/*<LeftOperand extends Expression, RightOperand extends Expression>*/(Expression/*=LeftOperand*/ left, Expression/*=RightOperand*/ right) =>
        new BinaryExpression<Expression/*=LeftOperand*/, Expression/*=RightOperand*/>.or(left, right);

/// Helper function to generate a not expression with the given [name] and
/// [value].
///
/// Wraps a call to the [BinaryExpression.not] constructor.
UnaryExpression<Expression/*T*/> not/*<T extends Expression>*/(Expression/*=T*/ expression) =>
    new UnaryExpression/*<T>*/.not(expression);

/// Helper function for joining the [expressions] into an and expression.
///
/// Wraps a call to the [BinaryExpression.andFromList] constructor.
BinaryExpression<Expression/*=T*/, Expression/*=T*/>
    andFromList/*<T extends Expression>*/(List<Expression/*=T*/> expressions) =>
        new BinaryExpression<Expression/*=T*/, Expression/*=T*/>.andFromList(expressions);

/// Helper function for joining the [expressions] into an or expression.
///
/// Wraps a call to the [BinaryExpression.andFromList] constructor.
BinaryExpression<Expression/*=T*/, Expression/*=T*/>
    orFromList/*<T extends Expression>*/(List<Expression/*=T*/> expressions) =>
        new BinaryExpression<Expression/*=T*/, Expression/*=T*/>.orFromList(expressions);
