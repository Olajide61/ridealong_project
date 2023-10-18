import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';

class DriverHomeView extends StatefulWidget {
  const DriverHomeView({Key? key}) : super(key: key);

  @override
  State<DriverHomeView> createState() => _DriverHomeViewState();
}

class _DriverHomeViewState extends State<DriverHomeView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 11),
            child: Container(
              height: 36,
              width: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.white),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/h.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/be.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                height: 304,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/head.png'),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Mike',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Image(
                                    height: 12,
                                    width: 12,
                                    image: AssetImage('assets/images/clo.png'),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '15 Min',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.ash2,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 11),
                                  const Image(
                                    height: 12,
                                    width: 12,
                                    image: AssetImage(
                                      'assets/images/star.png',
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  Text(
                                    '4.0',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.ash2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/images/cal.png',
                            height: 36,
                            width: 36,
                          )
                        ],
                      ),
                      const Divider(),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, top: 24, right: 18),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Ovalred.png',
                              height: 24.083,
                              width: 18.519,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Lafia Federal Poly.......',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '9:40 PM',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Row(
                          children: [
                            Image.asset('assets/images/line.png',
                                width: 1, height: 37.013)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/point.png',
                              height: 21,
                              width: 21,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Coustomary court',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '9:45 PM',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18, top: 20, right: 18, bottom: 48),
                        child: CustomisedButton('Start Pickup', onPressed: () {
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(22),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext builder) {
                              return Container(
                                width: 375,
                                height: 304,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, top: 12, right: 18),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/head.png'),
                                          ),
                                          const SizedBox(width: 16),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Larry wants to join you',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            'assets/images/cal.png',
                                            height: 36,
                                            width: 36,
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18, top: 24, right: 18),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/Ovalred.png',
                                              height: 24.083,
                                              width: 18.519,
                                            ),
                                            const SizedBox(width: 12),
                                            Text(
                                              'Lafia Federal Poly.......',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '9:40 PM',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 27),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/line.png',
                                                width: 1,
                                                height: 37.013)
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18, right: 18),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/point.png',
                                              height: 21,
                                              width: 21,
                                            ),
                                            const SizedBox(width: 12),
                                            Text(
                                              'Coustomary court',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '9:45 PM',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 26),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          AppColors.lightgrey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 52,
                                              width: 160,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(14),
                                                child: Text(
                                                  'Cancel',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          AppColors.lightgrey,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                        top:
                                                            Radius.circular(22),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext builder) {
                                                      return Container(
                                                        width: 375,
                                                        height: 304,
                                                        decoration:
                                                            const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    24),
                                                            topRight:
                                                                Radius.circular(
                                                                    24),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 18,
                                                                  top: 12,
                                                                  right: 18),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  const CircleAvatar(
                                                                    backgroundImage:
                                                                        AssetImage(
                                                                            'assets/images/head.png'),
                                                                  ),
                                                                  const SizedBox(
                                                                      width:
                                                                          16),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Larry wants to join you',
                                                                        style: GoogleFonts
                                                                            .poppins(
                                                                          textStyle:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color:
                                                                                AppColors.black,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Spacer(),
                                                                  Image.asset(
                                                                    'assets/images/cal.png',
                                                                    height: 36,
                                                                    width: 36,
                                                                  )
                                                                ],
                                                              ),
                                                              const Divider(),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            18,
                                                                        top: 24,
                                                                        right:
                                                                            18),
                                                                child: Row(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/Ovalred.png',
                                                                      height:
                                                                          24.083,
                                                                      width:
                                                                          18.519,
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            12),
                                                                    Text(
                                                                      'Lafia Federal Poly.......',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const Spacer(),
                                                                    Text(
                                                                      '9:40 PM',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            27),
                                                                child: Row(
                                                                  children: [
                                                                    Image.asset(
                                                                        'assets/images/line.png',
                                                                        width:
                                                                            1,
                                                                        height:
                                                                            37.013)
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            18,
                                                                        right:
                                                                            18),
                                                                child: Row(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/point.png',
                                                                      height:
                                                                          21,
                                                                      width: 21,
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            12),
                                                                    Text(
                                                                      'Coustomary court',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const Spacer(),
                                                                    Text(
                                                                      '9:45 PM',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              CustomisedButton(
                                                                  'End trip',
                                                                  onPressed:
                                                                      () {},
                                                                  buttonColor:
                                                                      AppColors
                                                                          .blue,
                                                                  textColor:
                                                                      AppColors
                                                                          .white),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 52,
                                                width: 160,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(14),
                                                  child: Text(
                                                    'Accept',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: AppColors.white,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                            buttonColor: AppColors.blue,
                            textColor: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
