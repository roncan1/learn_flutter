import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //이미지
          AspectRatio(
            aspectRatio: 2 / 1, // 비율을 2/1로 주면 스마트폰 가로 비율이 600일 경우 이지미의 300으로 가변
            child: Image.asset(
              "assets/images/$imageName.jpeg", // 변수의 값을 변화하면서 코드 작성
              fit: BoxFit.cover,
            ),
          ),
          //이미지와 이미지 타이틀 사이 여백
          SizedBox(height: 10,),
          //이미지 아래 타이틀
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          //이미지 설명
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(color: Colors.grey, fontSize: 12),)
        ],
      ),
    );
  }
}