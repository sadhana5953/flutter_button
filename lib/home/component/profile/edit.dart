import 'package:flutter/material.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            editName = false;
            editNum = false;
            editEmail = false;
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'EDIT ACCOUNT',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body: Column(
        children: [
          (editName == false)
              ? ListTile(
                  title: Text(
                    'NAME',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                  ),
                  subtitle: Text(
                    'Sadhana',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      setState(() {
                        editName = true;
                      });
                    },
                    child: Text(
                      'EDIT',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Name',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepOrange)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                editName = false;
                              });
                            },
                            child: Text('UPDATE'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                editName = false;
                              });
                            },
                            child: Text('CANCEL'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
          (editName == false)
              ? Divider(
                  indent: 15,
                  endIndent: 15,
                  thickness: 1,
                  color: Colors.grey.shade700,
                )
              : Text(''),
          (editNum == false)
              ? ListTile(
            title: Text(
              'PHONE NUMBER',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            subtitle: Text(
              '8155849410',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            trailing: TextButton(
              onPressed: () {
                setState(() {
                  editNum = true;
                });
              },
              child: Text(
                'EDIT',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
              : Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          editNum = false;
                        });
                      },
                      child: Text('UPDATE'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrange),
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          editNum = false;
                        });
                      },
                      child: Text('CANCEL'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrange),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          (editNum == false)
              ? Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Colors.grey.shade700,
          )
              : Text(''),
          (editEmail == false)
              ? ListTile(
            title: Text(
              'EMAIL ADDRESS',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            subtitle: Text(
              'chaudharysadhana@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            trailing: TextButton(
              onPressed: () {
                setState(() {
                  editEmail = true;
                });
              },
              child: Text(
                'EDIT',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
              : Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          editEmail = false;
                        });
                      },
                      child: Text('UPDATE'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrange),
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          editEmail = false;
                        });
                      },
                      child: Text('CANCEL'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrange),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          (editEmail == false)
              ? Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Colors.grey.shade700,
          )
              : Text(''),
        ],
      ),
    );
  }
}

bool editName = false;
bool editNum = false;
bool editEmail = false;
