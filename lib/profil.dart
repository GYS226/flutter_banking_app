import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);
  static String routeName = 'Profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Hero(
            tag: 'profil',
            child: Image(
              image: AssetImage('assets/gys.png'),
            ),
          ),
        ),
      ),
    );
  }
}
