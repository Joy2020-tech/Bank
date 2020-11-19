import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int counter = 0;

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
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 50),
                        bottomRight: Radius.elliptical(200, 50))),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Icon(
                            Icons.view_list,
                            color: Colors.white,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Welcome,',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text('Joy Pratama',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ],
                              ),
                              Text(
                                'Silahkan Pilih icon dibawah sesuai kebutuhan anda',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                onPressed: null))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 30,
                  bottom: 20,
                ),
                child: Container(
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/1.jpg'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                              Container(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                    image: AssetImage('assets/2.jpg')),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Image(
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 120,
                                    image: AssetImage('assets/3.jpg')),
                              ),
                              Container(
                                child: Image(
                                    fit: BoxFit.cover,
                                    width: 90,
                                    height: 90,
                                    image: AssetImage('assets/4.jpg')),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Image(
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 120,
                                    image: AssetImage('assets/5.jpg')),
                              ),
                              Container(
                                child: Image(
                                    fit: BoxFit.cover,
                                    width: 90,
                                    height: 90,
                                    image: AssetImage('assets/6.jpg')),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () => {},
                      child: Icon(Icons.add),
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
