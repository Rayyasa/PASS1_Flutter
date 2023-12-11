// ignore_for_file: override_on_non_overriding_member, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/cartPage.dart';
import 'package:uas/pages/home/profile/profile.dart';

import '../detailPage.dart';
import '../utils/color.dart';

class AppbarBeranda extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get PreferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class AppBarInspirasi extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get PreferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }

  @override
  Size get preferredSize => const Size.fromHeight(140);
}

class AppBarWishlist extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get PreferredSize => const Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}

class AppBarProfil extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get PreferredSize => const Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
