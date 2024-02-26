
import 'package:flutter/cupertino.dart';

import 'foods.dart';
class FoodShop extends ChangeNotifier{
//food for sale List
final List<Foods> shop=[
Foods(name: "Burger", price: "80", imagepath: "assets/burger.jpg"),
Foods(name: "Mojito", price: "60", imagepath: "assets/moito.jpg"),
Foods(name: "Chiken Roll", price: "30", imagepath: "assets/roll.jpg"),
Foods(name: "Samoosa", price: "20", imagepath: "assets/samoosa.jpg"),
Foods(name: "Shawarma", price: "100", imagepath: "assets/shawaama.jpg"),

];
//cart
final List<Foods> userCart=[];

//get food list
List<Foods> get cafeItems=>shop;

//get user cart
List<Foods> get getCart =>userCart;

//add item to cart
void addItem(Foods foods){
  userCart.add(foods);
  notifyListeners();
}
//remove items  from cart
void removeItem(Foods foods){
  userCart.remove(foods);
  notifyListeners();
}
}