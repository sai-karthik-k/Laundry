import 'package:flutter/material.dart';

class laundry extends StatefulWidget {
  const laundry({super.key});

  @override
  State<laundry> createState() => _laundryState();
}

class _laundryState extends State<laundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Evening",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.settings,
              color: Colors.grey[500],
              size: 30,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "16",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 90,
            ),
          ),
          Text(
            "washes left",
            // textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("assets/cloud.jpg"),
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Submit Clothes",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.local_laundry_service_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size(100, 55),
                elevation: 10,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              color: Colors.grey[700],
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "History",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    "19 clothes on 27/7/2023"
                    "\n19 clothes on 27/7/2023"
                    "\n19 clothes on 27/7/2023",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "View Details",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        minimumSize: Size(50, 40),
                        elevation: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Container(
              color: Colors.grey[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.web_sharp,
                    color: Colors.grey[500],
                    size: 50,
                  ),
                  SizedBox(width: 60,),

                  Icon(
                    Icons.home_filled,
                    color: Colors.lightBlueAccent,
                    size: 50,
                  ),
                  SizedBox(width: 60,),

                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey[500],
                    size: 50,
                  ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
