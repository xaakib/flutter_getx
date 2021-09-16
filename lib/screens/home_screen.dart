import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/search_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double raingStar = 0.5;
  late String stringValue = "";
  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
   
      setState(() {
        stringValue = (prefs.getString('division') != null ? prefs.getString('division'): "Epmty" )!;
      });

  }

  @override
  void initState() {
    super.initState();
    getStringValuesSF();
  }

  @override
  Widget build(BuildContext context) {
    print("Screen Loaded : $stringValue");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Flutter Getx"),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 30),
            RatingBar.builder(
              initialRating: raingStar,
              minRating: 1,
              itemSize: 18,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
                setState(() {
                  raingStar = rating;
                });
              },
            ),
            Text(
              "Raings $raingStar".toString(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 200,
            ),
           // ignore: unnecessary_null_comparison
           Text(stringValue) ,
            SizedBox(height: 100),
            CupertinoButton(
                child: Text("Search Screen"),
                onPressed: () async {
                  // SharedPreferences prefs = await SharedPreferences.getInstance();
                  // prefs.remove('division');
                  Get.to(SearchScreen(),
                  
                  
                  );
                })
          ],
        ),
      ),
    );
  }
}
