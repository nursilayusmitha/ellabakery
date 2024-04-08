import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengatur vertikal ke atas
          children: [
            SizedBox(
                height: MediaQuery.of(context).padding.top +
                    16), // Spasi dari atas dengan menambahkan padding top
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image_profile.png'),
            ),
            SizedBox(height: 16), // Spasi antara foto dan teks
            Text(
              "Nursila Yusmitha Angghani",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
