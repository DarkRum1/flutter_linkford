import 'package:flutter/material.dart';
import 'package:flutter_linkford/widgets/ownmessage.dart';
import 'package:flutter_linkford/widgets/replycard.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              backgroundColor: const Color(0xFFFFFFFF),
              leadingWidth: 90,
              titleSpacing: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Icon(Icons.arrow_back, size: 28, color: Color(0xFFFFB648),),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile.png'),
                          radius: 20,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Егор Летов', style: TextStyle(
                      color: Color(0xFF222221),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text('был в сети 15 минут назад', style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF434343),
                    ),)
                  ],
                ),
              ),
              actions:  [
                IconButton(
                    icon: const Icon(Icons.more_horiz, size: 28, color: Color(0xFFFFB648)),
                  onPressed: () {  },
                )
              ],
            ),
            body: Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height - 140,
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                      OwnMessage(),
                      ReplyMessage(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 60,
                          child: Card(
                            elevation: 10,
                            margin: const EdgeInsets.only(left: 15, right: 10, bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(color: Color(0xFFFFE4BB))
                            ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Пишите...',
                                  prefixIcon: IconButton(
                                    icon: const Icon(Icons.emoji_emotions, color: Color(0xFFFFB648),),
                                    onPressed: () {  },),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.attach_file, color: Color(0xFFFFB648)),
                                        onPressed: () {  },
                                      ),
                                    ],
                                  ),
                                  contentPadding: const EdgeInsets.all(10)
                                ),
                              ))
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15, right: 5),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Color(0xFFFFE4BB),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.mic, color: Color(0xFFFFB648))
                            ),
                        ),
                        ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
