import 'package:flutter/material.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(77, 40, 128, 0.5),
                    Color.fromRGBO(77, 40, 128, 0.5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/test-bg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event_available,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('Attendance'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/attendance');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.airplanemode_on_sharp,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('Leaves'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/leave');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('Requests'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/requests');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_pin_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.receipt_long_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('News'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/news_screen');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.receipt_long_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('PaySlips'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/payslips');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.assignment_turned_in_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('Approval Tasks'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/taskScreen');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group_add_outlined,
                color: Color.fromRGBO(77, 40, 128, 0.5),
                size: 35,
              ),
              title: Text('My Team'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/employee');
              },
            ),
            Divider(
              thickness: 0.5,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/login');
              },
              contentPadding: EdgeInsets.zero,
              title: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.red),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
