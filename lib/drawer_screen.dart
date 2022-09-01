
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);
  @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
// // }
//   State<DrawerScreen> createState() => _DrawerScreenState();

//

// class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                const Image(
                  height: 100,
                  image: AssetImage('assets/gys.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'G Y S',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          _listTile(
            fct: () {},
            icon: Icons.wallet_travel,
            label: 'My Account',
          ),
          _listTile(
            fct: () {},
            icon: Icons.trending_up_outlined,
            label: 'Transactions',
          ),
          _listTile(
            fct: () {},
            icon: Icons.workspaces_outlined,
            label: 'Partners',
          ),
          _listTile(
            fct: () {},
            icon: Icons.settings,
            label: 'Parameters',
          ),
          const Divider(
            thickness: 2,
          ),
          _listTile(
            fct: () {
              _logout(context);
            },
            icon: Icons.logout,
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}

void _logout(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/logout.svg',
                color: Colors.black,
              ),
              const Text('Sign Out')
            ],
          ),
        );
      });
}

//Widget for drawer
Widget _listTile({
  required Function fct,
  required IconData icon,
  required String label,
}) {
  return ListTile(
    onTap: () {
      fct();
    },
    leading: Icon(
      icon,
      size: 20,
      color: Colors.grey,
    ),
    title: Text(
      label,
      style: GoogleFonts.roboto(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   throw UnimplementedError();
// }
