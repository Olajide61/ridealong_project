import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/auths/login_view.dart';
import 'package:ridealong_project/views/auths/signup_view.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class CreateView extends StatefulWidget {
  const CreateView({super.key});

  @override
  State<CreateView> createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                'Name',
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
                hintText: 'Enter your name',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: nameController,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Email',
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
                controller: nameController,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Country',
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
                hintText: 'Enter your country',
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ImageIcon(
                    const AssetImage('assets/images/drop.png'),
                    color: AppColors.grey,
                    size: 20,
                  ),
                ),
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 78),
              CustomisedButton('Next', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              }, buttonColor: AppColors.blue, textColor: AppColors.white),
              const SizedBox(
                height: 43.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: AppColors.darkgrey,
                    height: 1,
                    width: 92.005,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Or Sign up with',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darky,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    color: AppColors.darkgrey,
                    height: 1,
                    width: 92.005,
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.darkb)),
                    height: 60,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/apple.png',
                          height: 20,
                          width: 23.449,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          'Apple',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.db,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.darkb)),
                    height: 60,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/g.png',
                          height: 20,
                          width: 35,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          'Google',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.db,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account?',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    },
                    child: Text(
                      'Log In',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue,
                        ),
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
