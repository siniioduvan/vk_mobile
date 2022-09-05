import 'package:flutter/material.dart';
import 'package:vk_mobile/constants.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Вход ВКонтакте',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),
          ),
          SizedBox(height: 20,),
          Text(
              'Мобильная версия поможет вам оставаться ВКонтакте даже если вы далеко от компьютера',
          textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 16
          ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(vkBlueColor),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/secondAuth');
              },
              child: Text('Войти'),
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: Text('Зарегистрироваться'),
            ),
          )
        ],
      ),
    );
  }
}
