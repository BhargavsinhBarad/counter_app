import 'package:counter_app/Model/counter_model.dart';
import 'package:counter_app/Providers/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/counter_provider.dart';

class count extends StatefulWidget {
  const count({Key? key}) : super(key: key);

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<themeprovider>(context, listen: false)
                    .changetheme();
              },
              icon: Icon(Icons.brightness_4))
        ],
        title: Text("Counter page"),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<counterprovide>(context, listen: false).increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<counterprovide>(context, listen: false).Decrement();
            },
            child: Icon(Icons.minimize_rounded),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "${Provider.of<counterprovide>(context, listen: true).count.count}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
