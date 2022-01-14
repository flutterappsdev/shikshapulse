import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../provider/subjects_list.dart';

class Subjects extends StatefulWidget {
  static const String id = 'resetpwh';
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset('assets/images/subject_screen_img.png'),
            SizedBox(height: 10),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Subjects_List.length,
                itemBuilder: (context, index) {
                  return Container(

                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      Subjects_List[index].SubjectTitle!,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Add New Subject', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),  ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(0, 147, 74, 1),
                minimumSize: Size(double.infinity, 60),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
