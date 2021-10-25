import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,

        // // leading은 간단한 위젯이나 아이콘 등을
        // // 앱바 타이틀 왼쪽에 위치시키는 기능을 함
        // // 근데 앱바에서만 쓰이는 기능은 아님
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),

        // actions는 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용
        // 여기에서는 쇼핑카트랑 서치 버튼을 사용
       actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/salah.gif'),
                // 투명이미지일 경우, 배경 색 바꿔줘야 함.
                // backgroundColor: Colors.white,
              ),
              // 다른 계정 이미지를 UserAccountsDrawerHeader의 오른편에 추가할 수 있음
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/salah_celebration.gif'),
                  // 투명이미지일 경우, 배경 색 바꿔줘야 함.
                  // backgroundColor: Colors.white,
                ),
                // otherAccountsPictures:의 마지막에 s가 붙은 걸로 알 수 있듯이 여러 개의 다른 계정 이미지를 붙일 수 있음.
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/salah_celebration.gif'),
                //   // 투명이미지일 경우, 배경 색 바꿔줘야 함.
                //   // backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('SALAH'),
              accountEmail: Text('salah@naver.com'),
              onDetailsPressed:(){
                print('arrow is clicked');
              } ,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              // leading 속성과는 반대로 오른쪽에 아이콘 추가할 때 사용
              trailing: Icon(Icons.add,
                color: Colors.grey[850],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              // leading 속성과는 반대로 오른쪽에 아이콘 추가할 때 사용
              trailing: Icon(Icons.add,
                color: Colors.grey[850],
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              // leading 속성과는 반대로 오른쪽에 아이콘 추가할 때 사용
              trailing: Icon(Icons.add,
                color: Colors.grey[850],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

