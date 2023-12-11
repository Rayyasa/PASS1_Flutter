// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, unused_field, prefer_final_fields, unused_element, annotate_overrides, override_on_non_overriding_member

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/cartPage.dart';
import 'package:uas/components/appbar.dart';
import 'package:uas/components/btmNav.dart';
import 'package:uas/pages/home/components/body.dart';
import 'package:uas/utils/color.dart';
import 'package:uas/detailPage.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  bool _showTextField = true;
  bool _showSearchIcon = true;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final double currentScroll = _scrollController.position.pixels;
    if (currentScroll > 20 && _showTextField) {
      setState(() {
        _showTextField = false;
        _showSearchIcon = true;
      });
    } else if (currentScroll <= 20 && !_showTextField) {
      setState(() {
        _showTextField = true;
        _showSearchIcon = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(body: BodyBeranda(), bottomNavigationBar: BtmNav());
  }
}
