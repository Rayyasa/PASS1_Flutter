// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, unused_element, unused_import, avoid_unnecessary_containers, unused_local_variable, prefer_const_constructors_in_immutables, override_on_non_overriding_member, annotate_overrides, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/cartPage.dart';
import 'package:uas/model/wishlist.model.dart';
import 'package:uas/utils/color.dart';
import 'package:uas/pages/home/home.dart';
import 'package:provider/provider.dart';

import 'components/notification.dart';

class detailPage extends StatefulWidget {
  final String img;
  final String text;
  final String subtext;
  final int harga;

  detailPage({
    required this.img,
    required this.text,
    required this.subtext,
    required this.harga,
  });
  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool Click = true;
  int count = 0;
  void _onClick() {
    setState(() {
      Click = !Click;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  bool isWish = false;
  Widget build(BuildContext context) {
    final img = widget.img;
    final text = widget.text;
    final subtext = widget.subtext;
    final harga = widget.harga;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors
            .white, // set the background color as needed,// set the elevation as needed,
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
          padding: EdgeInsets.only(
              left: 16), // adjust the horizontal padding as needed
          child: Text(
            text,
            style: TextStyle(
              color: primaryText,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: GestureDetector(
              onTap: () {},
              child: Icon(LucideIcons.search, color: primaryText),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: GestureDetector(
              onTap: () {},
              child: Icon(LucideIcons.share2, color: primaryText),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24), // adj
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cartPage()));
              },
              child: Icon(LucideIcons.shoppingCart, color: primaryText),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              children: [
                Container(
                  width: 382,
                  height: 382,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                _ImgSlider(),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: LikeButton(
                          size: 40,
                          circleColor: CircleColor(
                              start: Colors.red, end: Colors.redAccent),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Colors.red,
                            dotSecondaryColor: Colors.redAccent,
                          ),
                          likeBuilder: (bool isLiked) {
                            return AnimatedSwitcher(
                              duration: Duration(milliseconds: 500),
                              child: isWish
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 32,
                                      key: ValueKey<bool>(isLiked),
                                    )
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.grey,
                                      size: 32,
                                      key: ValueKey<bool>(isLiked),
                                    ),
                            );
                          },
                        ))
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    subtext,
                    style: TextStyle(
                        color: secondText,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    NumberFormat.currency(
                            locale: 'id_ID', symbol: 'Rp.', decimalDigits: 0)
                        .format(harga)
                        .toString(),
                    style: TextStyle(
                        color: primaryText,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.star1,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '4.5 | Terjual 116',
                      style: TextStyle(
                          color: secondText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',
                  style: TextStyle(color: primaryText, fontSize: 16),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: secondLine))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 30, right: 30, bottom: 24),
          child: Row(
            children: [
              Container(
                width: 145,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: secondLine)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          decrement();
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
                      '$count',
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
                          increment();
                        },
                        icon: Icon(
                          LucideIcons.plus,
                          size: 26,
                          color: primary,
                        ))
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
              Container(
                width: 255,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                decoration: BoxDecoration(
                  color: primary,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Tambah Keranjang',
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
      ),
    );
  }

  SingleChildScrollView _ImgSlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 24.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 25.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 26.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 27.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 28.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 24.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 25.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 26.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 27.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: Image.asset('assets/Rectangle 28.png'),
            ),
          ),
        ],
      ),
    );
  }
}
