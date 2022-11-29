import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Amsterdam',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.green,
            ),
            body: Builder(builder: (context) {
              return SingleChildScrollView(
                  child: Column(children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                ),
                const Text(
                    'La città conosciuta anche come "la Venezia del Nord" sarà la meta del nostro viaggio d'
                    'istruzione a Febbraio'),
                Container(
                  height: 70,
                ),
                Image.network(
                    'https://www.amazingaerial.agency/img-get/I00002A9ERf_Unws/s/1200/I00002A9ERf_Unws.jpg'),
                Container(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      SnackBar luoghi = const SnackBar(
                          content: Text(
                              'I luighi da visitare potrebbero essere: MEMO, Museo Van Gogh, la Casa di Anne Frank, ecc.'));
                      ScaffoldMessenger.of(context).showSnackBar(luoghi);
                    },
                    child: const Text('Luoghi'))
              ]));
            })));
  }
}
