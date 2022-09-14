import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/routeThirdScreen' : (context) => ThirdWidget()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GB_Homewor2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea (

      child: Scaffold(
        appBar: AppBar(
         title: Text(widget.title),
      ),
        body: Center (
          child: Column(
            children: [CupertinoButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondWidget())),
              child: Container(
                alignment: Alignment.center,
                child: Text(style: TextStyle (fontSize: 24, color: Colors.white),'Navigator Push',),
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16)
              ),
            ),
        ),
            CupertinoButton(
              onPressed: () => Navigator.of(context).pushNamed('/routeThirdScreen'),
              child: Container(
                alignment: Alignment.center,
                child: Text(style: TextStyle (fontSize: 24, color: Colors.white),'pushNamed',),
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      builder: (BuildContext context) {
                    return Container();
                  },
                  context: context);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(style: TextStyle (fontSize: 18, color: Colors.white),'ShowModalBotSheet',),
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) =>
                     SizedBox(
                       child: Center(
                         child: Container(
                           alignment: Alignment.center,
                           height: 160,
                           width: 240,
                           decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(16)
                           ),
                           child: Text(style: TextStyle (fontSize: 28, color: Colors.white, decoration: TextDecoration.none),'Im showDialog',),
                         ),
                       ),
                     )
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 14.0),
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16)
              ),
                  child: const Text(style: TextStyle (fontSize: 24, color: Colors.white,),'showDialog',),
            ),
              ),
              GestureDetector(
                onTap: () {
                  showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2023));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 14.0),
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: const Text(style: TextStyle (fontSize: 24, color: Colors.white,),'showDatePicker',),
                ),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 1500),
                child: _flag
                    ? Container(
                  key: Key('1'),
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                )
                    : Container(
                  key: Key('2'),
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () {
                 setState(() {
                   _flag = !_flag;
                 });
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 14.0, 0, 0),
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: const Text(style: TextStyle (fontSize: 18, color: Colors.white,),'AnimatedSwitcher',),
                ),
              ),
      ],
        ),
      )
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSwitcher'),
      ),

    );
  }
}

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ThirdPage'),),
    );
  }
}



