
import 'package:flutter/material.dart';
import 'package:shop/homepage/Home.dart';
import 'package:shop/chat/chat.dart';
import 'package:shop/history/history.dart';
import 'package:shop/profile/profile.dart';
import 'package:shop/setting/setting.dart';
import 'package:shop/theme/color.dart';
import 'package:store_redirect/store_redirect.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    HomePage(),
    SettingPage(),
    ProfilePage(),
   // HistoryPage(),
    ChatPage()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home, color: Colors.grey),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings, color: Colors.grey),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person, color: Colors.grey),
              label: 'Profile',
            ),
            // BottomNavigationBarItem(
            //   icon:
            //   const Icon(Icons.history_edu_rounded, color: Colors.grey),
            //   label: 'Histroy',
            // ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  StoreRedirect.redirect(
                    androidAppId: "com.facebook.orca",
                    iOSAppId: "454638411",
                  );
                },
                child: ImageIcon(
                  AssetImage('assets/images/chat (1).png'),
                  size: 25,
                  color: Colors.grey,
                ),
              ),
              label: 'chat',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: background,
          unselectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          iconSize: 30,
          onTap: _onItemTapped,
          // fixedColor: Colors.lightGreen,
          elevation: 10),
    );
  }
}
