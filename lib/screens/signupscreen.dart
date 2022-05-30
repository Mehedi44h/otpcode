import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otpcode/screens/otptimerscreen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkboxFlag = false;
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
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(left: 10),
                padding: const EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: Colors.black12),
                  // color: Colors.pink,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: Text(
                  "Test Task",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(45, 188, 119, 1)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 97,
                  height: 14,
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(4, 4, 21, 0.5)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 46,
                    width: 97,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 248, 1),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '+880',
                          style: TextStyle(
                            color: Color.fromRGBO(4, 4, 21, 0.6),
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 218,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 6, left: 23),
                        fillColor: Color.fromRGBO(248, 248, 248, 1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        hintText: '18345435213',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(4, 4, 21, 0.6),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 43,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    // Container(
                    //   // width: 14,
                    //   // height: 14,
                    //   // decoration: BoxDecoration(
                    //   //     borderRadius: BorderRadius.circular(2),
                    //   //     color: Color.fromRGBO(45, 188, 119, 1)),
                    //   child: Center(
                    //     child: Icon(
                    //       Icons.check_box,
                    //       color: Colors.green,
                    //       size: 20,
                    //     ),
                    //   ),
                    // ),
                    Checkbox(
                      fillColor: MaterialStateProperty.all(
                          Color.fromRGBO(45, 188, 119, 1)),
                      value: checkboxFlag,
                      onChanged: (value) {
                        checkboxFlag = value!;
                        setState(() {}); // to update the state
                      },
                    ),
                    Text("You agree to our "),
                    InkWell(
                      onTap: () {
                        print("this is terms");
                      },
                      child: Text(
                        "Terms & conditions",
                        style: TextStyle(
                            color: Color.fromRGBO(45, 188, 119, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (checkboxFlag) {
                      Get.to(
                        () => OtpTimerScreen(),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      checkboxFlag
                          ? Color.fromRGBO(45, 188, 119, 1)
                          : Colors.grey,
                    ),
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
                    "Continue",
                  ),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Get.to(OtpTimerScreen());
              //   },
              //   child: Center(
              //     child: Container(
              //       height: 46,
              //       width: 327,
              //       decoration: BoxDecoration(
              //           color: Color.fromRGBO(45, 188, 119, 1),
              //           borderRadius: BorderRadius.all(Radius.circular(28))),
              //       child: Center(
              //           child: Text(
              //         "Continue",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 14,
              //             fontWeight: FontWeight.w500),
              //       )),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 22.7,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an nAccount?"),
                    InkWell(
                      onTap: () {
                        print("this is terms");
                      },
                      child: Text(
                        " Sign in",
                        style: TextStyle(
                            color: Color.fromRGBO(45, 188, 119, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
