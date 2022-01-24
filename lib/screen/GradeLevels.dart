import 'package:flutter/material.dart';

class GradeLevels extends StatefulWidget {
  static const String id = "GradeLevels";
  @override
  _GradeLevelsState createState() => _GradeLevelsState();
}

class _GradeLevelsState extends State<GradeLevels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade Levels'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Gradelevels.png'),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(2.0),
              //padding: const EdgeInsets.all(3.0),
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 249, 1),
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Text(
                    'Grade Levels',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          label: Text('Add'),
                          onPressed: () {
                            print('Button Pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(160, 50),
                            primary: const Color.fromRGBO(0, 147, 74, 1),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          label: Text('Sarch'),
                          onPressed: () {
                            print('Button Pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(160, 50),
                            primary: const Color.fromRGBO(0, 147, 74, 1),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SizedBox(width: 2,),
                        Text(' A',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green),),

                        Text('. OutStanding',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(3, 78, 168, 1)),),

                        Icon( Icons.edit_outlined,color: Colors.green, size: 30,),

                        Icon( Icons.delete,color: Colors.red,size: 30,),

                        //Switch(value: Swithvalue, onChanged: (Swithvalue){} , activeColor: Colors.green,)

                      ],
                    ),

                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(20))

                    ),

                  ),

                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
