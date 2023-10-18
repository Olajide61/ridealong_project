import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/home/screens/driverprofile/route_view.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class CarDeatilsView extends StatefulWidget {
  const CarDeatilsView({super.key});

  @override
  State<CarDeatilsView> createState() => _CarDeatilsViewState();
}

class _CarDeatilsViewState extends State<CarDeatilsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
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
          'Car details',
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
        backgroundColor: AppColors.grey1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'Car model',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const CustomisedField(
              hintText: 'Enter your car Model',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Car make',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const CustomisedField(
              hintText: 'Enter your car make',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Plate number',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const CustomisedField(
              hintText: 'Enter your plate number',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Capacity',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const CustomisedField(
              hintText: 'Enter your car capacity',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Description',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
            const CustomisedField(
              maxLines: 5,
              hintText: 'Write a short description',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 108),
            CustomisedButton('Submit', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RouteView();
              }));
            }, buttonColor: AppColors.blue, textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
