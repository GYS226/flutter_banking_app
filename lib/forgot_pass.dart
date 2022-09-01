import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);
  static String routeName = '/ForgotPass';

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
                  'Forgot Password',
                  style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[900],
                  ),
                ),
                const Image(
                  width: 250,
                  image: AssetImage('assets/forgotpass.png'),
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
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'You will receive an email ',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/Login');
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
                        'Send',
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
