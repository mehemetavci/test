import 'package:flutter/material.dart';

class Catogory {
  final String id, title, image;
  Catogory({this.id, this.title, this.image});
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }
}

class Message {
  final String content, email;
  final bool type; // true User sent to admin
  final DateTime date;

  Message({this.content, this.type, this.date, @required this.email});
}

class Products {
  String id, title, description, categoryID;
  double price;
  int sale;
  DateTime date;
  List<dynamic> sizes, images;
  Products({
    this.id,
    this.price,
    this.title,
    this.description,
    this.categoryID,
    this.sale,
    this.date,
    this.sizes,
    this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'categoryID': categoryID,
      'gram': price,
      'sale': sale,
      'sizes': sizes,
      'images': images,
      'date': date
    };
  }
}

class CartItem {
  final String id;
  int quanty, pickedSize;
  final Products product;
  CartItem({this.quanty, this.id, this.pickedSize, this.product});
  Map<String, dynamic> toMap() {
    return {
      'quanty': quanty,
      'pickedSize': pickedSize,
      'productID': product.id,
      'Product': product.toMap()
    };
  }
}

class Account {
  String name, email, token, imageurl, sginedwith;

  Account({this.name, this.email, this.token, this.imageurl, this.sginedwith});
}

class Order {
  final String id,
      userid,
      size,
      paymentMethod,
      name,
      address,
      city,
      phoneNumber;
  final Map product;
  final DateTime date;
  final int county, price;

  Order(
      {this.id,
      @required this.paymentMethod,
      @required this.userid,
      @required this.product,
      @required this.date,
      this.size,
      @required this.address,
      @required this.name,
      @required this.city,
      @required this.phoneNumber,
      @required this.county,
      @required this.price});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userid': userid,
      'product': product,
      'paymentMethod': paymentMethod,
      'date': date,
      'size': size,
      'county': county,
      'price': price,
      'address': address,
      'name': name,
      'city': city,
      'phoneNumber': phoneNumber,
    };
  }
}
