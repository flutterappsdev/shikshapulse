import 'package:flutter/material.dart';

class StudyMaterials extends StatefulWidget {
  const StudyMaterials({Key? key}) : super(key: key);

  @override
  _StudyMaterialsState createState() => _StudyMaterialsState();
}

class _StudyMaterialsState extends State<StudyMaterials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudyMaterails'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
