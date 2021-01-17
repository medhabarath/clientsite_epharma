import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsertPrescriptionInfoPage extends StatefulWidget {
  InsertPrescriptionInfoPage() : super();


  @override
  InsertPrescriptionInfoState createState() => InsertPrescriptionInfoState();
}

class InsertPrescriptionInfoState extends State<InsertPrescriptionInfoPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Form(
            key: _formKey,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Name of Patient:'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Date (Day/Month/Year):'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Type of Drug:'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Additional Comments:'),
                  ),
                  TextFormField(),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text('Submit'))
                ]))));
  }
}