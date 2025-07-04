import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 206, 216, 68),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 8, 8, 8)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 42, 41, 41)),
                decoration: InputDecoration(
                  hintText: 'Please Enter the Amount In USD',
                  hintStyle: TextStyle(color: Color.fromARGB(153, 10, 10, 10)),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(153, 23, 23, 23),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            //button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  //debug realse profile
                  if (kDebugMode) {
                    print('button is clicked');
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 244, 243, 241),
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 64, 86, 255),
                  ),
                  fixedSize: MaterialStatePropertyAll(Size(180, 40)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
