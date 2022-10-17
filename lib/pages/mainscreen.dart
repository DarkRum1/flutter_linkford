import 'package:flutter/material.dart';
import 'package:flutter_linkford/pages/chatpage.dart';
import 'package:flutter_linkford/pages/homepage.dart';
import 'package:flutter_linkford/pages/lessens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/background.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      alignment: Alignment.center,
                      color: const Color(0xFFFFB648),
                      icon: const Icon(Icons.assignment_outlined, size: 28,
                      ),
                      onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessensPage()
                          )
                      );
                    },
                    ),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 70,
                      child: Image.asset('assets/images/fulllogo.png'),
                    )
                  ],
                ),
                automaticallyImplyLeading: false,
                backgroundColor: const Color(0xFFFFFFFF),
                actions: [
                  IconButton(
                    alignment: Alignment.center,
                    color: const Color(0xFFFFB648),
                    icon: Image.asset('assets/images/messege.png', width: 28, height: 28,) ,
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => const ChatPage()
                    )
                    );
                  },
                  ),
                ],
              ),
              body: Center(
                child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Image.asset('assets/images/profile.png'),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 15),
                          child: const Text('Михаил Горшенев', style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: const Text('abc123456@gmail.com', style: TextStyle(
                              fontSize: 12,
                            color: Colors.grey,
                          ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 25,
                          child: Card(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                                  child: const Text('Курс:', style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFFFB648)
                                  ),
                                  ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                                    child: const Text('3', style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                                    child: const Text('Группа:', style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFB648)
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                    child: const Text('И-2-20', style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                                    child: const Text('Учебное заведение:', style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFB648)
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                    child: const Text('КИПУ им. Февзи Якубова', style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                                    child: const Text('Страна:', style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFB648)
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                    child: const Text('Россия', style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                                    child: const Text('Город:', style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFB648)
                                    ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                    child: const Text('Симферополь', style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Container(
                                padding: const EdgeInsets.only(right: 90),
                                child: const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.settings, color: Color(0xFFFFB648), size: 40,)
                                ),
                              ),
                              const CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.question_mark_rounded, color: Color(0xFFFFB648), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Вы уверены?'),
                                      content: Text('Вы уверены, что хотите выйти?'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Отмена', style: TextStyle(
                                              color: Color(0xFFFFB648)
                                            ),
                                            ),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => HomePage()
                                                  )
                                              );
                                            },
                                            child: Text('Подтвердить', style: TextStyle(
                                                color: Color(0xFFFFB648)
                                            ),)
                                        ),
                                      ],
                                    );
                                  }
                              );
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()
                              //     )
                              // );
                            },
                            child: const CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.exit_to_app_rounded, color: Color(
                                    0xFFFC7272), size: 40,)
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

