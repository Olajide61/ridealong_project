import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/home/screens/farebreak_view.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
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
          'Payment',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 18, top: 31, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 188,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.ff1, spreadRadius: 5, blurRadius: 4),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 22, left: 23, right: 23),
                child: Column(
                  children: [
                    Text(
                      'Bank Accounts & cards',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset('assets/images/logof.png',
                            height: 46, width: 46),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fidelity Bank ....6604',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Primary account',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.tgrey1,
                                ),
                              ),
                            ),
                            Text(
                              'Delete account',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          color: AppColors.ff,
                          height: 46,
                          width: 46,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/plus.png',
                                  height: 16, width: 16)
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Add Bank Account',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.tgrey1,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Text(
                  'Select payment',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'see all',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: AppColors.ash1, blurRadius: 5),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24, right: 17, left: 17),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.ash1,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      height: 58,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14, top: 17.33, right: 16.83, bottom: 17.17),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/visa.png',
                              height: 23.333,
                            ),
                            const SizedBox(width: 13),
                            Text(
                              'Cash on delivery',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/g1.png',
                              height: 24,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.ash1,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      height: 58,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14, top: 17.33, right: 16.83, bottom: 17.17),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/paypal.png',
                              height: 30,
                            ),
                            const SizedBox(width: 13),
                            Text(
                              'Credit Card',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/g1.png',
                              height: 24,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.ash1,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      height: 58,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14, top: 17.33, right: 16.83, bottom: 17.17),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/v.png',
                              width: 30,
                              height: 23.333,
                            ),
                            const SizedBox(width: 13),
                            Text(
                              'Mobile money',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/g1.png',
                              height: 24,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomisedButton('Fare Breakdown', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FareBreakView();
                  },
                ),
              );
            }, buttonColor: AppColors.blue, textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
