import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int indexVal = 0;
  bool CheckBoxValH = false;
  bool CheckBoxValE = false;
  bool CheckBoxValG = false;
  dynamic RadioVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "STEPPER PAGE",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stepper(
          currentStep: indexVal,
          controlsBuilder: (context, _) {
            return Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        backgroundColor: Colors.teal.shade900),
                    onPressed: () {
                      setState(() {
                        if (indexVal < 10) {
                          indexVal++;
                        }
                      });
                    },
                    child: (indexVal == 10)
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Home Page"))
                        : const Text("Continue")),
                const SizedBox(
                  width: 10,
                ),
                (indexVal != 0)
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            if (indexVal > 0) {
                              indexVal--;
                            }
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  width: 2, color: Colors.teal.shade900)),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.teal.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            );
          },
          steps: <Step>[
            Step(
                isActive: false,
                title: Text(
                  "Profile Pick",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.teal.shade400,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.teal.shade900,
                      mini: true,
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    )
                  ],
                )),
            Step(
                isActive: false,
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "Phone",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "Email",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "DOB",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "Gender",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: Column(
                  children: [
                    RadioListTile(
                        title: Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        value: 'female',
                        groupValue: RadioVal,
                        onChanged: (val) {
                          setState(() {
                            RadioVal = val;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        value: 'male',
                        groupValue: RadioVal,
                        onChanged: (val) {
                          setState(() {
                            RadioVal = val;
                          });
                        })
                  ],
                )),
            Step(
                title: Text(
                  "Current Location",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: Container()),
            Step(
                title: Text(
                  "Nationality",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "Religion",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
            Step(
                title: Text(
                  "Language",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: Column(
                  children: [
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Hindi",
                          style: TextStyle(color: Colors.teal.shade900),
                        ),
                        value: CheckBoxValH,
                        onChanged: (val) {
                          setState(() {
                            CheckBoxValH = val!;
                          });
                        }),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Gujarati",
                          style: TextStyle(color: Colors.teal.shade900),
                        ),
                        value: CheckBoxValG,
                        onChanged: (val) {
                          setState(() {
                            CheckBoxValG = val!;
                          });
                        }),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "English",
                          style: TextStyle(color: Colors.teal.shade900),
                        ),
                        value: CheckBoxValE,
                        onChanged: (val) {
                          setState(() {
                            CheckBoxValE = val!;
                          });
                        }),
                  ],
                )),
            Step(
                title: Text(
                  "Biography",
                  style: TextStyle(color: Colors.teal.shade900),
                ),
                content: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
          ],
        ),
      ),
    );
  }
}
