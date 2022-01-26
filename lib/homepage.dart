import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_tech/loginpage.dart';
import 'package:health_tech/register.dart';
import 'colors.dart' as color;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(  
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Health Tech",
                  style: TextStyle(
                      fontSize: 38,
                      color: color.Appcolor.home,
               backgroundColor: color.Appcolor.white,
            fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back,
                    size: 20, color: color.Appcolor.homeicons),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.Appcolor.homeicons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward,
                    size: 20, color: color.Appcolor.homeicons),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                "Guidelines",
                style: TextStyle(
                    fontSize: 20,
                    color: color.Appcolor.black,
                    fontWeight: FontWeight.w500),
              ),
              Expanded(child: Container()),
              Text(
                "More details",
                style: TextStyle(
                    fontSize: 15,
                    color: color.Appcolor.hom,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_forward,
                  size: 20, color: color.Appcolor.homeicons)
            ]),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 175,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.Appcolor.homeicons.withOpacity(0.9),
                      color.Appcolor.hometit.withOpacity(0.9),
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          blurRadius: 10,
                          color: color.Appcolor.hometit.withOpacity(0.2))
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step 1:  Register to Health tech.",
                        style: TextStyle(
                            fontSize: 18, color: color.Appcolor.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Step 2:  Create or import a wallet.",
                        style: TextStyle(
                            fontSize: 18, color: color.Appcolor.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Step 3:  Fill the KYC form for more security.",
                        style: TextStyle(
                            fontSize: 18, color: color.Appcolor.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Text(
                            "Video guide",
                            style: TextStyle(
                                fontSize: 15, color: color.Appcolor.black),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 40,
                            color: color.Appcolor.homeicons,
                          )
                        ],
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Options",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: color.Appcolor.homeicons),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: InkWell(
                    onTap: () {
                      Get.to(const Login());
                    },
                    child: Container(
                      height: 10,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color.Appcolor.hometabs,
                      ),
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: InkWell(
                    onTap: () {
                      Get.to(const Register());
                    },
                child: Container(
              height: 10,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color.Appcolor.hometabs,
              ),
              child: const Center(
                  child: Text(
                "Register",
                style: TextStyle(fontSize: 20),
              )),
            ))),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              height: 10,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color.Appcolor.hometabs,
              ),
              child: const Center(
                  child: Text(
                "Connect wallet",
                style: TextStyle(fontSize: 20),
              )),
            )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
