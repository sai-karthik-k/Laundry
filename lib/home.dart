import 'package:flutter/material.dart';
import 'otp.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Enter your Email",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      // offset: Offset(0.0, 0.0),
                      blurRadius: 5.0,
                      spreadRadius: 0.0),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ("Enter your Email"),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Otp()),
              );
            },
            child: Text(
              "Get OTP",
              style: TextStyle(fontSize: 17),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              minimumSize: Size(75, 55),
              elevation: 10,
            ),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
