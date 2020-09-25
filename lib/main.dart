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
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '${model.counter}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          model.increment();
                        },
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                      ),
                      // This trailing comma makes auto-formatting nicer for build methods.
                    ],
                  ),
                );
              })),
        )
    );
  }
}
