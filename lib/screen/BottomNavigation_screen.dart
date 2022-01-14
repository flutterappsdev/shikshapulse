
import 'package:flutter/material.dart';
import 'Main_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
   MainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(0),
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
            icon:  Icon(Icons.home_outlined, size: 40.0,),
            label: '',

          ),
          BottomNavigationBarItem(

            icon:  Icon(Icons.list,size:40.0),
            label: '',
          ),

          BottomNavigationBarItem(
            icon:  Icon(Icons.event_note_outlined,size: 40.0,),
            label: '',
          ),

          BottomNavigationBarItem(

            icon:  Icon(Icons.account_circle_outlined,size: 40.0,),
            label: '',
          ),
        ],
      ),
    );
  }
}
