import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class DriverWalletView extends StatefulWidget {
  const DriverWalletView({super.key});

  @override
  State<DriverWalletView> createState() => _DriverWalletViewState();
}

class _DriverWalletViewState extends State<DriverWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/frame.png',
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 23, top: 27, bottom: 19),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Align(
                            child: Text(
                              '₦200,000',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 61,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Reconciliation fee',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Text(
                            '₦10,000',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 320),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                CustomisedButton('Add Money', onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(22),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext builder) {
                      return Container(
                        height: 338,
                        width: 375,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 25.5, top: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Select Payment Method',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 8.55),
                                            Image.asset(
                                                'assets/images/wave.png',
                                                height: 19,
                                                width: 105.41),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 8.55),
                                            Image.asset(
                                                'assets/images/stack.png',
                                                height: 17,
                                                width: 96),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 4),
                                            Image.asset(
                                              'assets/images/stripe.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 4),
                                            Image.asset(
                                              'assets/images/stripe.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 42),
                              CustomisedButton('Next', onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(22),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext builder) {
                                    return Container(
                                      height: 338,
                                      width: 375,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, right: 25.5, top: 24),
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Add Money',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(
                                                    Icons.close_outlined,
                                                    size: 24,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 16),
                                            const CustomisedField(
                                              textInputType: TextInputType.text,
                                              textInputAction:
                                                  TextInputAction.next,
                                            ),
                                            const SizedBox(height: 64),
                                            CustomisedButton('Next',
                                                onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Column(
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/checks.png',
                                                            height: 58,
                                                            width: 58),
                                                        const SizedBox(
                                                            height: 33),
                                                        Text(
                                                          'Payment Successful',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColors
                                                                  .black,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 6),
                                                        Text(
                                                          'You have successfully added 10,000 your account',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: AppColors
                                                                  .ash2,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 38),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Go back',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      AppColors
                                                                          .ash,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              ' home',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  decorationColor:
                                                                      AppColors
                                                                          .ash,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      AppColors
                                                                          .blue,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                                buttonColor: AppColors.blue,
                                                textColor: AppColors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                                  buttonColor: AppColors.blue,
                                  textColor: AppColors.white),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }, buttonColor: AppColors.blue, textColor: AppColors.white),
                const SizedBox(height: 16),
                CustomisedButton('Reconcile Account',
                    borderColor: AppColors.blue, onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(22),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext builder) {
                      return Container(
                        height: 338,
                        width: 375,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 25.5, top: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Select Payment Method',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 8.55),
                                            Image.asset(
                                                'assets/images/wave.png',
                                                height: 19,
                                                width: 105.41),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 8.55),
                                            Image.asset(
                                                'assets/images/stack.png',
                                                height: 17,
                                                width: 96),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 4),
                                            Image.asset(
                                              'assets/images/stripe.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.lightgrey),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      height: 50,
                                      width: 156,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/circle.png',
                                                height: 18.05,
                                                width: 18.043),
                                            const SizedBox(width: 4),
                                            Image.asset(
                                              'assets/images/stripe.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 42),
                              CustomisedButton('Next', onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(22),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext builder) {
                                    return Container(
                                      height: 338,
                                      width: 375,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, right: 25.5, top: 24),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Pay from Wallet',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 16),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 48,
                                                  width: 360,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: AppColors
                                                            .lightgrey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Row(children: [
                                                    const Spacer(),
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color:
                                                                AppColors.blue),
                                                        height: 48,
                                                        width: 97,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(13),
                                                          child: Text(
                                                            'Pay max',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: AppColors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ))
                                                  ]),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 119),
                                            CustomisedButton('Next',
                                                onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Column(
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/checks.png',
                                                            height: 58,
                                                            width: 58),
                                                        const SizedBox(
                                                            height: 33),
                                                        Text(
                                                          'Payment Successful',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColors
                                                                  .black,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 6),
                                                        Text(
                                                          'You have successfully added 10,000 your account',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: AppColors
                                                                  .ash2,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 38),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Go back',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      AppColors
                                                                          .ash,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              ' home',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  decorationColor:
                                                                      AppColors
                                                                          .ash,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      AppColors
                                                                          .blue,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                                buttonColor: AppColors.blue,
                                                textColor: AppColors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                                  buttonColor: AppColors.blue,
                                  textColor: AppColors.white),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }, buttonColor: AppColors.white, textColor: AppColors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
