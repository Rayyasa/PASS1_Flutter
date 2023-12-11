// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, override_on_non_overriding_member, prefer_final_fields, non_constant_identifier_names, annotate_overrides, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../cartPage.dart';
import '../../../utils/color.dart';

class BodyInspirasi extends StatefulWidget {
  const BodyInspirasi({super.key});

  @override
  State<BodyInspirasi> createState() => _BodyInspirasiState();
}

class _BodyInspirasiState extends State<BodyInspirasi> {
  int selectedIndex = -1;
  int _selectedIndex = 0;
  @override
  Widget _Button(
    int index,
    String title,
  ) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          height: 43,
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff0058AB)
                    : Color(0xffF2F2F7)),
            color: selectedIndex == index ? Color(0xff0058AB) : Colors.white,
          ),
          child: Center(
            child: Text(title,
                style: TextStyle(
                    color: selectedIndex == index ? Colors.white : primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
          ),
        ));
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Temukan Inspirasi',
                style: TextStyle(
                    color: primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          LucideIcons.bell,
                          size: 26,
                          color: Color(0xff292D32),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cartPage()));
                      },
                      child: Icon(
                        LucideIcons.shoppingCart,
                        size: 26,
                        color: primaryText,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          bottom: TabBar(
            labelColor: primaryText,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
            unselectedLabelColor: secondText,
            indicatorColor: primary,
            indicatorWeight: 3,
            padding: EdgeInsets.only(right: 132),
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            tabs: [
              Tab(
                child: Text(
                  'Inspirasi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Tab(
                child: Text(
                  'Koleksi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Tab(
                child: Text(
                  'Edukasi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Add your content for the "Inspirasi" tab
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _Button(1, 'Semua'),
                              SizedBox(
                                width: 10,
                              ),
                              _Button(2, 'Kemeja'),
                              SizedBox(
                                width: 10,
                              ),
                              _Button(3, 'Sepatu'),
                              SizedBox(
                                width: 10,
                              ),
                              _Button(4, 'Aksesoris'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 183,
                                height: 120,
                                child: Image.asset('assets/Rectangle 34.png'),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Hunian compact yang\nnyaman',
                                style: TextStyle(
                                    color: primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 183,
                                height: 120,
                                child: Image.asset('assets/Rectangle 33.png'),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Lakukan 5 hal ini agar\nsepatumu bebas ...',
                                style: TextStyle(
                                    color: primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            child: Image.asset('assets/Rectangle 40.png'),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Hadirkan nuasa elegant dan fancy kedalam\nkamar tidur anda',
                            style: TextStyle(
                                color: primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 183,
                                height: 120,
                                child: Image.asset('assets/Rectangle 42.png'),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Rumah lebih sehat\ndengan set tempat ...',
                                style: TextStyle(
                                    color: primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 183,
                                height: 120,
                                child: Image.asset('assets/Rectangle 41.png'),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Membuat kamar anak\nrapi jadi lebih mudah',
                                style: TextStyle(
                                    color: primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Add your content for the "Koleksi" tab
            Container(
              child: Text("Koleksi"),
            ),
            // Add your content for the "Edukasi" tab
            Container(
              child: Text("Edukasi"),
            ),
          ],
        ),
      ),
    );
  }
}
