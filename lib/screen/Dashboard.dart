import 'package:flutter/material.dart';
import '../constant/constants.dart';
import '../models/menu_list.dart';
import '../screen/BottomNavigation_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              //Logo Image
              Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 5, bottom: 0, right: 10),
                child: Image.asset('assets/images/Logo.png'),
              ),
              //User Name and Profile Pic
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 0, bottom: 5, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Krishna',
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

              const SizedBox(
                height: 5,
              ),

              TextFormField(
                decoration: kTextFieldDecoration.copyWith(
                  suffixIcon: const Icon(Icons.search),
                  prefixIcon: const Icon(Icons.keyboard_voice_outlined),
                  fillColor: const Color.fromRGBO(224, 224, 224, 1),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ElevatedButton(
                      child: Text('Dashboard'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(3, 78, 162, 1),
                          minimumSize: Size(180, 35))),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      child: Text('Calendar'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(0, 147, 74, 1),
                          minimumSize: Size(180, 35))),
                ],
              ),

              // GridView(
              //
              //     shrinkWrap: true,
              //   physics: const ScrollPhysics(),
              //       padding: const EdgeInsets.all(5),
              //       children: ALL_MENU_LIST
              //           .map((catData) => MenuItem(
              //         catData.id,
              //         catData.title,
              //         catData.color,
              //         catData.routeName,
              //         catData.icon,
              //         catData.imageurl,
              //       ),
              //
              //       ) .toList(),
              //        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //
              //          maxCrossAxisExtent: 120,
              //          mainAxisExtent: 110,
              //          //childAspectRatio: 2 / 2,
              //          crossAxisSpacing: 15,
              //          mainAxisSpacing: 15,
              //
              //       ),
              //     ),

              GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: ALL_MENU_LIST.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 120,
                    mainAxisExtent: 110,
                    //childAspectRatio: 2 / 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.of(context).pushNamed(ALL_MENU_LIST[index].routeName!);

                        showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                                  color: Colors.white70,
                                  height: 250,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(height: 10,),
                                      Text(
                                        'change institute data',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(34, 61, 95, 1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        'change E-mail and password',
                                        style: TextStyle(
                                            color:
                                            Color.fromRGBO(34, 61, 95, 1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        'change  password',
                                        style: TextStyle(
                                            color:
                                            Color.fromRGBO(34, 61, 95, 1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ALL_MENU_LIST[index].title,
                                style: TextStyle(
                                    color: Color.fromRGBO(34, 61, 95, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(ALL_MENU_LIST[index].imageurl!),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: _selectPage,
        // backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home_outlined,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, size: 40.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_note_outlined,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40.0,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

// class MenuItem extends StatelessWidget {
//   final String title;
//   final String id;
//   final Color color;
//   final String? routeName;
//   final IconData? icon;
//   final String? imageurl;
//
//   MenuItem(this.id, this.title, this.color, this.routeName, this.icon,
//       this.imageurl);
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).pushNamed(routeName!);
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(0.0),
//         ),
//         color: Colors.white,
//         elevation: 10,
//         child: Padding(
//           padding: EdgeInsets.all(0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 title,
//                 style: TextStyle(
//                     color: Color.fromRGBO(34, 61, 95, 1),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 12),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Image.asset(imageurl!),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
