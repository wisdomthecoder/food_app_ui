import 'package:flutter/material.dart';

class TImerHome extends StatefulWidget {
  const TImerHome({super.key});

  @override
  State<TImerHome> createState() => _TImerHomeState();
}

class _TImerHomeState extends State<TImerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Study Timer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: Stream.periodic(Duration(
              seconds: 5,
            )),
            initialData: 1,
            builder: (context, snapshot) {
              return Text(snapshot.data.toString());
            },
          )
        ],
      ),
    );
  }
}
