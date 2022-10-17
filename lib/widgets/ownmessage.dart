import 'package:flutter/material.dart';

class OwnMessage extends StatelessWidget {
  const OwnMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45
          ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: const Color(0xFFFFE4BB),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 60, top: 5, bottom: 20),
                  child: Text('Hey dfg dfgd ssfsefsdfwsef sdfsef sdfesf sdf esf sd fg r', style: TextStyle(
                    fontSize: 16,
                  ),)
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text('20:58', style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.done_all, size: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
