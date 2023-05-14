import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_with_flutter/view/about_view.dart';
import 'package:hidden_drawer_with_flutter/view/home_view.dart';
import 'package:hidden_drawer_with_flutter/view/setting_view.dart';

class HiddenDrawerView extends StatefulWidget {
  const HiddenDrawerView({Key? key}) : super(key: key);

  @override
  State<HiddenDrawerView> createState() => _HiddenDrawerViewState();
}

class _HiddenDrawerViewState extends State<HiddenDrawerView> {
  final List<ScreenHiddenDrawer> _pages = [
    ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Home Page',
            selected: true,
            colorLineSelected: Colors.yellow,
            baseStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            selectedStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const HomeView()),
    ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Setting Page',
            colorLineSelected: Colors.yellow,

            baseStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            selectedStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SettingView()),
    ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'About Page',
            colorLineSelected: Colors.yellow,

            baseStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            selectedStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const AboutView()),
  ];

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.green.shade400,
      slidePercent: 50,
      initPositionSelected: 0,

    );
  }
}
