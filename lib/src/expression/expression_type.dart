// Copyright (c) 2015, the Dogma Project Authors.
// Please see the AUTHORS file for details. All rights reserved.
// Use of this source code is governed by a zlib license that can be found in
// the LICENSE file.

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// Describes the node types for the nodes of an expression tree.
enum ExpressionType {
  //---------------------------------------------------------------------
  // Arithmetic operations
  //---------------------------------------------------------------------

  /// An equality comparison, such as (a == b)
  equal,
  /// An inequality comparison, such as (a != b)
  notEqual,
  /// A less than comparison, such as (a < b)
  lessThan,
  /// A less than or equal to comparison, such as (a <= b)
  lessThanOrEqual,
  /// A greater than comparison, such as (a > b)
  greaterThan,
  /// A greater than or equal to comparison, such as (a >= b)
  greaterThanOrEqual,

  //---------------------------------------------------------------------
  // Logical operations
  //---------------------------------------------------------------------

  /// A logical and operation, such as (a && b)
  and,
  /// A logical or operation, such as (a || b)
  or,
  /// A logical not operation, such as (!a)
  not,

  //---------------------------------------------------------------------
  // Miscellaneous operations
  //---------------------------------------------------------------------

  /// A reference to a parameter or variable.
  parameter,
  /// A constant value.
  constant
}

/// Determines if the given expression [type] corresponds to a logical operation.
///
/// The following enumerations are logical operations.
///
/// * [ExpressionType.and]
/// * [ExpressionType.or]
/// * [ExpressionType.not]
bool isLogicalOperation(ExpressionType type) {
  switch (type) {
    case ExpressionType.and:
    case ExpressionType.or:
    case ExpressionType.not:
      return true;
    default:
      return false;
  }
}

/// Determines if the given expression [type] corresponds to an arithmetic operation.
///
/// The following enumerations are arithmetic operations.
///
/// * [ExpressionType.equal]
/// * [ExpressionType.notEqual]
/// * [ExpressionType.lessThan]
/// * [ExpressionType.lessThanOrEqual]
/// * [ExpressionType.greaterThan]
/// * [ExpressionType.greaterThanOrEqual]
bool isArithmeticOperation(ExpressionType type) {
  switch (type) {
    case ExpressionType.equal:
    case ExpressionType.notEqual:
    case ExpressionType.lessThan:
    case ExpressionType.lessThanOrEqual:
    case ExpressionType.greaterThan:
    case ExpressionType.greaterThanOrEqual:
      return true;
    default:
      return false;
  }
}
