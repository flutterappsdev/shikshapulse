import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/CircularWidget.dart';
import '../widgets/CarouselWidget.dart';
import '../widgets/line_chart_widget.dart';
import '../screen/Dashboard.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'mainscreen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('HH:MM:SS');
  final String formatted = formatter.format(now);

  static final DateFormat formatterdate = DateFormat.yMMMMEEEEd();
  final String formatteddate = formatterdate.format(now);
  String _value = '20-21';

  @override
  void didChangeDependencies() {
    print(formatted); // something like 2013-04-20
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            //Logo Image
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 5, bottom: 0, right: 10),
              child: Image.asset('assets/images/Logo.png'),
            ),
            //User Name and Profile Pic
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 0, bottom: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi, Amit',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text('What do you want to learn today?'),
                    ],
                  ),
                  const CircleAvatar(
                    maxRadius: 40,
                  )
                ],
              ),
            ),
            //Rectangle Conatainer
            Container(
                height: 220,
                width: 700,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 2),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lets\'s get to work',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Today',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          formatted.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(formatteddate.toString()),
                    Slider(
                      value: 170.0,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          // height = newValue.round();
                        });
                      },
                    ),
                    const Center(child: Text('Shift 9.30 AM - 6.00 PM')),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 700,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Clock Out'),
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 221, 220, 1),
                              primary: Colors.red,
                              textStyle: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircularWidget(
                      imageurl: 'assets/images/dashboard.png',
                      label: 'Dashboard',
                      onPress: () {
                        print('dasbord');
                        Navigator.pushReplacementNamed(context, Dashboard.id);
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  CircularWidget(
                      imageurl: 'assets/images/Attendance.png',
                      label: 'Atttendance',
                      onPress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  CircularWidget(
                      imageurl: 'assets/images/Materials.png',
                      label: 'Materials',
                      onPress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  CircularWidget(
                      imageurl: 'assets/images/meeting.png',
                      label: 'Meeting',
                      onPress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  CircularWidget(
                      imageurl: 'assets/images/examlist.png',
                      label: 'Exam List',
                      onPress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  CircularWidget(
                      imageurl: 'assets/images/schedule.png',
                      label: 'Schedule',
                      onPress: () {}),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CarouselWidget(),
            const SizedBox(
              height: 5,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 50,
                          child: Image.asset('assets/images/medal.png',
                              width: 80, height: 100, fit: BoxFit.fill),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Achievement',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Achievement for month',
                              style: TextStyle(fontSize: 12),
                            ),
                            Divider(
                              color: Colors.red,
                            ),
                            Text(
                              '1.Krishna',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '2.Marylin Francis',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ranking',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text('Ranking for month',
                            style: TextStyle(fontSize: 12)),
                        Divider(
                          color: Colors.red,
                        ),
                        Text('1.Amit', style: TextStyle(fontSize: 12)),
                        Text('2.Marylin Francis',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 700,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: LineChartWidget(),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 430,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'School Result',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                            color: Colors.red,
                                            style: BorderStyle.solid,
                                            width: 1),
                                      ),
                                      child: DropdownButton(
                                        value: _value,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("2020-21"),
                                            value: "20-21",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("2021-22"),
                                            value: "21-22",
                                          )
                                        ],
                                        onChanged: null,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 20, 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      size: 60,
                                      color: Colors.green,
                                    ),
                                    SizedBox(width: 5, height: 0),
                                    Text(
                                      '19747',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 5, 15),
                                child: Text(
                                  'Passed students for the Academic year 20-21',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Divider(
                                color: Colors.pinkAccent,
                                thickness: 2.0,
                              ),

                        /*-------------------------------*/

                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 20, 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      size: 60,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 5, height: 0),
                                    Text(
                                      '82',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 5, 5),
                                child: Text(
                                  'Failed students for the Academic year 20-21',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                      width: 300,
                      height: 420,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: TableCalendar(
                            firstDay: DateTime(2021, 1, 1),
                            lastDay: DateTime(2022, 9, 1),
                            focusedDay: DateTime.now(),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
