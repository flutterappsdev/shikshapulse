import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentsList extends StatefulWidget {
  static const String id = 'ParentsList';
  @override
  _ParentsListState createState() => _ParentsListState();
}

class _ParentsListState extends State<ParentsList> {
  bool Swithvalue = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parents List'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Image.asset('assets/images/Parents.png'),
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
                      'Parents List',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            label: Text('Imp/exp'),
                            onPressed: () {
                              print('Button Pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(0, 147, 74, 1),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                          ),

                          SizedBox(width: 5,),

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
                              primary: const Color.fromRGBO(0, 147, 74, 1),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                          ),

                          SizedBox(width: 5,),

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
                              primary: const Color.fromRGBO(0, 147, 74, 1),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Container(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,

                          ),

                          Text('Carter Amonoff'),
                          
                          Icon( Icons.edit_outlined,color: Colors.green,),

                          Switch(value: Swithvalue, onChanged: (Swithvalue){} , activeColor: Colors.green,)
                          
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

                    Container(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,

                          ),

                          Text('Carter Amonoff'),

                          Icon( Icons.edit_outlined,color: Colors.green,),

                          Switch(value: Swithvalue, onChanged: (Swithvalue){} , activeColor: Colors.green,)

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

                    Container(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,

                          ),

                          Text('Carter Amonoff'),

                          Icon( Icons.edit_outlined,color: Colors.green,),

                          Switch(value: Swithvalue, onChanged: (Swithvalue){} , activeColor: Colors.green,)

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

                    Container(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,

                          ),

                          Text('Carter Amonoff'),

                          Icon( Icons.edit_outlined,color: Colors.green,),

                          Switch(value: Swithvalue, onChanged: (Swithvalue){} , activeColor: Colors.green,)

                        ],
                      ),

                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),

                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
