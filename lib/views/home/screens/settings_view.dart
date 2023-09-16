import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, top: 24),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.blackbb,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 108),
                Text(
                  'Settings',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39, left: 18, right: 18),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    height: 80,
                    width: 339,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                const AssetImage('assets/images/head.png'),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(280)),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: ImageIcon(
                                      const AssetImage(
                                          'assets/images/online.png'),
                                      color: AppColors.green,
                                      size: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Text(
                                'Larry Davis',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Text(
                                'Gold Member',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Text(
                        'Account',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Notifications',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Language',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'More',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Clear cache',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Terms & privacy',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Contact us',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackbb,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/great.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 142),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Log out',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.skygrey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
