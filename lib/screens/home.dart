import 'package:disease_predictor_app/classes/symptoms.dart';
import 'package:disease_predictor_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? dropDownValue1,
      dropDownValue2,
      dropDownValue3,
      dropDownValue4,
      dropDownValue5;

  String? result1 = 'result1', result2 = 'result2', result3 = 'result3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Patient Name: ',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        width: 180.0,
                        height: 50.0,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                            hintText: 'Enter Your Name',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Symptom1: ',
                        style: kSymptomTextStyle,
                      ),
                      DropdownButton<String>(
                          value: dropDownValue1,
                          onChanged: (newValue) {
                            setState(() {
                              dropDownValue1 = newValue;
                            });
                          },
                          items: symptoms
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Symptom2: ',
                        style: kSymptomTextStyle,
                      ),
                      DropdownButton<String>(
                          value: dropDownValue2,
                          onChanged: (newValue) {
                            setState(() {
                              dropDownValue2 = newValue;
                            });
                          },
                          items: symptoms
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Symptom3: ',
                        style: kSymptomTextStyle,
                      ),
                      DropdownButton<String>(
                          value: dropDownValue3,
                          onChanged: (newValue) {
                            setState(() {
                              dropDownValue3 = newValue;
                            });
                          },
                          items: symptoms
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Symptom4: ',
                        style: kSymptomTextStyle,
                      ),
                      DropdownButton<String>(
                          value: dropDownValue4,
                          onChanged: (newValue) {
                            setState(() {
                              dropDownValue4 = newValue;
                            });
                          },
                          items: symptoms
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Symptom5: ',
                        style: kSymptomTextStyle,
                      ),
                      DropdownButton<String>(
                          value: dropDownValue5,
                          onChanged: (newValue) {
                            setState(() {
                              dropDownValue5 = newValue;
                            });
                          },
                          items: symptoms
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 170.0,
                        child: MaterialButton(
                          color: Colors.redAccent,
                          onPressed: () {
                            setState(() {
                              result1 = 'predicted';
                            });
                          },
                          child: const Text(
                            'Decision Tree',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                      Text(
                        '$result1',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 170.0,
                        child: MaterialButton(
                          color: Colors.greenAccent,
                          onPressed: () {
                            setState(() {
                              result2 = 'predicted';
                            });
                          },
                          child: const Text(
                            'Random Forest',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                      Text(
                        '$result2',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 170.0,
                        child: MaterialButton(
                          color: Colors.blueAccent,
                          onPressed: () {
                            setState(() {
                              result3 = 'predicted';
                            });
                          },
                          child: const Text(
                            'Naive Bayes',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                      Text(
                        '$result3',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
