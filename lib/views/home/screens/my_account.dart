import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';

class MyAccountView extends StatefulWidget {
  const MyAccountView({super.key});

  @override
  State<MyAccountView> createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {
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
                const SizedBox(
                  width: 93,
                ),
                Text(
                  'My Account',
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
              padding: const EdgeInsets.only(left: 24, top: 72, right: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Level',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 139),
                      Text(
                        'Gold Member',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 149),
                      Text(
                        'Lary Davies',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 63),
                      Text(
                        'larydavies@gmail.com',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 168),
                      Text(
                        'Female',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Birthday',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 133),
                      Text(
                        '07/02/1999',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone number',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      Text(
                        '+234 8169192646',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
