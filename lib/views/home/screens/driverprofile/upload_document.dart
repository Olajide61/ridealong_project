import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/home/screens/driverprofile/car_details.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';

class UploadDocumentView extends StatefulWidget {
  const UploadDocumentView({super.key});

  @override
  State<UploadDocumentView> createState() => _UploadDocumentViewState();
}

class _UploadDocumentViewState extends State<UploadDocumentView> {
  File? image;
  String? imageUrl;
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
          'My Document',
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
        padding: const EdgeInsets.only(left: 25, right: 25, top: 46),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 74,
                    width: 325,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 14, right: 10.05),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Driving license',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              Text(
                                'A Driving license is an official document',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Column(
                                        children: [
                                          Text(
                                            'Select upload option',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          InkWell(
                                            onTap: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles(
                                                          type: FileType.image);
                                              if (result != null) {
                                                image = File(
                                                    result.files.single.path!);
                                                setState(() {});
                                              } else {}
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/camera.png',
                                                    height: 18),
                                                const SizedBox(width: 13),
                                                Text(
                                                  'Take a photo',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 24),
                                          InkWell(
                                            onTap: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles(
                                                          type: FileType.image);
                                              if (result != null) {
                                                image = File(
                                                    result.files.single.path!);
                                                setState(() {});
                                              } else {}
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/camera.png',
                                                    height: 18),
                                                const SizedBox(width: 13),
                                                Text(
                                                  'Choose from gallery',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: image == null
                                  ? Image.asset('assets/images/save2.png',
                                      height: 40, width: 40)
                                  : Icon(
                                      Icons.check,
                                      size: 24,
                                      color: AppColors.green,
                                    )),
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
                    height: 74,
                    width: 325,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 14, right: 10.05),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Passport',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              Text(
                                'A passport is a Document',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Column(
                                        children: [
                                          Text(
                                            'Select upload option',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          InkWell(
                                            onTap: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles(
                                                          type: FileType.image);
                                              if (result != null) {
                                                image = File(
                                                    result.files.single.path!);
                                                setState(() {});
                                              } else {}
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/camera.png',
                                                    width: 22.869,
                                                    height: 18),
                                                const SizedBox(width: 13),
                                                Text(
                                                  'Take a photo',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 24),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/camera.png',
                                                  width: 22.869,
                                                  height: 18),
                                              const SizedBox(width: 13),
                                              Text(
                                                'Choose from gallery',
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
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: image == null
                                  ? Image.asset('assets/images/save.png',
                                      height: 40, width: 40)
                                  : Icon(
                                      Icons.check,
                                      size: 24,
                                      color: AppColors.green,
                                    )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 300),
            CustomisedButton('Submit', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CarDeatilsView();
              }));
            }, buttonColor: AppColors.blue, textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
