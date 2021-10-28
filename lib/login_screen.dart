import 'package:flutter/material.dart';
import 'package:test_app/registration_screen.dart';
import 'Components/ReusableButton.dart';
import 'Components/TextFieldWidget.dart';
import 'Utilities/Constant.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff07202e), //Color(0xff102532),
      appBar: AppBar(
        backgroundColor: Color(0xff07202e),
        elevation: 0,
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        title: Text(
          'Login',
          style: KTextStyle,
        ),
        toolbarHeight: 70.0,
        titleSpacing: 120,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Scrollbar(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsetsDirectional.all(20),
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
                      controller: emailController,
                      label: 'E-mail',
                      prefixIcon: Icon(Icons.mail, color: Colors.white),
                      keyboard: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFieldWidget(
                      controller: passwordController,
                      label: 'Password',
                      keyboard: TextInputType.visiblePassword,
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget your password ?',
                          style: TextStyle(
                            color: Color(0xffc7b392),
                          ),
                        ),
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
                          print(emailController);
                          print(passwordController);
                        },
                        color: Color(0xffc7b392),
                        text: Text(
                          'Login',
                          style: KTextButtonStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegistrationScreen();
                            }));
                          },
                          child: Text(
                            'Register..',
                            style: TextStyle(color: Color((0xffc7b392))),
                          ),
                        )
                      ],
                    )
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


