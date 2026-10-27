import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Mypages1(),
    // home: Mypages2(),
  ));
}
class Mypages1 extends StatelessWidget {
  const Mypages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2 Aturan Constrain atau batas dan ukuran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('induk memaksa anak ada di kandang  jadi ga boleg gede gede atau melewati batas'),
            const SizedBox(height: 10),

            ConstrainedBox(
              constraints:  const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  'saya masukin 500*50 tapi cuma dapet 200*10 karena emg batas nya segitu',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
