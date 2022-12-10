import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                'Cooking Up',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.restaurant,size:26),
              title: Text(
                'Meals',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)
                =>TabsScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,size:26),
              title: Text(
                'Filter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)
                =>FilterScreen()));

              },
            ),
          ],
        ),
      ),
    );
  }
}
