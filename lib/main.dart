import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("HomeWork"),
          ),
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                "Our Team",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepOrange
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Row1(),
              Padding(padding: EdgeInsets.all(20)),
              Row2(),
              Padding(padding: EdgeInsets.all(20)),
              textView(),
              Padding(padding: EdgeInsets.all(20)),
            ],
          ),

        ));
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage profile1 = AssetImage('images/p1.jpg');
    AssetImage profile2 = AssetImage('images/p2.jpg');
    AssetImage profile3 = AssetImage('images/p3.jpg');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        profileParameter(profile1, "Lu Soe"),
        profileParameter(profile2, "Ba Ba"),
        profileParameter(profile3, "Ko Gyi")
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage profile4 = AssetImage('images/p4.jpg');
    AssetImage profile5 = AssetImage('images/p5.jpg');
    AssetImage profile6 = AssetImage('images/p6.jpg');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        profileParameter(profile4, "Mg Thar Aye"),
        profileParameter(profile5, "Ma La"),
        profileParameter(profile6, "U Bite Pu")
      ],
    );
  }
}

Column profileParameter(AssetImage assetImage, String name) {
  Image myImage;
  return Column(
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(300.0),
        child: (myImage = Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        )),
      ),
      Text(name)
    ],
  );
}

Column textView() {
  return Column(
    children: <Widget>[
      Text(
        "Mission",
        style: TextStyle(color: Colors.amber, fontSize: 30),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Text(
        "Mission  is to provide cost-effective, high-quality web and mobile application development services to our clients. In our business customer, satisfaction is the top priority and we believe in to satisfy all the demands of our clients. We combine managerial experts with a large pool of extremely qualified and experienced web and mobile app developers in order to provide world class service.",
        textAlign: TextAlign.center,
      )
    ],
  );
}

// class Profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // AssetImage myImage = AssetImage(
//     //   'images/p7.jpg',
//     // );
//     // Image image = Image(image: myImage);
//     return Column(
//       children: <Widget>[
//         ClipRRect(
//           borderRadius: BorderRadius.circular(300.0),
//           child: (Image.asset(
//             'images/p7.jpg',
//             height: 80,
//             width: 80,
//             fit: BoxFit.cover,
//           )),
//         ),
//         Text("Bla")
//       ],
//     );
//   }
// }
