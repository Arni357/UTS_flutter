import 'package:arni_18111025_uts/login.dart';
import 'package:arni_18111025_uts/users.dart';
import 'package:arni_18111025_uts/widget/bottom_navigation_bar_widget.dart';
import 'package:arni_18111025_uts/widget/panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../about.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final panelController = PanelController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final user = users[index];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }),
        actions: [
          IconButton(
              icon: Icon(Icons.people_sharp),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              }),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 340,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: panelController,
        color: Colors.transparent,
        body: PageView(
          children: users
              .map((user) => Image.asset(user.urlImage, fit: BoxFit.cover))
              .toList(),
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        panelBuilder: (ScrollController scrollController) => PanelWidget(
          user: user,
          onClickedPanel: panelController.open,
          onClickedFollowing: () => setState(() {
            user.isFollowing = !user.isFollowing;
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
