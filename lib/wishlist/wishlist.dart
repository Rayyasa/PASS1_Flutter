// // ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, annotate_overrides, sized_box_for_whitespace, non_constant_identifier_names

// class BodyWishlist extends StatefulWidget {
//   const BodyWishlist({super.key});

//   @override
//   State<BodyWishlist> createState() => _bodyWishlistState();
// }

// class _bodyWishlistState extends State<BodyWishlist> {
//   List<Product> _itemsWish = [];
//   List<Product> display = [];

//   @override
//   void initState() {
//     super.initState();
//     _itemsWish = Provider.of<Wishlistmodel>(context, listen: false).items;
//     display = List.of(_itemsWish);
//   }

//   bool resultsFounds = true;

//   void UpdateListproduct(String value) {
//     setState(() {
//       display = _itemsWish
//           .where((element) =>
//               element.text.toLowerCase().contains(value.toLowerCase()))
//           .toList();
//       resultsFounds = display.isNotEmpty;
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         toolbarHeight: 140,
//         elevation: 2,
//         title: Padding(
//           padding: const EdgeInsets.only(left: 24, right: 24),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Wishlist',
//                     style: TextStyle(
//                         color: primaryText,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => cartPage()));
//                     },
//                     child: Icon(
//                       LucideIcons.shoppingCart,
//                       size: 26,
//                       color: primaryText,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 24,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: secondLine, width: 1),
//                 ),
//                 width: MediaQuery.of(context).size.width,
//                 child: TextField(
//                   onChanged: (value) {
//                     UpdateListproduct(value);
//                   },
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(
//                         LucideIcons.search,
//                         color: primaryText,
//                       ),
//                       hintText: 'Cari barang diwishlist',
//                       hintStyle: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                           color: secondText),
//                       border: InputBorder.none,
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 12, vertical: 15)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               right: 24,
//               left: 24,
//               top: 24,
//             ),
//             child: Column(
//               children: [
//                 Consumer<Wishlistmodel>(
//                   builder: (context, value, child) {
//                     return Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               value.items.length.toString(),
//                               style: TextStyle(
//                                   color: primaryText,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                             Gap(2),
//                             Text(
//                               'Barang',
//                               style: TextStyle(
//                                   color: secondText,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ],
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Icon(
//                             LucideIcons.list,
//                             size: 26,
//                           ),
//                         )
//                       ],
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Container(
//                   height: 600,
//                   child: ListView.builder(
//                     itemCount: _itemsWish.length,
//                     itemBuilder: (context, index) {
//                       Product item = _itemsWish[index];

//                       return Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset(item.img, width: 99, height: 99),
//                           Gap(12),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 item.text,
//                                 style: TextStyle(
//                                     color: primaryText,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600),
//                               ),
//                               Gap(6),
//                               Text(
//                                 item.subtext,
//                                 style: TextStyle(
//                                     color: secondText,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w400),
//                               ),
//                               Gap(12),
//                               Text(
//                                 NumberFormat.currency(
//                                         locale: 'id_ID',
//                                         symbol: 'Rp.',
//                                         decimalDigits: 0)
//                                     .format(item.harga)
//                                     .toString(),
//                                 style: TextStyle(
//                                     color: primaryText,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600),
//                               ),
//                               Gap(12),
//                               Container(
//                                 width: 300,
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: 18, horizontal: 35),
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: primary),
//                                 ),
//                                 child: GestureDetector(
//                                   onTap: () {},
//                                   child: Text(
//                                     'Tambah Keranjang',
//                                     style: TextStyle(
//                                         color: primary,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w500),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ),
//                               Gap(24),
//                             ],
//                           ),
//                           Icon(LucideIcons.moreVertical)
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:provider/provider.dart';
import 'package:uas/cartPage.dart';
import 'package:uas/model/wishlist.model.dart';
import 'package:uas/utils/color.dart';

class BodyWishlist extends StatefulWidget {
  const BodyWishlist({super.key});

  @override
  State<BodyWishlist> createState() => _WishlistState();
}

class _WishlistState extends State<BodyWishlist> {
  static List<product> list_product = [
    product(
        img: 'assets/lemari.png',
        text: 'ALEX',
        subtext: 'Unit laci, abu-abu toska,\n36x70',
        harga: 1350000),
    product(
        img: 'assets/kursi.png',
        text: 'MILLBERGET',
        subtext: 'Kursi putar, murum hitam',
        harga: 1799000),
    product(
        img: 'assets/tidur.png',
        text: 'SONGESAND',
        subtext: 'Rngk tmpt tdr dg 2 ktk penyimpanan,\ncokelat, 160x200 cm',
        harga: 3499000),
    product(
        img: 'assets/lampi.png',
        text: 'HEKTAR',
        subtext: 'Lampu lantai, abu-abu tua',
        harga: 1299000),
  ];

  List<product> display_product = List.of(list_product);
  bool resultFound = true;

  void updateListProduct(String value) {
    setState(() {
      display_product = list_product
          .where((element) =>
              element.text.toLowerCase().contains(value.toLowerCase()))
          .toList();
      resultFound = display_product.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 140,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Wishlist',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Gap(26),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black,
                          size: 26,
                        ),
                        Gap(10),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                TextField(
                  onChanged: (value) => updateListProduct(value),
                  decoration: InputDecoration(
                    hintText: 'Cari barang diwishlist',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4 Barang',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.list_outlined),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                  child: resultFound
                      ? ListView.builder(
                          itemCount: display_product.length,
                          itemBuilder: (context, index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  display_product[index].img,
                                  height: 99,
                                ),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      display_product[index].text,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      display_product[index].subtext,
                                      style: TextStyle(
                                          color: Color(0xff6C6C6C),
                                          fontSize: 14),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id_ID',
                                              symbol: 'Rp.',
                                              decimalDigits: 0)
                                          .format(display_product[index].harga)
                                          .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      height: 38,
                                      width: 265,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xff0058AB)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Tambah Ke Keranjang',
                                          style: TextStyle(
                                              color: Color(0xff0058AB),
                                              fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Gap(24),
                                  ],
                                ),
                                SizedBox(width: 50),
                                Icon(Icons.more_vert_outlined)
                              ],
                            );
                          },
                        )
                      : Center(
                          child: Text('Produk Tidak ditemukan'),
                        ))
            ],
          ),
        ));
  }
}
