import 'package:flutter/material.dart';

import '../models/foods.dart';
class FoodItems extends StatelessWidget {
  Foods foods;
  void Function()? onPressed;
  final Widget icon;
   FoodItems({super.key,required this.icon,required this.foods,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        trailing:IconButton(
          icon: icon,
          onPressed: onPressed,
        ) ,
        title: Text(foods.name,style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text(foods.price,style: TextStyle(fontWeight: FontWeight.w400),),
        leading: Image.asset(foods.imagepath,height: 100,width: 70,fit: BoxFit.fill,),
      ),
    );
  }
}
