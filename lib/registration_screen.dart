import 'package:flutter/material.dart';
import 'package:test_app/Components/ReusableButton.dart';
import 'package:test_app/Components/TextFieldWidget.dart';
import 'Utilities/Constant.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff07202e),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Color(0xff07202e),
        leading: Icon(Icons.menu),
        title: Center(child: Text('Registration')),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('images/My New Logo 2017.png'),
                    SizedBox(
                      height: 70.0,
                    ),
                    TextFieldWidget(
                      controller: email,
                      label: 'Enter your E-mail',
                      keyboard: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFieldWidget(
                      controller: password,
                      label: 'Enter your password',
                      keyboard: TextInputType.visiblePassword,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      obscureText: true,
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFieldWidget(
                      controller: confirmPassword,
                      label: 'Confirm your password',
                      keyboard: TextInputType.visiblePassword,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      obscureText: true,
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                        decoration: KDecorationButton,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ReusableButton(
                          onpress: () {
                            print(email.text);
                            print(password.text);
                            print(confirmPassword);
                          },
                          color: Color(0xffc7b392),
                          text: Text(
                            'Register',
                            style: KTextButtonStyle,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
