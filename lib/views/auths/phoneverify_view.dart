import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/home/screens/home.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class PhoneVerifyView extends StatefulWidget {
  const PhoneVerifyView({super.key});

  @override
  State<PhoneVerifyView> createState() => _PhoneVerifyViewState();
}

class _PhoneVerifyViewState extends State<PhoneVerifyView> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    'Verify your Number',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Enter OTP',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              CustomisedField(
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: otpController,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                'Resend code? 28s',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 114,
              ),
              CustomisedButton('Verify', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              }, buttonColor: AppColors.blue, textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
