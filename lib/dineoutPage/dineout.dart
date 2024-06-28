import 'dart:ui';

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
              Padding(
                padding: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/search');
                  },
                  child: Container(
                    height: height * 0.065,
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xffF1F0F5),
                        borderRadius: BorderRadius.circular(17)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Text('Search for ',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                          ),),
                          Expanded(
                            child: AnimatedTextKit(animatedTexts: [
                              RotateAnimatedText("'Burger'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                              RotateAnimatedText("'Cake'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                              RotateAnimatedText("'Pizza'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                              RotateAnimatedText("'Biryani'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                              RotateAnimatedText("'Rolls'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),

                            ],
                              repeatForever: true,
                              pause: Duration(milliseconds: 500),
                            ),
                          ),
                          SizedBox(width: width*0.3,),
                          Icon(Icons.search,color: Colors.grey,),
                          VerticalDivider(
                            thickness: 1.5,
                            color: Colors.grey.shade400,
                            endIndent: 5,
                            indent: 5,
                          ),
                          Icon(Icons.mic,color: mainColor,)

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 15
                ),
                child: SizedBox(
                  height: height/50,
                  child: Text('RECOMMENDED FOR YOU',style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      letterSpacing: 2,
                      wordSpacing: 3,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,bottom: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black)
                    ),onPressed: () {

                    }, child: Text('Local Must -Try',style: TextStyle(
                        color: Colors.white
                    ),)),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white24)
                      ),onPressed: () {

                      }, child: Text('Get It Quickly',style: TextStyle(
                          color: Colors.black
                      ),)),
                    ),
                  ],
                ),
              ),

              // CarouselSlider(
              //   items: List.generate(
              //       bannerscrolllist.length,
              //           (index) => Container(
              //         height: 300,
              //         width: 500,
              //         decoration: BoxDecoration(
              //           color: Color(0xff232f3e),
              //         ),
              //       )),
              //   options: CarouselOptions(
              //     height: 250,
              //     enlargeCenterPage: true,
              //     autoPlay: true,
              //     aspectRatio: 16 / 9,
              //     autoPlayCurve: Curves.fastOutSlowIn,
              //     enableInfiniteScroll: true,
              //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //     viewportFraction: 0.99,
              //     disableCenter: true,
              //   ),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                        offer.length,
                            (index) => Column(
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selected=index;
                                    Navigator.of(context).pushNamed('/food');
                                  },
                                  child: Container(
                                    height: height * 0.150,
                                    width: width*0.300,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        opacity: 0.7,
                                        image: AssetImage(offer[index]['img']),
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
                                            offer[index]['name']!,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            offer[index]['off']!,
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
                                  offer[index]['foodname']!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  offer[index]['duration']!,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('See more restaurant ',style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.deepOrange,size: 15,)
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
                  top: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.09+11,
                      width: width*0.3-18,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/intro/offer_box.png',),
                              fit: BoxFit.cover
                          ),
                          border: Border.all(
                              color: Colors.grey.shade400
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Container(
                      height: height*0.09+11,
                      width: width*0.3-15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/intro/offer_2.png',),
                              fit: BoxFit.fitHeight
                          ),
                          border: Border.all(
                              color: Colors.grey.shade400
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Filter',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/img/filter.png',
                            color: Colors.black,
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'Sort by',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            items: items.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                //disable default onTap to avoid closing menu when selecting an item
                                enabled: false,
                                child: StatefulBuilder(
                                  builder: (context, menuSetState) {
                                    final isSelected =
                                    selectedItems.contains(item);
                                    return InkWell(
                                      onTap: () {
                                        isSelected
                                            ? selectedItems.remove(item)
                                            : selectedItems.add(item);
                                        //This rebuilds the StatefulWidget to update the button's text
                                        setState(() {});
                                        //This rebuilds the dropdownMenu Widget to update the check mark
                                        menuSetState(() {});
                                      },
                                      child: Container(
                                        height: double.infinity,
                                        width: 300,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              width: 30,
                                            ),
                                            if (isSelected)
                                              const Icon(
                                                Icons
                                                    .radio_button_checked_outlined,
                                                color: Colors.deepOrange,
                                              )
                                            else
                                              const Icon(
                                                Icons.radio_button_off,
                                              ),
                                            // const SizedBox(width: 16),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }).toList(),
                            //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                            value:
                            selectedItems.isEmpty ? null : selectedItems.last,
                            onChanged: (value) {},
                            selectedItemBuilder: (context) {
                              return items.map(
                                    (item) {
                                  return Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      selectedItems.join(', '),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 1,
                                    ),
                                  );
                                },
                              ).toList();
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              height: 40,
                              width: 180,
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: Text(
                          'Book a table',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: Text(
                          'Within 5km',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: Text(
                          'Pure Veg',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: Text(
                          'Rating 4+',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: Text(
                          'Serves Alcohol',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
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
                                  Container(
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
                                    onTap:(){
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
      ),
    );
  }
}