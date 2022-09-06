import 'package:flutter/material.dart';

class PasswordAuthPage extends StatefulWidget {
  const PasswordAuthPage({Key? key}) : super(key: key);

  @override
  State<PasswordAuthPage> createState() => _PasswordAuthPageState();
}

class _PasswordAuthPageState extends State<PasswordAuthPage> {
  var buttonCheck = null;

  void checkPassword() {
    final queryPassword = passwordTextController.text;
    if (queryPassword.isNotEmpty) {
      buttonCheck = () {
        if (queryPassword == 'admin') {
          print('open page');
          Navigator.pushNamed(context, '/testPage');
        }
      };
    } else {
      buttonCheck = null;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    passwordTextController.addListener(() {
      checkPassword();
    });
  }

  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset("assets/images/vk_icon.jpeg")),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 75,
                height: 75,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/images/vk_icon.jpeg")),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Введите пароль',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Введите ваш текущий пароль привязанный к ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: 370,
                child: TextField(
                  controller: passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Введите пароль',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: buttonCheck,
                  child: Text('Продолжить'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
