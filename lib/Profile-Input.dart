import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsertProfileInputPage extends StatefulWidget {
  InsertProfileInputPage() : super();


  @override
  InsertProfileInputState createState() => InsertProfileInputState();
}

class InsertProfileInputState extends State<InsertProfileInputPage> {
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
                    child: Text('Height (cm):'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Weight (kg):'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Date of Birth (DD/MM/YYYY):'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Blood Type:'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Medical Conditions:'),
                  ),
                  TextFormField(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Relevant Medical History:'),
                  ),
                  TextFormField(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Regular Medications:'),
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


