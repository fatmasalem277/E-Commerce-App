import 'package:finalpro/logIn.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verfication extends StatelessWidget {
  const verfication({Key? key}) : super(key: key);

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
                  height: 100,
                ),
                Text(
                  "Enter verfication code",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),

                PinCodeTextField(appContext: context, length: 6, onChanged :(value){
                  print(value);
                } ,
                  pinTheme: PinTheme(
                    shape : PinCodeFieldShape.box ,
                    borderRadius : BorderRadius.circular ( 8 ) ,
                    inactiveColor : Colors.grey ,
                    activeColor : Colors.orange ,

                  ),),
                SizedBox(
                  height: 40.0,
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 27,

                      ),
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 5,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
