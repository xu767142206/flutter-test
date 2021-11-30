import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new RandomWords(),
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('test demo'),
        ),
        body: new Container(
            padding: EdgeInsets.only(top: 100),
            height: 500,
            child: new Center(
              child: new Column(children: [
                new Center(
                  child: new Text('登录', style: new TextStyle(fontSize: 35)),
                ),
                TextFormField(
                    validator: (value) {
                      return value.length > 11 ? "账号长度不能超过11位" : null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "请输入账号",
                      prefixIcon: Icon(
                        Icons.access_time_sharp,
                        color: Colors.pink,
                      ),
                    )),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: '密码',
                    helperText: '',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.pink,
                    ),
                  ),
                ),
                new MaterialButton(
                  minWidth: 1000,
                  height: 50,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: new Text('登录'),
                  onPressed: () {
                    print("ddddddd");
                  },
                )
              ]),
            )));
  }
}
