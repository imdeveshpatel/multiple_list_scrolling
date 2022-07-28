import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              color: Colors.green.shade200,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (_, i) => ListTile(
                  title: Text("Item $i"),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 500,
              color: Colors.teal,
              child: ListView.builder(
                itemCount: 70,
                itemBuilder: (_, i) => ListTile(
                  title: Text("Item $i"),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 200,
              decoration: const BoxDecoration(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
