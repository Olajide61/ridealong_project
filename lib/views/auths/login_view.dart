import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/auths/create_view.dart';
import 'package:ridealong_project/views/auths/forget_password.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
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
                    'Log In',
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
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: emailController,
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
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgetPasswordView();
                  }));
                },
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              CustomisedButton('Login',
                  onPressed: () {},
                  buttonColor: AppColors.blue,
                  textColor: AppColors.white),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightblack,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CreateView();
                      }));
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
