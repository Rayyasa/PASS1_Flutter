// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uas/utils/color.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({super.key});

  @override
  State<BodyProfile> createState() => _profileState();
}

class _profileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, top: 74),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu Akun',
                    style: TextStyle(
                        color: primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Iconsax.setting_2,
                    color: primaryText,
                    size: 26,
                  )
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Rectangle 44.png'),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yasa',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryText),
                      ),
                      Text(
                        '160002359102020',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: secondText),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Iconsax.profile_circle,
                      color: primaryText,
                      size: 32,
                    ),
                    const Gap(16),
                    Text(
                      'Profil Saya',
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.package,
                      color: primaryText,
                      size: 32,
                    ),
                    const Gap(16),
                    Text(
                      'Pesanan',
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.star,
                      color: primaryText,
                      size: 32,
                    ),
                    const Gap(16),
                    Text(
                      'Ulasan',
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.gift,
                      color: primaryText,
                      size: 32,
                    ),
                    const Gap(16),
                    Text(
                      'Reward Saya',
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.helpCircle,
                      color: primaryText,
                      size: 32,
                    ),
                    const Gap(16),
                    Text(
                      'Bantuan',
                      style: TextStyle(
                          color: primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: secondLine, // Warna garis
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
