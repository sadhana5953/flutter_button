import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  MAYURI PUROHIT',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  '  +91 - 8125564785 | mayuri@gmail.com',
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 13),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/edit');
                  },
                  child: Text(
                    'Edit Profile >',
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 2,
            color: Colors.grey.shade700,
          ),
          ListTile(
            title: Row(
              children: [
                Text(
                  'One ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Membership ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: width * 0.020,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              icon: (show == false)
                  ? Icon(
                      Icons.arrow_circle_down,
                      size: 30,
                    )
                  : Icon(
                      Icons.keyboard_arrow_up_sharp,
                      size: 30,
                    ),
            ),
            subtitle: Text(
                'Unlock UNLIMITED Free Deliveries on Food & Instamart. Buy Swiggy One'),
          ),
          (show == false)
              ? SizedBox(
                  height: 0,
                )
              : Text(
                  '    ..........................................................................................'),
          (show == false)
              ? SizedBox(
                  height: 0,
                )
              : ListTile(
                  leading: Icon(Icons.local_offer),
                  title: Text('Buy Swiggy One'),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
          (show == false)
              ? SizedBox(
                  height: 0,
                )
              : ListTile(
                  leading: Icon(Icons.card_giftcard),
                  title: Text('Redeem Membership Coupon'),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Colors.grey.shade500,
          ),
          ListTile(
            // leading: Icon(Icons.credit_card),
            title: Text(
              'Swiggy HDFC Bank Credit Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text(
              'Apply for the card and start earning cashbacks!',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/edit2');
            },
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'My Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text('Favourites, Hidden restaurants & Settings'),
            onTap: () {
              setState(() {
                acc = !acc;
              });
            },
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          (acc == false)
              ? SizedBox(
                  height: 0,
                )
              : Text(
                  '    ..........................................................................................'),
          (acc == false)
              ? SizedBox(
                  height: 0,
                )
              : ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text('Favourites'),
                  onTap: () {
                    choose = 1;
                    Navigator.of(context).pushNamed('/edit3');
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
          (acc == false)
              ? SizedBox(
                  height: 0,
                )
              : ListTile(
                  leading: Icon(Icons.ramen_dining_sharp),
                  title: Text('Hidden Restaurants'),
                  onTap: () {
                    choose = 2;
                    Navigator.of(context).pushNamed('/edit3');
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
          (acc == false)
              ? SizedBox(
                  height: 0,
                )
              : ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    choose = 3;
                    Navigator.of(context).pushNamed('/edit3');
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Addresses',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text('Share, Edit & Add New Addresses'),
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Payments & Refunds',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text('Refund Status & Payment Modes'),
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Swiggy Money & Gift Cards',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text('Manage Swiggy Money & Gift Cards'),
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

bool show = false;
bool acc = false;
int choose = 0;
