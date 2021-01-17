import 'dart:io';
import 'package:clientsite_epharma/Pharmacy-Catalog-Drug-Registration.dart';
import 'package:flutter/material.dart';

import 'Prescription-Info-Input.dart';
import 'Prescription-Info-Input.dart';
import 'Prescription-Info-Input.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//This is the design for the main page of the app - white background with green bar
    return MaterialApp(
        home: Scaffold(
            appBar:
                AppBar(title: Text("E-Pharma"), backgroundColor: Colors.green),
            body:
                InsertPrescriptionInfoPage() //This inserts the prescription form page into the body of the main page,
            ));

  }
}
