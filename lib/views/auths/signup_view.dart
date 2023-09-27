import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/auths/phoneverify_view.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hideText = true;
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
                    'Sign Up',
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
                'Mobile Number',
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
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 50,
                    height: 50,
                    child: const Center(child: Text('+234')),
                  ),
                  const VerticalDivider(
                    color: Colors.red,
                  ),
                  Expanded(
                    child: CustomisedField(
                      hintText: 'Enter your name',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: phonenumberController,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Password',
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
                hintText: 'Enter your email',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: passwordController,
                obscureText: hideText,
                suffixIcon: IconButton(
                  color: AppColors.grey,
                  onPressed: () {
                    hideText = !hideText;
                    setState(() {});
                  },
                  icon:
                      Icon(hideText ? Icons.visibility_off : Icons.visibility),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              CustomisedButton('Sign Up', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhoneVerifyView();
                }));
              }, buttonColor: AppColors.blue, textColor: AppColors.white),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By clicking on sign up, you agree to \nour terms of service',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightblack,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
