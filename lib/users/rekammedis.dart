import 'package:flutter/material.dart';

class RekamMedis extends StatefulWidget {
  @override
  _RekamMedisState createState() => new _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekam Medis'),
      ),
      body: Center(
        child: Text(
          'Rekam Medis',
        ),
      ),
    );
  }
}
