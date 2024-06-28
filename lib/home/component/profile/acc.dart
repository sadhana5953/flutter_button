import 'package:flutter/material.dart';
import 'package:practice/home/component/profile/profile.dart';

class edit3 extends StatefulWidget {
  const edit3({super.key});

  @override
  State<edit3> createState() => _edit3State();
}

class _edit3State extends State<edit3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: (choose == 1)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/profile/favorite.jpeg')),
                    Text(
                      'WHERE IS THE LOVE?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      'Once you favorite a restaurant, it will appear here.',
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/profile/restaurant.jpeg')),
                    Text(
                      'You have not hidden any\n restaurant yet!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                        'Restaurant will start appearing here\n once you hide them\n',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        textAlign: TextAlign.center),
                    Container(
                      height: height*0.060,
                      width: width*0.450,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text('Back to My Account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
    );
  }
}
