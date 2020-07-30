import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding Chef Mild lecture',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.orange,
            ),

      home: HomePage(),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coding Chef Mild Taste'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        /*   leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Drawer();
          },
        ),
      */
        // Drawer와 병행하여 사용 불가.


        // 아래는 앱바에 메뉴 추가
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping Card is clicked');
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search is clicked');
            },
          ),
        ],
      ),


      //아래는 Drawer 메뉴
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/stard_logo1.PNG'),
              ),

              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/stard_logo1.PNG'),
                  backgroundColor: Colors.white,
                ),
//                CircleAvatar(
//                  backgroundImage: AssetImage('images/stard_logo1.PNG'),
//                  backgroundColor: Colors.white,
//                ),
              ],

              accountName: Text('STARD'),
              accountEmail: Text('stard@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A');
              },
              trailing: Icon(Icons.add),
            ),


          ],
        ),
      ),


      body: Builder(
          builder: (BuildContext context) =>
              Padding(
                padding: const EdgeInsets.all(20.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/stard_logo1.PNG'),
                        radius: 50.0,
                      ),
                    ),
                    Divider(
                      height: 60.0,
                      color: Colors.grey[850],
                      thickness: 3,
                      endIndent: 10,
                    ),
                    Text('Class',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Coding Chef Mild Taste Lecture',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),

                    SizedBox(
                      height: 30,
                    ),

                    // 아래는 스낵바

                    Center(
                      child: FlatButton(
                        child: Text('Show Snackbar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Welcome to STARD!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                                backgroundColor: Colors.teal,
                                duration: Duration(seconds: 2),
                              ),
                          );
                        },
                      ),
                    ),

             // 아래는 토스트 기능
                    Center(
                      child: FlatButton(

                        onPressed: () {
                          flutterToast();
                        },
                          child: Text('Show Toast'),
                           color: Colors.blue,
                           ),
                         ),


                  ],
                ),

              )
      ),
    );
  }
}


void flutterToast() {
  Fluttertoast.showToast(msg: 'Welcome to Flutter',
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.redAccent,
    textColor: Colors.red,
    fontSize: 30.0,
    toastLength: Toast.LENGTH_LONG,
  );
}
