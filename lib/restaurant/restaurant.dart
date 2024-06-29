import 'package:flutter/material.dart';

class MoreRestaurent extends StatefulWidget {
  const MoreRestaurent({super.key});

  @override
  State<MoreRestaurent> createState() => _MoreRestaurentState();
}

class _MoreRestaurentState extends State<MoreRestaurent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('more restaurant'),
      ),
    );
  }
}
