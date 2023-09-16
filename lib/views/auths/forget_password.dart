import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/auths/otp_view.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/less.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Forgot Password',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Don’t worry ! It happens. Please enter the \nphone number we will send the OTP in this\nphone number.',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackb,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Phone Number',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              CustomisedField(
                hintText: 'Enter your Phone Number',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: otpController,
              ),
              const SizedBox(
                height: 56,
              ),
              CustomisedButton('Continue', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const OtpView();
                    },
                  ),
                );
              }, buttonColor: AppColors.blue, textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
