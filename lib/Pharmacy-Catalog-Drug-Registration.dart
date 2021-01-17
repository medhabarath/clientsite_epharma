import 'package:flutter/material.dart';

class InsertPharmacyCatalogPage extends StatefulWidget {
  InsertPharmacyCatalogPage() : super();


  @override
  InsertPharmacyCatalogState createState() => InsertPharmacyCatalogState();
}

class InsertPharmacyCatalogState extends State<InsertPharmacyCatalogPage> {
  final _formKey = GlobalKey<FormState>();
//This is all the code for the form where pharmacies can register drugs to the catalog
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
                    child: Text('Name of material or drug to be registered:'),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Quantity of item: '),
                  ),
                  TextFormField(validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }),
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
