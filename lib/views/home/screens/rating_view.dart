import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  TextEditingController textController = TextEditingController();
  IconData? _selectedIcon;
  final bool _isVertical = false;
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
          'Rating',
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
        padding: const EdgeInsets.only(top: 81, left: 18, right: 18),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.ff1, spreadRadius: 5, blurRadius: 4)
                  ]),
              height: 481,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/images/head.png'),
                    ),
                    Text(
                      'Jane Doe',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'How is your trip?',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Your feedback will help improve\n driving experience',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: AppColors.ash2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    RatingBarIndicator(
                      rating: 4,
                      itemBuilder: (context, index) => Icon(
                        _selectedIcon ?? Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30,
                      unratedColor: Colors.amber.withAlpha(50),
                      direction: _isVertical ? Axis.vertical : Axis.horizontal,
                    ),
                    const SizedBox(height: 24),
                    CustomisedField(
                      borderColor: Colors.white,
                      maxLines: 8,
                      hintText: 'Additional comments...',
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: textController,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 44),
            CustomisedButton('Submit Review',
                onPressed: () {},
                buttonColor: AppColors.blue,
                textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
