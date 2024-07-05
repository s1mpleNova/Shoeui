import 'package:flutter/material.dart';
import 'package:shoeui/pages/HomePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('lib/images/logo.jpg', height: 150),
                ),
                const SizedBox(height: 40),
                Text(
                  "REDTAPE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(height: 40),
                //text
                Text(
                  "Premium quality shoes made with top quality materials",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: const Text(
                        "Shop Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
