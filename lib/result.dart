import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provoder_demo/providers.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<StateManagementWithProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${dataModel.data1}'),
            Text('${dataModel.data2}'),
          ],
        ),
      ),
    );
  }
}
