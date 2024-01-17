import 'package:flutter/material.dart';
import 'package:untitled6/MainScreen.dart';
import 'Profiles.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Socialland',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 24), ),
        backgroundColor: const Color(0xFF121212),
      ),
      backgroundColor: const Color(0xFF333333),
      body: Center(
          child: SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    controller: usernameController,
                    decoration: const InputDecoration(labelText: 'Kullanıcı Adı', labelStyle: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 16),),
              ),
                  const Text('kullanıcı adı :emirpolat',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 16),),
                  TextField(
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Şifre', labelStyle: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 16),),
              ),
                  const Text('sifre :123',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 16),),
               const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (checkCredentials()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen(
                      ),),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Giriş Başarısız!!'),
                          content: const Text('Girilen Şifre ya da Kullanıcı Adı Yanlış!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Tamam',style: TextStyle(color: Colors.black),),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Giriş Yap',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
                ),
              ),
        ),);
  }

  bool checkCredentials() {
    String enteredUsername = usernameController.text;
    int enteredPassword = int.tryParse(passwordController.text) ?? 0;

    Users user1 = Users("emirpolat", 123, "");


    return (enteredUsername == user1.userName && enteredPassword == user1.userPassword);
  }
}

