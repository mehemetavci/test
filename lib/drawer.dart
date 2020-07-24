import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 145, 27, 1),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Color.fromRGBO(242, 145, 27, 1),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 40, bottom: 5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('lib/fm.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      child: Text('الاسم', style: TextStyle(fontSize: 20)),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: Text(
                'الطلبات',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                'المفضلات',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text(
                'تقييم التطبيق',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                ' الأعدادات',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                ' تسجيل الخروج',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
