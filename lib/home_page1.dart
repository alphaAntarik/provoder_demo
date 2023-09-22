import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provoder_demo/home_page2.dart';
import 'package:provoder_demo/providers.dart';
import 'package:provoder_demo/text_field_widget.dart';

class HomePage1 extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final datamodel1 =
        Provider.of<StateManagementWithProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage 1'),
      ),
      body: Column(
        children: [
          Center(child: Text_Field(controller: controller1)),
          TextButton(
              onPressed: () {
                datamodel1.setData1(controller1.value.text.toString());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage2()));
              },
              child: Text("Go to next"))
        ],
      ),
    );
  }
}
