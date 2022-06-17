import 'package:flutter/material.dart';
import 'package:learn_flutter/components/custom_text_form_field.dart';
import 'package:learn_flutter/size.dart';

class CustomForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField("Password"),
          SizedBox(
            height: large_gap,
          ),
// 버튼 추가 및 네비게이터를 이용한 페이지 이동
          TextButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
//form위젯 안에 모든 TextFormField의 값이 모두 비어있는지 확인을 하고 비어있지 않다고
                //한다면 이동을 하고 그렇지 않으면 이동하지 않느다
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
