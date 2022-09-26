import 'package:flutter/material.dart';

import '../Widgets/Custom_GN/gbutton.dart';
import '../Widgets/Custom_GN/gnav.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  const GNav(
        tabs: [
          GButton(
            image: Image(image: AssetImage("images/home.png")),
            text: 'Home',

          ),
          GButton(
            image: Image(image: AssetImage("images/home.png")),
            text: 'Home',

          ),
          GButton(
            image: Image(image: AssetImage("images/home.png")),
            text: 'Home',

          ),
          GButton(
            image: Image(image: AssetImage("images/home.png")),
            text: 'Home',

          ),

        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                Text("welcome home dear")

              ],
            ),
          )
        ],
      ),
    );
  }
}
