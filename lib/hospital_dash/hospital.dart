import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_tech/doctor_dash/drecord.dart';
import 'package:health_tech/doctor_dash/dstatistic.dart';
import 'package:health_tech/loginpage.dart';
import 'package:health_tech/register.dart';
import '../colors.dart' as color;

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Appcolor.white,
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const Login());
                  },
                  child: Icon(Icons.arrow_back,
                      size: 20, color: color.Appcolor.homeicons),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                      fontSize: 38,
                      color: color.Appcolor.home,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.Appcolor.homeicons,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: InkWell(
                    onTap: () {
                      Get.to(const Dstatistic());
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
                        "Statistics",
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: InkWell(
                    onTap: () {
                      Get.to(const Record());
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
                        "Records",
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
