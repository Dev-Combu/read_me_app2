import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:read_me_app2/presentation/ui/auth/auth_view_model.dart';

class LoginInPage extends ConsumerStatefulWidget {
  const LoginInPage({super.key});

  @override
  ConsumerState<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends ConsumerState<LoginInPage> {
  bool isLogin = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  Logger logger = Logger();

  Future<void> emailLogIn(String email, String pwd) async {
    await ref.read(emailAuthViewModelProvider.notifier).logIn(email, pwd);
    emailController.clear();
    pwdController.clear();
  }

  Future<void> emailSignUp(String email, String pwd) async {
    try {
      await ref.read(emailAuthViewModelProvider.notifier).signUp(email, pwd);
      emailController.clear();
      pwdController.clear();
      setState(() {
        isLogin = true;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        logger.d('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        logger.d('The account already exists for that email.');
      }
    } catch (e) {
      logger.d(e);
      emailController.clear();
      pwdController.clear();
      setState(() {
        isLogin = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin = true;
  }

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
                  onTap: () async{
                    if (isLogin) {
                      emailLogIn(emailController.text, pwdController.text)
                          .then((value) {
                            //로그인 성공시
                            if (mounted) {
                              context.go('/bookcase');
                            }
                          })
                          .catchError((e) {
                            //로그인 실패시
                            print(e);
                          });
                    } else  {
                      emailSignUp(emailController.text, pwdController.text);
                      
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(!isLogin ? "회원가입" : "로그인"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
