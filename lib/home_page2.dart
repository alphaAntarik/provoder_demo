import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provoder_demo/providers.dart';
import 'package:provoder_demo/result.dart';
import 'package:provoder_demo/text_field_widget.dart';

class HomePage2 extends StatelessWidget {
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final datamodel2 =
        Provider.of<StateManagementWithProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 2"),
      ),
      body: Column(
        children: [
          Center(
            child: Text_Field(controller: controller2),
          ),
          TextButton(
              onPressed: () {
                datamodel2.setData2(controller2.value.text.toLowerCase());
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Result()));
              },
              child: Text("Go to next"))
        ],
      ),
    );
  }
}
