import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:jpy_bills_coins_calculator/calculator_model.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Japanese bills and coins calculator',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<CalculatorModel>(
          create: (_) => CalculatorModel(),
          child: Scaffold(
              appBar: AppBar(
                title: Text('Japanese bills and coins calculator'),
              ),
              body: Consumer<CalculatorModel>(builder: (context, model, child) {
                final formatter = NumberFormat("#,###");
                return SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "合計${formatter.format(model.sum())} 円",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("10,000円"),
                                    color: Colors.white60,
                                    textColor: Colors.black,
                                    onPressed: () {
                                      model.increment10000();
                                    },
                                  ),
                                  Text("${model.get10000()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("5,000円"),
                                    color: Colors.white60,
                                    textColor: Colors.black,
                                    onPressed: () {
                                      model.increment5000();
                                    },
                                  ),
                                  Text("${model.get5000()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("1,000円"),
                                    color: Colors.white60,
                                    textColor: Colors.black,
                                    onPressed: () {
                                      model.increment1000();
                                    },
                                  ),
                                  Text("${model.get1000()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("500円"),
                                    textColor: Colors.white,
                                    color: Colors.grey,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment500();
                                    },
                                  ),
                                  Text("${model.get500()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("100円"),
                                    color: Colors.grey,
                                    textColor: Colors.white,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment100();
                                    },
                                  ),
                                  Text("${model.get100()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("50円"),
                                    color: Colors.grey,
                                    textColor: Colors.white,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment50();
                                    },
                                  ),
                                  Text("${model.get50()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("10円"),
                                    color: Colors.orange,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment10();
                                    },
                                  ),
                                  Text("${model.get10()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("5円"),
                                    color: Colors.yellow,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment5();
                                    },
                                  ),
                                  Text("${model.get5()} 枚"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    child: Text("1円"),
                                    color: Colors.white70,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    onPressed: () {
                                      model.increment1();
                                    },
                                  ),
                                  Text("${model.get1()} 枚"),
                                ],
                              ),
                              RaisedButton(
                                child: Text("クリア"),
                                color: Colors.white,
                                textColor: Colors.black,
                                onPressed: () {
                                  model.clear();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
        ));
  }
}