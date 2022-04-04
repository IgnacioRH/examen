import 'package:flutter/material.dart';

class ListViewDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview inside Dialog"),
      ),
      body: Container(
        height: double.infinity,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Pick Item',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        color: Colors.blueAccent,
                      ),
                      content: setupAlertDialoadContainer(context),
                    );
                  });
            },
            child: Text("SHow Dialog with Listview"),
          ),
        ),
      ),
    );
  }

  Widget setupAlertDialoadContainer(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.grey,
          height: 300.0, // Change as per your requirement
          width: 300.0, // Change as per your requirement
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('List Item $index'),
                )),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
        )
      ],
    );
  }
}
