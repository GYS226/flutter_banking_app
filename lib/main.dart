import 'package:banking_app/board_screen.dart';
import 'package:banking_app/forgot_pass.dart';
import 'package:banking_app/home.dart';
import 'package:banking_app/loan_screen.dart';
import 'package:banking_app/loans.dart';
import 'package:banking_app/login.dart';
import 'package:banking_app/profil.dart';
import 'package:banking_app/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static String routeName = '/';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(),
      home: const Home(),
      initialRoute: MyApp.routeName,
      routes: {
        BoardScreen.routeName: (context) => const BoardScreen(),
        LoanScreen.routeName: (context) => LoanScreen(entredDollar: toString()),
        Loans.routeName: (context) => const Loans(),
        Login.routeName: (context) => Login(),
        Profil.routeName: (context) => const Profil(),
        Register.routeName: (context) => const Register(),
        ForgotPass.routeName: (context) => const ForgotPass(),
      },
    );
  }
}
