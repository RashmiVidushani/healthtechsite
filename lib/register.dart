import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_tech/homepage.dart';
import 'colors.dart' as color;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            color.Appcolor.homeicons.withOpacity(0.9),
            color.Appcolor.hometit.withOpacity(0.9)
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Homepage());
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: color.Appcolor.homeicons,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: color.Appcolor.homeicons,
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Registration",
                    style: TextStyle(
                        fontSize: 30,
                        color: color.Appcolor.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your NIC',
                        labelText: 'NIC',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid NIC';
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Passport no',
                        labelText: 'Passport No',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid Passport NO.';
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Email Address',
                        labelText: 'Email Address',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid Email Address';
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Phone number',
                        labelText: 'Phone No',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid Phone number';
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Password',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid Password';
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password does not match';
                        }
                        return null;
                      }),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('processing data')),
                              );
                            }
                          },
                          child: const Text('KYC'),
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('processing data')),
                              );
                            }
                          },
                          child: const Text('Register'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
