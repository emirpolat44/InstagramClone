import 'package:flutter/material.dart';
import 'Post.dart';
import 'StorySection.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333).withOpacity(0.5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: const Color(0xFF121212),
        title: const SizedBox(
          height: 30,
          width: 180,
          child: Text('Socialland',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 24), ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(90.0),
                          color: const Color(0xFF121212),
                          child: const Text(
                            'henüz bildirim yok',
                            style: TextStyle(fontSize: 15.0,
                                color: Colors.white,fontFamily: 'Montserrat'
                            ),
                          ),
                        );
                      }
                  );
                },
                  icon: const Icon(Icons.favorite_outline_rounded, size: 22.5, color: Colors.white,),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(90.0),
                      color: const Color(0xFF121212),
                      child: const Text(
                        'henüz mesaj yok',
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.white,fontFamily: 'Montserrat'
                        ),
                      ),
                    );
                  });
                },
                icon: const Icon(Icons.message_rounded, size: 22.5, color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white30,
            height: 1,
            width: MediaQuery.of(context).size.width,
          ),
          StorySection(userInfoList: dataUsers),
          Posts(),
            Column(
              children: [
                Container(
                  color: Colors.white30,
                  height: 1,

                ),
              ],
            ),
        ],
      ),
    );
  }
}
