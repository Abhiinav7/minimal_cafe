import 'package:flutter/material.dart';
import 'package:minimal_cafe/models/foodShop.dart';
import 'package:provider/provider.dart';

import '../components/foodTile.dart';
import '../models/foods.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Foods foods){
    Provider.of<FoodShop>(context,listen: false).addItem(foods);
    showDialog(
        context: context, builder: (context) => AlertDialog(
      title: Text("Item added succesfully"),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<FoodShop>(
        builder: (context, value, child) => SafeArea(
                child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    "Experience delicious deals just for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.cafeItems.length,
                      itemBuilder: (context, index) {
                        Foods eachItem = value.cafeItems[index];
                        return FoodItems(
                            icon: Icon(Icons.add),
                            foods: eachItem,
                            onPressed: ()=>addToCart(eachItem));
                      }),
                )
              ],
            )));
  }
}
