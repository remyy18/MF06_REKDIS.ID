import 'package:flutter/material.dart';
import 'package:rekdis/users/akunpage.dart';
import 'package:rekdis/users/beranda.dart';
import 'package:rekdis/users/rekammedis.dart';
import 'package:rekdis/constant.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new Beranda(), new RekamMedis(), new AkunPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REKDIS.ID'),
      ),
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Beranda'),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.favorite,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: 'Rekdis'),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.person,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Akun'),
        ],
      ),
    );
  }
}
