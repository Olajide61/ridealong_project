import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:pinput/pinput.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter verification code',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackbb,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A code has been sent to',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackbb,
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '+2348025573897',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackbb,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Pinput(
                obscureText: true,
                defaultPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                    width: 68,
                    height: 68),
                onSubmitted: (value) {
                  setState(
                    () {},
                  );
                },
                length: 4,
                keyboardType: TextInputType.number,
                controller: pinController,
                textInputAction: TextInputAction.next,
                showCursor: true,
                onCompleted: null,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t receive a code?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackbb,
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Resend',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
