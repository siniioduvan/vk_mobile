import 'package:flutter/material.dart';
import 'package:vk_mobile/auth/pages/password_auth_page.dart';

class SecondAuthPage extends StatefulWidget {
  const SecondAuthPage({Key? key}) : super(key: key);

  @override
  State<SecondAuthPage> createState() => _SecondAuthPageState();
}

class _SecondAuthPageState extends State<SecondAuthPage> {
  var buttonActivity = null;

  void checkPhoneTextField() {
    final phone = phoneTextController.text;
    if (phone.isNotEmpty) {
      buttonActivity = (){Navigator.pushNamed(context, '/passwordAuth');};
      // buttonActivity = () {
      //   Navigator.of(context).pushNamed(
      //     '/passwordAuth',
      //     arguments: phone,
      //   );
      // };
    } else {
      buttonActivity = null;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    phoneTextController.addListener(() {
      checkPhoneTextField();
    });
  }

  final phoneTextController = TextEditingController();

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
                  'Введите номер',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Ваш номер телефона будет использоваться для входа в аккаунт',
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
                  controller: phoneTextController,
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixText: '+7',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Телефон или почта',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: buttonActivity,
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
