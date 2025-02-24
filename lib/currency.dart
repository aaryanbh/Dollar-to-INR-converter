import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  Currency({super.key});

  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'INR to Dollar Currency Converter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        titleSpacing: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown, // Background color for the Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text showing the conversion result
            Text(
              result.toStringAsFixed(2), // Format result to 2 decimal places
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Add some space between text and TextField
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Enter Value in INR',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.7), // Slightly visible hint
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.green,
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1), // Lighter fill color
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            SizedBox(height: 20), // Add space between TextField and Button
            TextButton(
              onPressed: () {
                setState(() {
                  // Parse input text to double and convert INR to Dollar
                  result = double.parse(textEditingController.text)*88 ;

                });
              },
              child: Text(
                'Convert',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
