import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.local_bar, "Bar"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),  // 테두리 곡선
        border: Border.all(color: Colors.black12),// 테두리 색
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.redAccent, size: 30,),
          SizedBox(height: 5,),
          Text(text, style: TextStyle(color: Colors.black87),)
        ],
      ),
    );
  }
}
