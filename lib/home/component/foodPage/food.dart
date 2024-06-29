import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/dineoutPage/dineout.dart';
import 'package:practice/utills/list.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

int disc = 0;

class _profileState extends State<profile> {
  int change() {
    if (disc == 3) {
      disc = 0;
    } else {
      disc++;
    }
    return disc;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.285,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFE0E1E9),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.010,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                        SizedBox(
                          width: width * 0.570,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.010,
                    ),
                    Container(
                      height: height * 0.190,
                      width: width * 0.850,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 3)
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '🏆 Best in Food',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade800,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  '⭐ ${(listNo == 0) ? offer[selected]['rate'] : reversedList[selected]['rate']}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.030,
                                width: width * 0.530,
                                color: Colors.white,
                                child: Text(
                                  " ${(listNo == 0) ? offer[selected]['add'] : reversedList[selected]['add']}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '1k+ ratings',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            '${(selected == 3 || selected == 5 || selected == 8 || selected == 10 || selected == 12 || selected == 13 || selected == 14 || selected == 16) ? "20-30 min " : (listNo == 0) ? offer[selected]['duration'] : reversedList[selected]['duration']} | Udhana Gam',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Divider(),
                          Row(
                            children: [
                              Icon(
                                Icons.directions_bike_outlined,
                                size: 20,
                              ),
                              Text('  4.4 km |  '),
                              Text(
                                '21',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                                '  Free Delivery on your order',
                                style: TextStyle(color: Colors.grey.shade700),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.030,
              ),
              Container(
                height: height * 0.080,
                width: width * 0.850,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.080,
                      width: width * 0.750,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: height * 0.050,
                          autoPlay: true,
                        ),
                        items: discount.map((i) {
                          return Builder(
                              builder: (context) => Row(
                                    children: [
                                      Text(discount[change()]['logo']),
                                      SizedBox(
                                        width: width * 0.060,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            discount[change()]['disc'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            discount[change()]['info'],
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.060,
                                      ),
                                    ],
                                  ));
                          //     Container(
                          //     margin: EdgeInsets.all(10),
                          //     height: height * 0.4,
                          //     width: width * 0.8,
                          //     decoration:BoxDecoration(
                          //         color: Colors.black,
                          //         image: DecorationImage(
                          //             image: AssetImage(featureList[change()]['disc'])
                          //         )
                          //     )
                          // );
                        }).toList(),
                      ),
                    ),
                    Text(
                      ' ${change()}/4',
                      style: TextStyle(color: Colors.orange.shade700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MENU',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Search for dishes',
                      filled: true,
                      fillColor: const Color(0xffe5e5ea),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffdfe0e8), width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffdfe0e8), width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: width * 0.010,
                          ),
                          Text('|'),
                          SizedBox(
                            width: width * 0.010,
                          ),
                          Icon(
                            Icons.mic,
                            color: Colors.deepOrange,
                          ),
                          SizedBox(
                            width: width * 0.015,
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.040,
                    width: width * 0.200,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade400, width: 1.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Pure Veg',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: height * 0.040,
                    width: width * 0.250,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade400, width: 1.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Ratings 4.0+',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: height * 0.040,
                    width: width * 0.210,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade400, width: 1.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Bestseller',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.030,
              ),
              Divider(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '  Top Picks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ...List.generate(
                      5,
                      (index) => Stack(children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                  color: CupertinoColors.inactiveGray,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(name1[index]['name']),
                            ),
                          ]))
                ]),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   Reccomand (20)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ...List.generate(
                listOfFood.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bestseller ',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          Text(
                            ' ${(listNo == 0) ? listOfFood[selected][index]['name'] : foodList[selected][index]['name']}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' ₹${(listNo == 0) ? listOfFood[selected][index]['price'] : foodList[selected][index]['price']}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green.shade900,
                                size: 18,
                              ),
                              Text(
                                ' ${(listNo == 0) ? listOfFood[selected][index]['rate'] : foodList[selected][index]['rate']}',
                                style: TextStyle(
                                    color: Colors.green.shade900, fontSize: 17),
                              ),
                              Text(
                                ' (${(listNo == 0) ? listOfFood[selected][index]['order'] : foodList[selected][index]['order']})',
                                style: TextStyle(
                                    color: Colors.grey.shade800, fontSize: 15),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.5,
                            color: Colors.white,
                            child: Text(
                              '${(listNo == 0) ? listOfFood[selected][index]['description'] : foodList[selected][index]['description']}',
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                  showModalBottomSheet(
                                      backgroundColor: Colors.grey,
                                      context: context,
                                      builder: (context) => Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 150,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Only Bhature [1pcs]',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 30,
                                                        width: 70,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .grey,
                                                                    width: 1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                    10,
                                                                  ),
                                                                ),
                                                                color: Colors
                                                                    .white),
                                                        child: Text(
                                                          'ADD',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.green),
                                                        )),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    '  ₹35.17',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        '  ⭐',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        ' 4.4',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      Text(
                                                        ' (2050)',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Text('   rohan nayak')
                                              ],
                                            ),
                                          ));
                                },
                                child: Container(
                                  height: height * 0.170,
                                  width: width * 0.350,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      image: DecorationImage(image: AssetImage('${(listNo == 0) ? listOfFood[selected][index]['img'] : foodList[selected][index]['img']}'),fit: BoxFit.cover,opacity: 0.8),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 130, left: 40),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                        color: Colors.white),
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(color: Colors.green),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            Icon(
              Icons.menu_book,
              color: Colors.white,
            ),
            Text(
              'Menu',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

List name = [
  'Pure Vag',
  'Rating 4.0+',
  '40% off',
  'Bestsell',
  'Pure Vag',
  'Pure Vag',
];
List name1 = [
  {
    'name': 'Pure Vag',
  },
  {'name': 'Rating 4.0+'},
  {'name': '40% off'},
  {'name': 'Bestsell'},
  {'name': 'Pure Vag'},
  {'name': 'Pure Vag'},
];

List discount = [
  {'disc': 'Items at ₹199', 'info': 'ON SELECT ITEM |', 'logo': '%'},
  {
    'disc': '50% off upto ₹100',
    'info': 'USE SWIGGY50 | ABOVE ₹149',
    'logo': '%'
  },
  {
    'disc': '30% off upto ₹75',
    'info': 'USE STEALDEAL | ABOVE ₹179',
    'logo': '%'
  },
  {
    'disc': 'Flat ₹50 off',
    'info': 'NO CODE REQUIRED | ABOVE ₹600',
    'logo': '%'
  },
];
