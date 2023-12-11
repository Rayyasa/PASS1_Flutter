// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, non_constant_identifier_names, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/pages/home/home.dart';
import 'package:uas/utils/color.dart';
import 'package:uas/wishlist/wishlist.dart';

class cartPage extends StatefulWidget {
  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  bool Click = true;
  int count = 0;
  int index_Laci = 1;
  int index_Lemari = 1;
  int hargaLemari = 1350000;
  int hargaLaci = 1499000;
  void _onClick() {
    setState(() {
      Click = !Click;
    });
  }

  void incrementLaci() {
    setState(() {
      index_Laci++;
    });
  }

  void decrementLaci() {
    setState(() {
      if (index_Laci > 0) {
        index_Laci--;
      }
    });
  }

  void incrementLemari() {
    setState(() {
      index_Lemari++;
    });
  }

  void decrementLemari() {
    setState(() {
      if (index_Lemari > 0) {
        index_Lemari--;
      }
    });
  }

  String formatCurrency(int price) {
    final format =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return format.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarCartPage(context),
      body: _BodyCartPage(),
    );
  }

  Column _BodyCartPage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                            color: primaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Gap(2),
                      Text(
                        'Barang',
                        style: TextStyle(
                            color: secondText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Hapus semua',
                        style: TextStyle(
                            color: primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              Gap(24),
              Container(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lemari.png'),
                        Gap(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ALEX',
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gap(6),
                            Text(
                              'Unit laci, abu-abu toska,\n36x70 cm',
                              style: TextStyle(
                                  color: secondText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Gap(12),
                            Text(
                              formatCurrency(hargaLemari * index_Lemari),
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gap(12),
                            Row(
                              children: [
                                Container(
                                    width: 72,
                                    height: 38,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 25),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: secondLine),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Icon(LucideIcons.trash2),
                                    )),
                                Gap(16),
                                Container(
                                  width: 183,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: secondLine)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            decrementLemari();
                                          },
                                          icon: Icon(
                                            LucideIcons.minus,
                                            size: 26,
                                            color: count == 0 ? line : primary,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        index_Lemari.toString(),
                                        style: TextStyle(
                                            color: primaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            incrementLemari();
                                          },
                                          icon: Icon(
                                            LucideIcons.plus,
                                            size: 26,
                                            color: primary,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(24),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('laci.png'),
                        Gap(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MACKAPÄR',
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gap(6),
                            Text(
                              'Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                              style: TextStyle(
                                  color: secondText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Gap(12),
                            Text(
                              formatCurrency(hargaLaci * index_Laci),
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gap(12),
                            Row(
                              children: [
                                Container(
                                    width: 72,
                                    height: 38,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 25),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: secondLine),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Icon(LucideIcons.trash2),
                                    )),
                                Gap(16),
                                Container(
                                  width: 183,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: secondLine)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              decrementLaci();
                                            },
                                            icon: Icon(
                                              LucideIcons.minus,
                                              size: 26,
                                              color:
                                                  count == 0 ? line : primary,
                                            )),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          index_Laci.toString(),
                                          style: TextStyle(
                                              color: primaryText,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              incrementLaci();
                                            },
                                            icon: Icon(
                                              LucideIcons.plus,
                                              size: 26,
                                              color: primary,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Gap(24),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 1, color: secondLine))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 28, left: 24, right: 24, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          color: secondText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Gap(6),
                    Text(
                      formatCurrency(
                          hargaLaci * index_Laci + hargaLemari * index_Lemari),
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  width: 255,
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                  decoration: BoxDecoration(
                    color: primary,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Beli',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  AppBar _AppBarCartPage(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => home()));
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 24), // adjust the horizontal padding as needed
            child: Icon(
              LucideIcons.arrowLeft,
              size: 26,
              color: primaryText,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 24, left: 16),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Keranjang',
                  style: TextStyle(
                      color: primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    LucideIcons.heart,
                    size: 26,
                    color: primaryText,
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
