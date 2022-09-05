import 'package:flutter/material.dart';

import '../../constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 45,),
          Container(
              height: 50,
              width: 200,
              child: Image.asset("assets/images/logo.png")),
          SizedBox(height: 40,),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.phone_android,
                    color: vkBlueColor,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child: Text(
                    'Установить приложение ВКонтакте',
                    style: TextStyle(fontSize: 16, color: vkBlueColor),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.chevron_right,
                      color: vkBlueColor,
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
