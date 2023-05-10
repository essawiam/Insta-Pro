import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:insta_pro/feature/auth/backend/authenticator.dart';
import 'firebase_options.dart';
import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter new App',
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        indicatorColor: Colors.blueGrey,
      ),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello App')),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              final result = await Authenticator().loginWithGoogle();
              print('=======================');
              print('This is the result $result');
              result.log();
            },
            child: const Text('Sign with Google'),
          ),
          TextButton(
            onPressed: () async {
              await Authenticator().logOut();
            },
            child: const Text('Sign out'),
          )
        ],
      ),
    );
  }
}
