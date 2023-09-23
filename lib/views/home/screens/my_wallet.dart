import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';

class MyWalletView extends StatefulWidget {
  const MyWalletView({super.key});

  @override
  State<MyWalletView> createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'My Wallet',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 28,
                  width: 62,
                  decoration: BoxDecoration(
                      color: AppColors.wc,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/coin.png',
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '2500',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackbb,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 187,
                        width: 339,
                        decoration: BoxDecoration(color: AppColors.liggreen),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28, top: 27),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/dol.png',
                                  height: 50, width: 50),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cash',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/vector.png',
                                    height: 0,
                                    width: 211,
                                  ),
                                  Text(
                                    'Default Payment Meth',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 32),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Balance',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '2500',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.blue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 120),
                                      Column(
                                        children: [
                                          Text(
                                            'Expires',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            '09/21',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 58),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 187,
                        width: 339,
                        decoration: BoxDecoration(color: AppColors.grey1),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 28, top: 27, right: 14),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Payment Methods',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/g1.png',
                                    height: 24,
                                    width: 24,
                                  )
                                ],
                              ),
                              const Divider(),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  Text(
                                    'Coupon',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/g1.png',
                                    height: 24,
                                    width: 24,
                                  )
                                ],
                              ),
                              const Divider(),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  Text(
                                    'Integrate mail',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/g1.png',
                                    height: 24,
                                    width: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                CustomisedButton('Add Money',
                    onPressed: () {},
                    buttonColor: AppColors.blue,
                    textColor: AppColors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
