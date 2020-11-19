import 'package:flutter/material.dart';

class BankLogin extends StatefulWidget {
  BankLogin({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BankLoginState createState() => _BankLoginState();
}

class _BankLoginState extends State<BankLogin> {
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
                child: Text(
                  'Bank',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'masukan no pengguna anda',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.red,
                                  ),
                                  hintText: 'Masukan No. Rekening',
                                  labelText: ''),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'password pendul',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.red,
                                  ),
                                  hintText: 'masukan Password',
                                  labelText: ''),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  height: 50,
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        border: Border.all(
                                            width: 2, color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      width: 100,
                                      height: 50,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'login',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        border: Border.all(
                                            width: 2, color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      width: 100,
                                      height: 50,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Signup',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        onChanged: (value) {},
                                        value: false,
                                        activeColor: Color(0xFF6200EE),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'I Agree with Terms and Conditional Options',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                          width: 2, color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    width: 100,
                                    height: 30,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Colors.red,
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
