import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app2/firebase_options.dart';

import 'package:read_me_app2/presentation/app/router.dart';
import 'package:read_me_app2/presentation/theme/theme.dart';

void main() async {
  // .env로드 및 firebase 초기화
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Record Reading',
      routerConfig: router,
      theme: AppTheme.lightTheme,
    );
  }
}
