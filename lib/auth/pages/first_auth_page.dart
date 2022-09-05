import 'package:flutter/material.dart';
import 'package:vk_mobile/auth/widget/button.dart';
import 'package:vk_mobile/auth/widget/logo.dart';

class FirstAuthPage extends StatelessWidget {
  const FirstAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          LogoWidget(),
          SizedBox(
            height: 15,
          ),
          AuthButton()
        ],
      ),
    );
  }
}
