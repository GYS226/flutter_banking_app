import 'package:banking_app/loan_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loans extends StatefulWidget {
  static String routeName = '/Loans';

  const Loans({Key? key}) : super(key: key);

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  late final TextEditingController _dollar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 150, top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Apply Loan',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 60,
                    child: Image(
                      image: AssetImage(
                        'assets/gys.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'G Y S',
                    style: GoogleFonts.roboto(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Maximum \$20,000 USD',
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: Colors.grey[400]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    // child: Flexible(
                    child: TextFormField(
                      controller: _dollar,
                      validator: (_dollar) {
                        if (_dollar == null) {
                          return "Saisir la somme";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.amber[900],
                      cursorHeight: 45,
                      style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      decoration: InputDecoration(
                        hintText: '0',
                        errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.attach_money_sharp,
                          size: 50,
                          color: Colors.grey[400],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    // child: Text(
                    //   'Send',
                    //   style: GoogleFonts.roboto(
                    //     color: Colors.white,
                    //     fontSize: 25,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    onTap: () {
                      // var intdollar = _dollar.text;
                      // print(intdollar);
                      // Navigator.pushReplacementNamed(context, '/LoanScreen(dollar : dollar)');
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoanScreen(
                            entredDollar: _dollar.text,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffF8612C),
                            Color(0xffFE8E4B),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Send',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
