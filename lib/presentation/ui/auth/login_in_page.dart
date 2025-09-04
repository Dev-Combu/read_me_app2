import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginInPage extends StatefulWidget{
  const LoginInPage({super.key});

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  bool isLogin = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isLogin ? "로그인" : "회원가입"),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Text("Password"),
                      TextField(controller: pwdController),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = isLogin ? false : true;
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(isLogin ? "회원가입" : "로그인"),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (isLogin) {
                      //로그인 로직
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: pwdController.text,
                          )
                          .catchError((e) {
                            //로그인 실패시
                            print(e);
                          })
                          .then((value) {
                            //로그인 성공했을시
                            emailController.clear();
                            pwdController.clear();
                            print('로그인 성공');
                          });
                    } else {
                      //회원가입 로직
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: pwdController.text,
                          )
                          .catchError((e) {
                            //회원가입 실패시
                            print(e);
                          })
                          .then((value) {
                            //회원가입 성공시
                            emailController.clear();
                            pwdController.clear();
                            print('회원가입 성공');
                          });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        !isLogin ? "회원가입" : "로그인"
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}