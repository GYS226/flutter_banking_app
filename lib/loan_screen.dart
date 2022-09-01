import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({Key? key, required this.entredDollar}) : super(key: key);
  static String routeName = '/LoanScreen';
  final String entredDollar;

  @override
  Widget build(BuildContext context) {
    // LoanScreen(entredDollar: dollar);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              child: Image(
                                image: AssetImage('assets/rich.png'),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Great !',
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[900],
                              ),
                            ),
                            Text(
                              'Loan Success',
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Below is your loan summary',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[400],
                                letterSpacing: 1.0,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Purpose Loan',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Text(
                                  'Bicycle Loan',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mouthly',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Text(
                                  '12 Month',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Installment',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Text(
                                  '\$10/Month',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Due Date',
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Text(
                                  'May 10, 2021',
                                  style: GoogleFonts.roboto(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Divider(
                              color: Colors.grey,
                              height: 20,
                            ),
                            Text(
                              'Total Loan',
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[400], fontSize: 20),
                            ),
                            Text(
                              '\$entredDollar',
                              style: GoogleFonts.roboto(
                                color: Colors.amber[900],
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    // var dollar = dollar.text;
                    // ignore: avoid_print
                    // print(dollar);
                    Navigator.pushReplacementNamed(context, '/BoardScreen');
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
                        'Go back home',
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
            ),
          ),
        ),
      ),
    );
  }
}
