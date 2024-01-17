import 'package:flutter/material.dart';
import 'package:untitled6/LoginScreen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key,});
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
        appBar: AppBar(
        backgroundColor: const Color(0xFF333333),
        automaticallyImplyLeading: false,
        title: const Text('emirpolat',
        style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 32),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  const SizedBox(
                    height: 18,
                  );
                  AwesomeDialog(
                      context: context,
                    dialogType: DialogType.question,
                    headerAnimationLoop: false,
                    animType: AnimType.bottomSlide,
                    reverseBtnOrder: true,
                    title: 'Çıkış Yapmak Istediğinden Emin Misin ?',
                    desc: "Evet'e tıklarsanız çıkış yapacaktır!",
                    buttonsTextStyle: const TextStyle(color: Colors.black),
                    showCloseIcon: true,

                    btnOkText: 'Evet',
                    btnCancelText: 'Hayır',
                    btnOkOnPress: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (Route<dynamic> route) => false,
                      );
                    },
                    btnCancelOnPress: () {},
                  ).show();
                },
                  icon: const Icon(Icons.exit_to_app_outlined, size: 30, color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFF333333),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 22, top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        height: 108,
                        width: 108,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/epprofile.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
              ),
              Row(
                children: [
                  TextButton(onPressed: (){
                  },
                      child: const Column(
                        children: [
                          Text('2', style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 20),),
                          Text('gönderi', style: TextStyle(color: Colors.white54,fontFamily: 'Montserrat', fontSize: 15),)
                        ],
                      ),
                  ),
                ],
              ),
              TextButton(onPressed: (){
              },
                child: const Column(
                  children: [
                    Text('202', style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 20),),
                    Text('takipçi', style: TextStyle(color: Colors.white54,fontFamily: 'Montserrat', fontSize: 15),)
                  ],
                ),
              ),
              TextButton(onPressed: (){
              },
                child: const Column(
                  children: [
                    Text('320', style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 20),),
                    Text('takip', style: TextStyle(color: Colors.white54,fontFamily: 'Montserrat', fontSize: 15),)
                  ],
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.0),
                child: Text('Emir Polat',
                style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 18),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Profilime Hos Geldiniz :)',
                  style: TextStyle(color: Colors.white,fontFamily: 'Montserrat',),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 30,
                  width: 275,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    onPressed: (){
                    },
                    child: const Text('Profili Düzenle', style: TextStyle(color: Colors.white, fontSize: 12,
                    ),
                    ),
                  ),

                ),
              ),
            ],
          ),
          const TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.video_collection_outlined, color: Colors.white,),
            ),
            Tab(
              icon: Icon(Icons.person_add_alt_outlined, color: Colors.white,),
            ),
          ]),

          const Expanded(
            child: TabBarView(children: <Widget>[
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      "Henüz Gönderin Yok",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      "Senin Fotoğrafların ve Videoların",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
