import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
class OptionPage extends StatelessWidget{
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _storage = const FlutterSecureStorage();
    Logger logger = Logger();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Option'),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () async{
                    final uid = await _storage.read(key: 'user_uid');
                    logger.i("현재 저장된 UID: $uid");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 20,
                      child: Text("저장된 uid 확인 버튼"),
                    
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async{
              await FirebaseAuth.instance.signOut();
            },
            child: Text('로그아웃'),
          ),
        ),
      ),
    );
  }
}