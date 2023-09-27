import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridealong_project/views/home/screens/history_view.dart';
import 'package:ridealong_project/views/home/screens/invite_view.dart';
import 'package:ridealong_project/views/home/screens/driverprofile/my_account.dart';
import 'package:ridealong_project/views/home/screens/my_document.dart';
import 'package:ridealong_project/views/home/screens/my_wallet.dart';
import 'package:ridealong_project/views/home/screens/notification_view.dart';
import 'package:ridealong_project/views/home/screens/payment_view.dart';
import 'package:ridealong_project/views/home/screens/rating_view.dart';
import 'package:ridealong_project/views/home/screens/settings_view.dart';
import 'package:ridealong_project/views/widgets/customised_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridealong_project/views/widgets/color.dart';
import 'package:ridealong_project/views/widgets/customised_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  final List<String> images = [
    'assets/images/head.png',
    'assets/images/head.png',
    'assets/images/head.png',
  ];

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: ((context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage:
                          const AssetImage('assets/images/head.png'),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(280)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ImageIcon(
                                const AssetImage('assets/images/online.png'),
                                color: AppColors.green,
                                size: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Janet Jackson',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackbb,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'janet@ridealong.com',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ligrey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Edit profile',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkblue,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/home.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const MyWalletView();
                          },
                        ),
                      );
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/account.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        _isDriver
                            ? Text(
                                'My Wallet',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.dudu,
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const MyAccountView();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  'My Account',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.dudu,
                                    ),
                                  ),
                                ),
                              ),
                        const SizedBox(width: 5),
                        CupertinoSwitch(
                          activeColor: AppColors.blue,
                          value: _isDriver,
                          onChanged: (value) {
                            setState(() {
                              _isDriver = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HistoryView();
                          },
                        ),
                      );
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/his.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'History',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const NotificationView();
                          },
                        ),
                      );
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/not.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Notifications',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const InviteView();
                      }));
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/invite.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Invite Friends',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SettingsView();
                          },
                        ),
                      );
                    },
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/settings.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Settings',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/log.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Logout',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.dudu,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 150, left: 18, right: 18),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const MyDocument();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              height: 55,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Become a driver',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              mapType: MapType.hybrid,
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
              height: 251,
              width: 374,
              child: Padding(
                padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
                child: Column(
                  children: [
                    CustomisedButton('Request a Ride', onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24))),
                          context: context,
                          builder: (BuildContext build) {
                            return Container(
                              height: 350,
                              width: 251,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/images/loc.png',
                                            height: 15, width: 15),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.tgrey,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      top: Radius.circular(24),
                                                    ),
                                                  ),
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      height: 500,
                                                      width: 375,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 23,
                                                                right: 25.5,
                                                                top: 24),
                                                        child: ListView(
                                                          shrinkWrap: true,
                                                          physics:
                                                              const ClampingScrollPhysics(),
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Image.asset(
                                                                    'assets/images/point.png',
                                                                    height: 20,
                                                                    width: 20),
                                                                const SizedBox(
                                                                    width: 16),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Benue State University',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Makurdi, Gboko Road, Makurdi, Nigeria',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                const Spacer(),
                                                                InkWell(
                                                                  onTap: () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/cancel2.png',
                                                                    height: 16,
                                                                    width: 16,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Image.asset(
                                                                    'assets/images/location.png',
                                                                    height: 20,
                                                                    width: 20),
                                                                const SizedBox(
                                                                    width: 16),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Federal Polytechnic Lafia',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Lafia, Nasarawa State, Nigeria ',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 24,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  'Select Ride',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: AppColors
                                                                          .dudu,
                                                                    ),
                                                                  ),
                                                                ),
                                                                const Spacer(),
                                                                Text(
                                                                  'see all',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: AppColors
                                                                          .dudu,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 24),
                                                            Row(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/bcar.png',
                                                                  height: 19,
                                                                  width: 34.481,
                                                                ),
                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Standard Car',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '2-4 People',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const Spacer(),
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                      '₦4,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '₦5,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          decoration:
                                                                              TextDecoration.lineThrough,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            const Divider(),
                                                            const SizedBox(
                                                                height: 8),
                                                            Row(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/blcar.png',
                                                                  height: 19,
                                                                  width: 34.481,
                                                                ),
                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Big Car',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '4-6 People',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const Spacer(),
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                      '₦5,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '₦7,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          decoration:
                                                                              TextDecoration.lineThrough,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            const Divider(),
                                                            const SizedBox(
                                                                height: 8),
                                                            Row(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/blcar.png',
                                                                  height: 19,
                                                                  width: 34.481,
                                                                ),
                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Big Car',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '4-6 People',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const Spacer(),
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                      '₦5,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.dudu,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '₦7,000',
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          decoration:
                                                                              TextDecoration.lineThrough,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              AppColors.ash,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            const Divider(),
                                                            const SizedBox(
                                                                height: 8),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  'Enter number of seats',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: AppColors
                                                                          .dudu,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            CustomisedField(
                                                              enabled: false,
                                                              suffixIcon:
                                                                  Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        15),
                                                                child:
                                                                    ImageIcon(
                                                                  const AssetImage(
                                                                      'assets/images/drop.png'),
                                                                  color:
                                                                      AppColors
                                                                          .black,
                                                                ),
                                                              ),
                                                              hintText:
                                                                  'Location',
                                                              textInputType:
                                                                  TextInputType
                                                                      .text,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .next,
                                                            ),
                                                            const SizedBox(
                                                                height: 21),
                                                            CustomisedButton(
                                                                'Book Now',
                                                                onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) {
                                                                    return const PaymentView();
                                                                  },
                                                                ),
                                                              );
                                                            },
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
                                                  },
                                                );
                                              },
                                              child: Image.asset(
                                                  'assets/images/search.png',
                                                  height: 24,
                                                  width: 24),
                                            ),
                                            const SizedBox(width: 16),
                                            Text(
                                              'Where are you going to?',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grey,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/clock.png',
                                              height: 24, width: 24),
                                          Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Union Bank of Nigeria',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.dudu,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Gwarimpa Estate, 3rd Avenue',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/plane.png',
                                              height: 24, width: 24),
                                          Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'New International Terminal Abuja',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.dudu,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Abuja Municipal Area Council (AMAC)',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.grey,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              ),
                            );
                          });
                    }, buttonColor: AppColors.blue, textColor: AppColors.white),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomisedButton('Schedule for later',
                        borderColor: AppColors.blue, onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 812,
                            width: 375,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18, top: 15.8, right: 18),
                              child: ListView(
                                children: [
                                  Text(
                                    'Your driver is coming in 2:10',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
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
                                            'Mike Pius',
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
                                                height: 11,
                                                width: 7.761,
                                                image: AssetImage(
                                                    'assets/images/l.png'),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                '3 min',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.ash2,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              const Image(
                                                height: 12,
                                                width: 12,
                                                image: AssetImage(
                                                  'assets/images/star.png',
                                                ),
                                              ),
                                              const SizedBox(width: 7),
                                              Text(
                                                '4.9',
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
                                        'assets/images/g1.png',
                                        width: 14,
                                        height: 14,
                                        color: AppColors.ash,
                                      )
                                    ],
                                  ),
                                  const Divider(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Passengers',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            for (int i = 0;
                                                i < images.length;
                                                i++)
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundImage:
                                                      AssetImage(images[i]),
                                                ),
                                              ),
                                            Padding(
                                              padding: const EdgeInsets.all(24),
                                              child: Text(
                                                'You and two other people',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.ash2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/info.png',
                                          height: 24, width: 24),
                                      const SizedBox(width: 9),
                                      Text(
                                        'You’re shearing your ride with people going your\n way.Other passengers may be added.',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.ash2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'TRIP',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                    top: Radius.circular(24),
                                                  ),
                                                ),
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 19,
                                                                  top: 21,
                                                                  left: 278),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    CircleAvatar(
                                                                  backgroundColor:
                                                                      AppColors
                                                                          .ash3,
                                                                  child: Icon(
                                                                    Icons.close,
                                                                    size: 16,
                                                                    color: AppColors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Text(
                                                          'YOU ARRIVED',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .black,
                                                            ),
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            const CircleAvatar(
                                                              backgroundImage:
                                                                  AssetImage(
                                                                      'assets/images/head.png'),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  'Mike Pius',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      color: AppColors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/star.png',
                                                                      height:
                                                                          14,
                                                                      width: 14,
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            5),
                                                                    Text(
                                                                      '4.9',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              AppColors.ash2,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  'Final cos',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: AppColors
                                                                          .grey,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      '4,000',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  'Time',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: AppColors
                                                                          .grey,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      '30:00',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              AppColors.black,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 17.38),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 26,
                                                                  top: 24,
                                                                  right: 26),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/Ovalred.png',
                                                                height: 24.083,
                                                                width: 18.519,
                                                              ),
                                                              const SizedBox(
                                                                  width: 12),
                                                              Text(
                                                                'Lafia Federal Poly.......',
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: AppColors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                              const Spacer(),
                                                              Text(
                                                                '9:40 PM',
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: AppColors
                                                                        .black,
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
                                                                  left: 35),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/images/line.png',
                                                                  width: 1,
                                                                  height:
                                                                      37.013)
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 25,
                                                                  right: 26),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/point.png',
                                                                height: 21,
                                                                width: 21,
                                                              ),
                                                              const SizedBox(
                                                                  width: 12),
                                                              Text(
                                                                'Coustomary court',
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: AppColors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                              const Spacer(),
                                                              Text(
                                                                '9:45 PM',
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: AppColors
                                                                        .black,
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
                                                                  left: 24,
                                                                  top: 48,
                                                                  right: 25,
                                                                  bottom: 48),
                                                          child: CustomisedButton(
                                                              'Rate Trip',
                                                              onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                                  return const RatingView();
                                                                },
                                                              ),
                                                            );
                                                          },
                                                              buttonColor:
                                                                  AppColors
                                                                      .blue,
                                                              textColor:
                                                                  AppColors
                                                                      .white),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              'EDIT RIDE',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.blue,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 21),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/oval.png',
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
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 29),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/point.png',
                                            height: 24.083,
                                            width: 18.519,
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            'Picking Favor',
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
                                                color: AppColors.ash2,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 29),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/point.png',
                                            height: 24.083,
                                            width: 18.519,
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            'DroppingFavor',
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
                                            '10:00 PM',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.ash2,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 29),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/point.png',
                                            height: 24.083,
                                            width: 18.519,
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            'Customary Court Ma.....',
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
                                            '10:10 PM',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }, buttonColor: AppColors.white, textColor: AppColors.blue),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

bool _isDriver = false;
