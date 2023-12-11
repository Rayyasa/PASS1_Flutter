// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names, override_on_non_overriding_member, unused_field, unused_import, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/components/appbar.dart';
import 'package:uas/pages/home/components/body.dart';
import 'package:uas/pages/home/home.dart';
import 'package:uas/pages/inspirasi/components/body.dart';
import 'package:uas/pages/home/profile/profile.dart';
import 'package:uas/utils/color.dart';
import 'package:uas/wishlist/wishlist.dart';

class BtmNav extends StatefulWidget {
  const BtmNav({super.key});

  @override
  State<BtmNav> createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  int _selectedIndex = 0; // Indeks item yang dipilih
  static List<Color> itemColors = [
    Color(0xff0058AB),
    Color(0xff1b1b1b),
    Color(0xff1b1b1b),
    Color(0xff1b1b1b)
  ];
  PageController _pageController = PageController(initialPage: 0);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  PreferredSizeWidget buildAppBar(BuildContext context, int index) {
    switch (index) {
      case 0:
        return AppbarBeranda();
      case 1:
        return AppBarInspirasi();
      case 2:
        return AppBarWishlist();
      case 3:
        return AppBarProfil();
      default:
        return AppbarBeranda();
    }
  }

  @override
  bool showSearchIcon = true;

  Widget build(BuildContext context) {
    final double appBarHeight =
        AppBar().preferredSize.height + MediaQuery.of(context).padding.top;
    final bool isAppBarCollapsed =
        (appBarHeight - AppBar().preferredSize.height) > 0;

    if (isAppBarCollapsed) {
      showSearchIcon = false;
    }
    return Scaffold(
      appBar: buildAppBar(context, _selectedIndex),
      body: PageView(
        controller: _pageController,
        children: [
          BodyBeranda(),
          // Halaman 4: Profil
          BodyInspirasi(),
          BodyWishlist(),
          // Halaman 4: Profil
          BodyProfile(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme:
            IconThemeData(color: Color(0xff1B1B1B).withOpacity(0.8)),
        unselectedLabelStyle: TextStyle(color: secondText),
        currentIndex: _selectedIndex,
        selectedItemColor: primary,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.home,
              size: 26,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.coffee, size: 26),
            label: 'Inspirasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.heart, size: 26),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.userCircle, size: 26),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}


// class BtmNav extends StatefulWidget {
//   const BtmNav({super.key});

//   @override
//   State<BtmNav> createState() => _BtmNavState();
// }

// class _BtmNavState extends State<BtmNav> {
//   @override
//   int _selectedIndex = 0;
//   List<Color> itemColors = [
//     Color(0xff0058AB),
//     Colors.black87,
//     Colors.black87,
//     Colors.black87
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       for (int i = 0; i < itemColors.length; i++) {
//         itemColors[i] = i == index ? Color(0xff0058AB) : Colors.black87;
//       }
//       if (index == 1) {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => inspirasi()));
//       } else {
//         // Handle other navigation options
//       }
//     });
//   }

//   final List<Widget> _pages = [
//     home(),
//     inspirasi(),
//   ];
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showUnselectedLabels: true,
//       currentIndex: _selectedIndex,
//       selectedItemColor: itemColors[_selectedIndex],
//       type: BottomNavigationBarType.fixed,
//       onTap: _onItemTapped,
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(LucideIcons.home),
//           label: 'Beranda',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(LucideIcons.coffee),
//           label: 'Inspirasi',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(LucideIcons.heart),
//           label: 'Wishlist',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(LucideIcons.userCircle2),
//           label: 'Profil',
//         ),
//       ],
//       unselectedItemColor: Colors.black87,
//     );
//   }
// }
