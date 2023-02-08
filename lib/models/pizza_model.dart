import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Pizza extends Equatable {
  final String id;
  final String name;
  final Image image;

  const Pizza({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image];
  // 피자 클래스 내에서 블록의 상태를 비교하는데 사용됨

  static List<Pizza> pizzas = [
    Pizza(
      id: '0',
      name: 'Pizza',
      image: Image.asset('images/pizza.png'),
    ),
    Pizza(
      id: '1',
      name: 'Pizza Pepperoni',
      image: Image.asset('images/pizza_pepperoni.png'),
    ),
  ];
}
