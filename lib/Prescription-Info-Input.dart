import 'dart:io';

void main () {
    print("Patient Name: ");
    String patientname = stdin.readLineSync();
    //Patient Name Input

    print("Month/Day/Year: ");
    String Date = stdin.readLineSync();
    //Date Input

    print("Type of Drug: ");
    String Drug = stdin.readLineSync();
    //Type of Drug Input

    print("Additional Comments: ");
    String Comments = stdin.readLineSync();
    //Extra notes from doctor (Quantities, Usage Instructions)
}
