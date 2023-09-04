import 'package:flutter/material.dart';
import 'laundry.dart';

import 'package:flutter/services.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "Enter OTP",
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
              child: Text(
                "The OTP is sent to your Email. Please check your spam folder also",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10,),
                SizedBox(
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    autofocus: true,
                    onSaved: (pin1) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(counterText: "",),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 20,),
                  ),
                ),
                SizedBox(
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    autofocus: true,
                    onSaved: (pin2) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(counterText: ""),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    autofocus: true,
                    onSaved: (pin3){},
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(counterText: ""),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    autofocus: true,
                    onSaved: (pin4){},
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(counterText: ""),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Otp()),
                );
              },
              child: Text(
                "Resend OTP",
                style: TextStyle(fontSize: 17,color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size(75, 55),
                elevation: 10,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const laundry()),
                );
              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 17,color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size(75, 55),
                elevation: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
