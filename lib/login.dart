import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  static String routeName = '/Login';
  late final TextEditingController _nameController =
      TextEditingController(text: '');
  late final TextEditingController _passController = TextEditingController(text: '');

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[900],
                  ),
                ),
                const Image(
                  width: 250,
                  image: AssetImage('assets/home.png'),
                ),
                TextFormField(
                  // controller: _nameController,
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
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.black12,
                    ),
                    hintText: 'Username',
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
                  height: 18,
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
                Row(
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/Register');
                      },
                      child: Text(
                        '  Register',
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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/ForgotPass');
                      },
                      child: Text(
                        '  Forgot Password ?',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
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
                        'Login',
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
