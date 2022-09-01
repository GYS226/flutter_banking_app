import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static String routeName = '/Register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[900],
                  ),
                ),
                const Image(
                  width: 200,
                  image: AssetImage('assets/register.png'),
                ),
                TextFormField(
                  //controller: _nameController,
                  // validator: (_nameController) {
                  //   if (_dollar == null) {
                  //     return "Saisir la somme";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(color: Colors.black12),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.black12,
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.amber),),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber.shade900),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //controller: _nameController,
                  // validator: (_nameController) {
                  //   if (_dollar == null) {
                  //     return "Saisir la somme";
                  //   } else {
                  //     return null;
                  //   }
                  // },

                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.black12,
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.black12),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      size: 20,
                      color: Colors.black12,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber.shade900),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //controller: _nameController,
                  // validator: (_nameController) {
                  //   if (_dollar == null) {
                  //     return "Saisir la somme";
                  //   } else {
                  //     return null;
                  //   }
                  // },

                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.black12,
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(color: Colors.black12),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      size: 20,
                      color: Colors.black12,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber.shade900),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //controller: _nameController,
                  // validator: (_nameController) {
                  //   if (_dollar == null) {
                  //     return "Saisir la somme";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.mail,
                      size: 20,
                      color: Colors.black12,
                    ),
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black12),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber.shade900),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Have already an account ?',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, '/Login');
                      },
                      child: Text(
                        '  Login',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/BoardScreen');
                  },
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffF8612C),
                          Color(0xffFE8E4B),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                      color: Colors.amber.shade800,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
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
