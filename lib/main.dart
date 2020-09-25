import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tv_remote_controller/tv_model.dart';

void main() {
  runApp(TVRemoteController());
}

class TVRemoteController extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TV Remote Controller',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ChangeNotifierProvider<TVModel>(
          create: (_) => TVModel(),
          child: Scaffold(
              appBar: AppBar(
                title: Text('TV Remote Controller'),
              ),
              body: Consumer<TVModel>(builder: (context, model, child) {
                return SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.power_settings_new,
                                  color: Colors.red, size: 30),
                              onPressed: () async {
                                await model.power();
                              },
                            ),
                          ],
                        ),
                        Visibility(
                          visible: true,
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        onPressed: () async {
                                          await model.channel(1);
                                        }),
                                    FloatingActionButton(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(2);
                                      },
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(3);
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(4);
                                      },
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(5);
                                      },
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        "6",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(6);
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                      child: Text(
                                        "7",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(7);
                                      },
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        "8",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.channel(8);
                                      },
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        "M",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        await model.menu();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: true,
                          child: Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_circle_up,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.volumeUp();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_circle_down,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.volumeDown();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: FloatingActionButton(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    onPressed: () async {
                                      await model.ok();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, -0.6),
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_drop_up,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.up();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0.6),
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_drop_down,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.down();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.6, 0),
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_right,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.right();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.7, 0),
                                  child: FloatingActionButton(
                                    child: Icon(Icons.arrow_left,
                                        size: 30, color: Colors.white),
                                    onPressed: () async {
                                      await model.left();
                                    },
                                  ),
                                ),
                              ],
                            ),
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
