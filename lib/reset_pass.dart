import 'package:finalpro/verfication.dart';
import 'package:flutter/material.dart';

class forgetPass extends StatelessWidget {
  const forgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Enter your Email",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                  constraints: BoxConstraints.tightForFinite(
                    width: 300,
                    height: 60,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Container(
                    constraints: BoxConstraints.tightForFinite(
                      width: 300,
                      height: 60,
                    ),

                    child: MaterialButton(
                        onPressed: () {
                          Navigator.push( context,
                            MaterialPageRoute(
                              builder: (context) => verfication(),
                            ),
                          );
                        },
                        child: Text(
                          'Send verfication code',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            // backgroundColor: Colors.orange,
                            // color: Colors.white,
                            // fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
