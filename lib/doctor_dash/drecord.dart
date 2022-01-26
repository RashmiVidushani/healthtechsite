import 'package:flutter/material.dart';
import '../colors.dart' as color;

class Record extends StatefulWidget {
  const Record({Key? key}) : super(key: key);

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
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
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: color.Appcolor.homeicons,
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
                    "Add record",
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
                        hintText: 'Enter ',
                        labelText: 'NIC/Passport No',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter a valid NIC/Passport NO.';
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
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
