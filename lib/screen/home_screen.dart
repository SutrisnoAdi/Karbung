import 'package:flutter/material.dart';
import 'package:karanganbunga/screen/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                SizedBox(height: 32),
                Text(
                  "Nama : Dafid Ahmad Fauzi",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "NIM : 190103039",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 24),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(42, 14, 42, 14),
                  child: Text("Logout"),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  primary: Colors.red,
                ),
                onPressed: () async {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const SplashScreen()), (route) => false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
