import 'package:flutter/material.dart';

class Nasabah extends StatefulWidget {
  Nasabah({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NasabahState createState() => _NasabahState();
}

class _NasabahState extends State<Nasabah> {
  int counter = 0;
  bool isSwitched = false;

  void incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 50),
                    bottomRight: Radius.elliptical(200, 50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Joy Pratama,',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      'your Fund available',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Rp.475.640,78',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 350,
                height: 200,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 175,
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 100,
                          height: 40,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 100,
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '****',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('****', style: TextStyle(color: Colors.white)),
                        Text('****', style: TextStyle(color: Colors.white)),
                        Text(
                          '1234',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'blablabla',
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text('blabla'),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.black,
                          activeColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'LASTEST TRANSACTIONES',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 3),
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: IconButton(
                              icon: Icon(Icons.arrow_upward), onPressed: null),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 100, top: 20),
                          child: Column(
                            children: [
                              Text('blablaba'),
                              Text('blablaba'),
                              Text('blablaba'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text('Rp.123.000,00'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: IconButton(
                              icon: Icon(Icons.arrow_upward), onPressed: null),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 100, top: 10),
                          child: Column(
                            children: [
                              Text('blablaba'),
                              Text('blablaba'),
                              Text('blablaba'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('Rp.123.000,00'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: IconButton(
                              icon: Icon(Icons.arrow_upward), onPressed: null),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 100, top: 10),
                          child: Column(
                            children: [
                              Text('blablaba'),
                              Text('blablaba'),
                              Text('blablaba'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('Rp.123.000,00'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 50, top: 30),
                      child: FloatingActionButton(
                        backgroundColor: Colors.red,
                        onPressed: () => {},
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
