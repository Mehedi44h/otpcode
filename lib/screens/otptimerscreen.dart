import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otpcode/controllers/otpcontroller.dart';
import 'package:otpcode/screens/otpresendscreen.dart';
import 'package:pinput/pinput.dart';

class OtpTimerScreen extends StatefulWidget {
  OtpTimerScreen({Key? key}) : super(key: key);

  @override
  State<OtpTimerScreen> createState() => _OtpTimerScreenState();
}

class _OtpTimerScreenState extends State<OtpTimerScreen> {
  final OtpController _otpController = Get.put(OtpController());

  String userOtp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 53, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      border: Border.all(width: 1, color: Colors.black12)),
                  child: Icon(
                    Icons.clear,
                    size: 20,
                  ),
                ),
              ),
              Center(child: Container(child: Image.asset('images/img1.png'))),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: 263,
                  height: 42,
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: Container(
                  child: Text(
                    'Please type the code we sent to',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(4, 4, 21, 0.5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+880',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 4, 21, 0.5),
                        ),
                      ),
                      Text(
                        '1867',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 4, 21, 0.5),
                        ),
                      ),
                      Text(
                        '448',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 4, 21, 0.5),
                        ),
                      ),
                      Text(
                        '626',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 4, 21, 0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Center(
                child: Pinput(
                  length: 5,
                  onCompleted: (pin) => userOtp = pin,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  height: 22,
                  width: 247,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Code sent.Try again in",
                        style: TextStyle(color: Color.fromRGBO(4, 4, 21, 0.5)),
                      ),
                      InkWell(
                        onTap: () {
                          print("code sent");
                        },
                        child: Text(
                          " 01.59",
                          style: TextStyle(
                              color: Color.fromRGBO(45, 188, 119, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (userOtp == _otpController.otpCode) {
                      Get.to(() => OtpResendScreen());
                    } else {
                      Get.snackbar(
                          "Error OTP", "Please enter the correct otp code.",);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(45, 188, 119, 1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(
                      Size(327, 46),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
