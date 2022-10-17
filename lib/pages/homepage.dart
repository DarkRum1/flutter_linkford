import 'package:flutter/material.dart';

import 'mainscreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    String _email;
    String _password;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 22),
          child: Center(
            child: Form(
              key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 200,
                  child: Image.asset(
                    'assets/images/logolf.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Введите E-mail',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB648))
                        ),
                      floatingLabelStyle: TextStyle(
                        color: Color(0xFFFFB648)
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@')
                      ) {
                        return 'Неверный формат E-mail!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Пароль',
                      hintText: 'Введите Пароль',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFB648))
                      ),
                      floatingLabelStyle: TextStyle(
                          color: Color(0xFFFFB648)
                      ),
                    ),
                    obscureText: true,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.length < 6
                      ) {
                        return 'Некоректный ввод!';
                      }
                      return null;
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                SizedBox(
                  height: 70,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                        );
                      } else {
                        return;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFB648),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color(0xFFFFB648),
                          width: 2.42,
                        ),
                      ),
                    ),
                    child: const Text('Войти',
                      style: TextStyle(
                        color: Color(0xFF000626),
                          fontSize: 20.0
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
