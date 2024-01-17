import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  ReelsScreen({Key? key}) : super(key: key);
  int likeCount = 1997;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Reels',
          style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 24),
        ),
        actions: const [
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    SafeArea(
                    child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150.0,
                      child: Image.asset('assets/reels.gif',
                        fit: BoxFit.cover,
                ),
              ),)],
                ),
              )),
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/beykentlogo.png'),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Kullanıcı1',
                          style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            AnimatedIconButton(
                              onPressed: () {
                                likeCount++;
                                (context as Element).markNeedsBuild();
                              },
                              duration: const Duration(milliseconds: 380),
                              splashColor: Colors.transparent,
                              icons: const <AnimatedIconItem>[
                                AnimatedIconItem(
                                  icon: Icon(Icons.favorite_outline_rounded, color: Colors.white, size: 30),
                                ),
                                AnimatedIconItem(
                                  icon: Icon(Icons.favorite, color: Colors.red, size: 30),
                                ),
                              ],
                            ),
                            Text(
                              likeCount.toString(),
                              style: const TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
