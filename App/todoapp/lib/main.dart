import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:todoapp/models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'To Do App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Stack (
            children: <Widget> [
              TabBarView(
                children: [
                  new Container(
                  color: darkGray,
                ),
                new Container(color: Colors.orange,),
                new Container(
                  color: Colors.lightGreen,
                ),
                ],
                ),
                new Container(
                    padding: EdgeInsets.only(left: 50),
                    height:160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        ),
                        color: goldColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("My Tasks", style:intrayTitleStyle),
                      Container(),
                    ],),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin:EdgeInsets.only(top:120,left:MediaQuery.of(context).size.width*0.5-40),
                      child: FloatingActionButton(
                        child:Icon(Icons.add, size:70),
                        backgroundColor: redColor,
                        onPressed: (){
                          
                        },
                      ),
                    ),
                  ]
          ),
          appBar: AppBar(
            elevation: 0,
            title: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.calendar_today),
                ),
                Tab(
                  icon: new Icon(Icons.add),
                ),
                Tab(
                  icon: new Icon(Icons.menu),
                ),
              ],
              labelColor: darkGray,
              unselectedLabelColor: redColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: goldColor,
          ),
          backgroundColor: Colors.white,
        ),
      ),
      ),
    );
  }
}
