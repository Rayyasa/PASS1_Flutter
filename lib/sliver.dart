// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';

class sliver extends StatefulWidget {
  @override
  State<sliver> createState() => _sliverState();
}

class _sliverState extends State<sliver> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 1, top: 12),
              child: Container(
                width: 84,
                height: 33,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('ikea.png'),
                )),
              ),
            ),
            actions: <Widget>[
              if (_showSearchIcon)
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _showTextField = true;
                      _showSearchIcon = false;
                    });
                  },
                ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(
                  title: _showTextField
                      ? Container(
                          height: 36,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(fontSize: 12),
                                      hintText: 'Cari barang impianmu',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE7E7E7)),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 18,
                                      ),
                                    ),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  centerTitle: true,
                );
              },
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 23),
              child: Column(
                children: [
                  Container(
                    width: 470,
                    height: 280,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('banner.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _category('5.png', 'Kamar Tidur'),
                      _category('6.png', 'Ruang Kerja'),
                      _category('7.png', 'Dapur'),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _category('8.png', 'Kamar Tidur'),
                      _category('9.png', 'Ruang Kerja'),
                      _category('10.png', 'Dapur'),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Produk Terkini'), Text('Lihat semua')],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _category('8.png', 'Kamar Tidur'),
                        _category('9.png', 'Ruang Kerja'),
                        _category('10.png', 'Dapur'),
                        _category('10.png', 'Dapur'),
                        _category('10.png', 'Dapur'),
                        _category('10.png', 'Dapur'),
                        _category('10.png', 'Dapur'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }

  Column _category(String image, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 117,
          height: 80,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 6,
        ),
        Text(text)
      ],
    );
  }
}