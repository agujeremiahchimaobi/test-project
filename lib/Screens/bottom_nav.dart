import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: GNav(
          padding: EdgeInsets.all(16),
          gap: 8,
          tabBackgroundColor: Colors.orange.shade100,
          tabs: [


          GButton(
            iconColor: Color(0xff828282),
            icon: Icons.home_filled,
            iconActiveColor: Color(0xffF64F00),
            text: 'Home',
            textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xffF64F00)),
          ),
            GButton(
              iconColor: Color(0xff828282),
              icon: Icons.wallet,
              iconActiveColor: Color(0xffF64F00),
              text: 'Wallet',
              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xffF64F00)),
            ),
            GButton(
              iconColor: Color(0xff828282),
              icon: Icons.wallet,
              iconActiveColor: Color(0xffF64F00),
              text: 'Wallet',
              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xffF64F00)),
            ),
            GButton(
              iconColor: Color(0xff828282),
              icon: Icons.person,
              iconActiveColor: Color(0xffF64F00),
              text: 'Account',
              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xffF64F00)),
            ),
        ],

        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Center(
                  child: Text("ckjcjksjk;ljckjajakljklaj"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
