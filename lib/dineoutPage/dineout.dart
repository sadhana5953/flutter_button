import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utills/list.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.065,
                width: width * 0.900,
                margin: EdgeInsets.only(left: 10),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F0F5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffF1F0F5),
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffF1F0F5),
                        )),
                    hintText: "    Search for item",
                    contentPadding: EdgeInsets.only(top: 10),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade700,
                        ),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Colors.grey.shade400,
                          endIndent: 15,
                          indent: 15,
                        ),
                        Icon(
                          Icons.mic,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                      ],
                    ),
                    suffixIconColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 15),
                child: SizedBox(
                  height: height / 50,
                  child: Text(
                    'RECOMMENDED FOR YOU',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        letterSpacing: 2,
                        wordSpacing: 3,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                (Quickly == 0)
                                    ? Colors.black
                                    : Colors.white24)),
                        onPressed: () {
                          setState(() {
                            Quickly = 0;
                          });
                        },
                        child: Text(
                          'Local Must -Try',
                          style: TextStyle(
                              color:
                                  (Quickly == 0) ? Colors.white : Colors.black),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  (Quickly == 0)
                                      ? Colors.white24
                                      : Colors.black)),
                          onPressed: () {
                            setState(() {
                              Quickly = 1;
                            });
                          },
                          child: Text(
                            'Get It Quickly',
                            style: TextStyle(
                                color: (Quickly == 0)
                                    ? Colors.black
                                    : Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                        10,
                        (index) => Column(
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print('index is $index');
                                    selected = index;
                                    listNo = 0;
                                    Navigator.of(context).pushNamed('/food');
                                  },
                                  child: Container(
                                    height: height * 0.150,
                                    width: width * 0.300,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        opacity: 0.7,
                                        image: AssetImage((Quickly == 0)
                                            ? offer[index]['img']
                                            : timeList[index]['img']),
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 75, left: 7),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            (Quickly == 0)
                                                ? offer[index]['name']
                                                : timeList[index]['name'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            (Quickly == 0)
                                                ? offer[index]['off']
                                                : timeList[index]['off'],
                                            style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  (Quickly == 0)
                                      ? offer[index]['foodname']
                                      : timeList[index]['foodname'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  (Quickly == 0)
                                      ? offer[index]['duration']
                                      : timeList[index]['duration'],
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 7,
                endIndent: 7,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pushNamed('/restaurant');
                      }, child: Text(
                        'See more restaurant ',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.deepOrange,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 7,
                endIndent: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).pushNamed('/page1');
                      },
                      child: GestureDetector(
                        onTap:(){
                          Navigator.of(context).pushNamed('/page2');
                        },
                        child: Container(
                          height: height * 0.09 + 11,
                          width: width * 0.3 - 18,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/profile/offer_zone.jpeg',
                                  ),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).pushNamed('/page3');
                      },
                      child: Container(
                        height: height * 0.09 + 11,
                        width: width * 0.3 - 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/profile/star.jpeg',
                                ),
                                fit: BoxFit.fitHeight),
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Container(
                      height: height * 0.09 + 11,
                      width: width * 0.3 - 18,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/profile/delights.jpeg',
                              ),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.020),
              Row(
                children: [
                  Text('    Customer, What\'s on your mind?',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: height * 0.020),
              Container(
                  height: height * 0.290,
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                              imagelist.length,
                              (index) => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed('/menu');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              imagelist[index]['image']),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    imagelist[index]['foodName'],
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              imagelist1.length,
                              (index) => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed('/menu');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              imagelist1[index]['image']),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(imagelist1[index]['fdnam'],
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: height * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context,
                              builder: (context) => Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 25),
                                          child: Text(
                                            'Filter',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 27),
                                          ),
                                        ),
                                        Divider(),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Sort',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepOrange,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22),
                                                  ),
                                                  Text(
                                                    '\nVeg/Non-Veg',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    '\nRatings',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    '\nDelivery Time',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    '\nCost For two',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.090,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: height * 0.450,
                                              width: 1,
                                              color: Colors.grey,
                                              margin: EdgeInsets.only(left: 60),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   SORT BY',
                                                  style: TextStyle(
                                                      letterSpacing: 5),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            filter_value = 0;
                                                          });
                                                        },
                                                        icon: (filter_value ==
                                                                0)
                                                            ? Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                    Text(
                                                      'Relevance',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              (filter_value ==
                                                                      0)
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .normal,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            filter_value = 1;
                                                          });
                                                        },
                                                        icon: (filter_value ==
                                                                1)
                                                            ? Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                    Text(
                                                      'Delivery Time',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              (filter_value ==
                                                                      1)
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .normal,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            filter_value = 2;
                                                          });
                                                        },
                                                        icon: (filter_value ==
                                                                2)
                                                            ? Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                    Text(
                                                      'Rating',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              (filter_value ==
                                                                      2)
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .normal,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            filter_value = 3;
                                                          });
                                                        },
                                                        icon: (filter_value ==
                                                                3)
                                                            ? Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                    Text(
                                                      'Cost: LowtoHigh',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              (filter_value ==
                                                                      3)
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .normal,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            filter_value = 4;
                                                          });
                                                        },
                                                        icon: (filter_value ==
                                                                4)
                                                            ? Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                    Text(
                                                      'Cost: HightoLow',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              (filter_value ==
                                                                      4)
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .normal,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.090,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ));
                        });
                      },
                      child: Container(
                        height: 40,
                        width:
                            (filter_value == 0) ? width * 0.250 : width * 0.300,
                        decoration: BoxDecoration(
                            color: (filter_value == 0) ? null : Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: (filter_value == 0)
                                    ? Colors.black38
                                    : Colors.black)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            (filter_value == 0)
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Container(
                                    height: height * 0.025,
                                    width: width * 0.050,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrange),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                            Text(
                              'Filter',
                              style: TextStyle(fontSize: 15),
                            ),
                            Image.asset(
                              'assets/images/profile/filter.jpeg',
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    (filter_value == 0 || filter_value==3 || filter_value==4)
                        ? SizedBox(
                            height: 0,
                          )
                        : Container(
                            height: 40,
                            width: (filter_value == 1)
                                ? width * 0.370
                                : (filter_value == 2)
                                    ? width * 0.280
                                    : (filter_value == 3)
                                        ? width * 0.350
                                        : (filter_value == 4)
                                            ? width * 0.350
                                            : null,
                            padding: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Text(
                                    '${(filter_value == 1) ? 'DeliverTime' : (filter_value == 2) ? 'Rating' : (filter_value == 3) ? 'LowtoHigh' : (filter_value == 4) ? 'HightoLow' : 'Relevance'}'),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        filter_value = 0;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.cancel_outlined,
                                      size: 20,
                                    ))
                              ],
                            ),
                          ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          filter_value=3;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: 40,
                        width: (filter_value==3) ? 160 : 120,
                        decoration: BoxDecoration(
                            color: (filter_value==3)
                                ? Colors.black12
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: (filter_value==3)
                                    ? Colors.black38
                                    : Colors.black45)),
                        child: Center(
                          child: (filter_value==3)
                              ?
                                  Row(
                                  children: [
                                    Text(
                                      '   LowtoHigh',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            filter_value=0;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.cancel_outlined,
                                          size: 20,
                                        ))
                                  ],
                                ):Text(
                            'LowtoHigh',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          filter_value=4;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: 40,
                        width: (filter_value==4) ? 160 : 120,
                        decoration: BoxDecoration(
                            color: (filter_value==4)
                                ? Colors.black12
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: (filter_value==4)
                                    ? Colors.black38
                                    : Colors.black45)),
                        child: Center(
                          child: (filter_value==4)
                              ?
                           Row(
                            children: [
                              Text(
                                '   HightoLow',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      filter_value=0;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.cancel_outlined,
                                    size: 20,
                                  ))
                            ],
                          ):Text(
                            'HightoLow',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.020,
              ),
              Text('    1320 restaurants to explore',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(
                height: height * 0.020,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...List.generate(
                        reversedList.length,
                        (index) => Column(
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.more_vert),
                                ),
                                InkWell(
                                  onTap: () {
                                    listNo = 1;
                                    selected = index;
                                    Navigator.of(context).pushNamed('/food');
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.210,
                                        width: width * 0.350,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            opacity: 0.7,
                                            image: AssetImage(
                                                (filter_value == 3)
                                                    ? lessPrice[index]['img']
                                                    : (filter_value == 4)
                                                        ? bigPrice[index]['img']
                                                        : reversedList[index]
                                                            ['img']),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Spacer(),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.white,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 70,
                                            ),
                                            Text(
                                              '  ${(filter_value == 3) ? lessPrice[index]['name'] :(filter_value==4)? bigPrice[index]['name']:reversedList[index]['name']}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '  ${(filter_value == 3) ? lessPrice[index]['off'] :(filter_value==4)? bigPrice[index]['off']:reversedList[index]['off']}',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '  ${(filter_value == 3) ? lessPrice[index]['food'] :(filter_value==4)? bigPrice[index]['food']:reversedList[index]['food']}',
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '  ⭐ ${reversedList[index]['rate']} | ${(index == 0 || index == 2 || index == 3 || index == 4 || index == 6 || index == 11 || index == 8 || index == 13) ? '10-15 mins' : reversedList[index]['duration']}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '  ${(filter_value == 3) ? lessPrice[index]['add'] :(filter_value==4)? bigPrice[index]['add']:reversedList[index]['add']}',
                                            style: TextStyle(
                                                color: Colors.grey.shade700,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            '  ${(filter_value == 3) ? lessPrice[index]['km'] :(filter_value==4)? bigPrice[index]['km']:reversedList[index]['km']}',
                                            style: TextStyle(
                                                color: Colors.grey.shade700,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: height * 0.060,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
