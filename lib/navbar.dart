import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNav();
        } else {
          return MobileNav();
        }
      },
    );
  }
}

class DesktopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavItem(Icons.analytics, "What We Do"),
                NavItem(Icons.person, "Who We Are"),
                NavItem(Icons.auto_graph, "Reports"),
                NavItem(Icons.message, "Lets Talk"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 100,
            height: 100,
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              NavItem(Icons.analytics, "What We Do"),
              NavItem(Icons.person, "Who We Are"),
              NavItem(Icons.auto_graph, "Reports"),
              NavItem(Icons.message, "Lets Talk"),
            ],
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String text;

  NavItem(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 24.0,
          ),
          SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
