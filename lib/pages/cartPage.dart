import 'package:flutter/material.dart';
import 'package:minimal_cafe/components/foodTile.dart';
import 'package:minimal_cafe/models/foodShop.dart';
import 'package:provider/provider.dart';

import '../models/foods.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteItem(Foods foods){
    Provider.of<FoodShop>(context,listen: false).removeItem(foods);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<FoodShop>(
    builder: (context, value, child) => SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Your Cart",style: TextStyle(fontSize: 20),),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: value.getCart.length,
            itemBuilder: (context, index) {
              Foods eachItem = value.getCart[index];
            return FoodItems(
                    icon: Icon(Icons.remove),
                    foods: eachItem,
                    onPressed: ()=>deleteItem(eachItem));
            }
        ),
        ),
        GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(8)
              ),
      padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          ),
        )
      ],

    )),
    );
  }
}
