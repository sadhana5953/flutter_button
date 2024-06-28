import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class burger extends StatefulWidget {
  const burger({super.key});

  @override
  State<burger> createState() => _burgerState();
}

class _burgerState extends State<burger> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pizzas/8.jpg'))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 10),
                  height: height * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white12,
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              '   Pizza',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '     Cheesilicious pizzas to make every day Extraordanary.',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              '   ..........................................................................',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              '   Restaurants to explore ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...List.generate(
                      restaurant.length,
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
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.230,
                                      width: width * 0.380,
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          opacity: 0.7,
                                          image: AssetImage(
                                              restaurant[index]['img']),
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
                                            '  ${restaurant[index]['name']}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '  ${restaurant[index]['off']}',
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
                                          '  ${restaurant[index]['foodname']}',
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '  ⭐ ${restaurant[index]['rate']} | ${restaurant[index]['duration']}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          '  ${restaurant[index]['add']}',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          '  ${restaurant[index]['km']}',
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
    );
  }
}

List restaurant = [
  {
    'add': 'Pizza Burger,italic,',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assets/pizzas/b1.jpg',
    'foodname': 'Broast N Rolls',
    'duration': '35-45 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Burger',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assets/pizzas/b2.jpg',
    'foodname': 'Ajay',
    'duration': '20-30 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Pizza,Burger',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assets/pizzas/b3.jpg',
    'foodname': 'Abu Baba Pizza',
    'duration': '20-30 mins',
  },
  {
    'add': 'McDonalds',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assets/pizzas/b4.jpg',
    'foodname': 'Burger,Beverages',
    'duration': '25-35 mins',
  },
  {
    'add': 'Pizza Burger,snack',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assets/pizzas/b5.jpg',
    'foodname': 'Food Context',
    'duration': '20-30 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Burger,Beverages,Pizzas',
    'name': '21% OFF',
    'img': 'assets/pizzas/b7.jpg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Veggie House',
    'duration': '15-20 mins',
  },
  {
    'add': '',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assets/pizzas/b8.jpg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Burger Station',
    'duration': '40-45mins',
  },
  {
    'add': 'Pizza Burger,Fast,',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assets/pizzas/b9.jpg',
    'foodname': 'Burger House',
    'duration': '35-45 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Pizza,Burger',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assets/pizzas/b3.jpg',
    'foodname': 'Abu Baba Pizza',
    'duration': '20-30 mins',
  },
  {
    'add': 'McDonalds',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assets/pizzas/b4.jpg',
    'foodname': 'Burger,Beverages',
    'duration': '25-35 mins',
  }
  ,{
    'add': 'Pizza Burger,italic,',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assets/pizzas/b1.jpg',
    'foodname': 'Broast N Rolls',
    'duration': '35-45 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Burger',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assets/pizzas/b2.jpg',
    'foodname': 'Ajay',
    'duration': '20-30 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Pizza,Burger',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assets/pizzas/b3.jpg',
    'foodname': 'Abu Baba Pizza',
    'duration': '20-30 mins',
  },
  {
    'add': 'McDonalds',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assets/pizzas/b4.jpg',
    'foodname': 'Burger,Beverages',
    'duration': '25-35 mins',
  },
  {
    'add': 'Pizza Burger,snack',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assets/pizzas/b5.jpg',
    'foodname': 'Food Context',
    'duration': '20-30 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Burger,Beverages,Pizzas',
    'name': '21% OFF',
    'img': 'assets/pizzas/b7.jpg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Veggie House',
    'duration': '15-20 mins',
  },
  {
    'add': '',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assets/pizzas/b8.jpg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Burger Station',
    'duration': '40-45mins',
  },
  {
    'add': 'Pizza Burger,Fast,',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assets/pizzas/b9.jpg',
    'foodname': 'Burger House',
    'duration': '35-45 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Pizza,Burger',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assets/pizzas/b3.jpg',
    'foodname': 'Abu Baba Pizza',
    'duration': '20-30 mins',
  },
  {
    'add': 'McDonalds',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assets/pizzas/b4.jpg',
    'foodname': 'Burger,Beverages',
    'duration': '25-35 mins',
  }
];