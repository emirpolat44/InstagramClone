import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  Posts({Key? key}) : super(key: key);
  int postLikeCount=1997;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 3),
                  child: SizedBox(height: 55, width: 55, child:
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/beykentlogo.png'),
                  ),),
                ),
                const SizedBox(
                  width: 3,
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: const Text('Kullanıcı1',
                    style: TextStyle(color: Colors.white, fontSize: 15),),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: (){
                    },
                    icon: const Icon(Icons.more_vert, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,

          child: const Image(
            image: AssetImage('assets/beykent.jpg'),
            height: 198,
            fit: BoxFit.scaleDown,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        AnimatedIconButton(
                          onPressed: (){
                            postLikeCount++;
                            (context as Element).markNeedsBuild();
                          },
                          duration: const Duration(milliseconds: 380),
                          splashColor: Colors.transparent,
                          icons: const <AnimatedIconItem>[
                            AnimatedIconItem(
                              icon: Icon(Icons.favorite_outline_rounded, color: Colors.white,size: 30,),
                            ),
                            AnimatedIconItem(
                              icon: Icon(Icons.favorite, color: Colors.red,size: 30,),
                            ),
                          ],
                        ),
                        Text(
                          postLikeCount.toString(),
                          style: const TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){
                          },
                          icon: const Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){
                          },
                          icon: const Icon(Icons.near_me_outlined, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text('Kullanıcı1',
                      style: TextStyle(
                          color: Colors.blueAccent, fontFamily: 'Montserrat'),),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  'Okulumuzun güzel manzarası!! :) ',
                  style: TextStyle(
                      color: Colors.white,fontFamily: 'Montserrat'
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('0 yorumları görüntüle',
                  style: TextStyle(color: Colors.white,fontFamily: 'Montserrat'),),
              ),
            ],
          ),
        ),

      ],
    );
  }
}