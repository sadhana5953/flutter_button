import 'package:flutter/material.dart';

class edit2 extends StatefulWidget {
  const edit2({super.key});

  @override
  State<edit2> createState() => _edit2State();
}

class _edit2State extends State<edit2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEDEEF0),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                height: height * 0.435,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile/banner.jpeg'),
                      fit: BoxFit.cover),
                ),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Text(
                        'Swiggy HDFC Bank Credit Card',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.430,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.020,
                    ),
                    ListTile(
                      title: Text(
                        'Flat 10% cashback',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        'One Food, Instamart, Dineout!',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      trailing: Image(
                        image: AssetImage('assets/images/profile/swiggy.jpeg'),
                        height: height * 0.037,
                        width: width * 0.140,
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text(
                        'Flat 5% cashback',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        'One 1000+ online shoping apps',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      trailing: Image(
                        image: AssetImage('assets/images/profile/amazon.png'),
                        height: height * 0.025,
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text(
                        'FREE 3 months Swiggy One',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        'Welcomw benifit redeemable upon card activation',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      trailing: Image(
                        image: AssetImage('assets/images/profile/one.png'),
                        height: height * 0.035,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Know more >',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Image(image: AssetImage('assets/images/profile/banner2.jpeg')),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text(
                  '\nBonus benefits',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                  height: height * 0.100,
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  padding: EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage('assets/images/profile/golf.jpeg'),
                        height: height * 0.060,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Golf access',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            'To courses across the globe\n & 12 free lessons/year',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )
                  // ListTile(
                  //   tileColor: Colors.white,
                  //   title: Text('Golf access',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  // ),
                  ),
              Container(
                  height: height * 0.100,
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  padding: EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage('assets/images/profile/dine.jpeg'),
                        height: height * 0.060,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stay & dine',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            'Free 1 night stay & dining benefits\nat select places globally',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )
                  // ListTile(
                  //   tileColor: Colors.white,
                  //   title: Text('Golf access',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  // ),
                  ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '\nSee all Mastercard benefits >',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
              Image(image: AssetImage('assets/images/profile/banner3.jpeg')),
              SizedBox(
                height: height * 0.070,
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.080,
          width: 355,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.deepOrange,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Apply Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Only takes a few minutes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
