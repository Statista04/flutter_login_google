import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'login_page.dart';


class FirstScreen extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue[100], Colors.blue[400]],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage( 'https://www.google.ca/search?q=minions&client=ubuntu&hs=sxl&tbm=isch&source=iu&ictx=1&fir=_AbkjGuUINJSzM%253A%252CR4IgzFQDLpsc1M%252C%252Fm%252F0tl3fpv&vet=1&usg=AI4_-kTJywrlBgJvInIhGiLHRIm9h3mXJA&sa=X&ved=2ahUKEwj3t8jO7efjAhWBZs0KHck3CJoQ_h0wInoECAcQDw#imgrc=822H7fy5RUPMeM:&vet=1'

              ),
              radius: 60,
              backgroundColor: Colors.transparent,
            ),

            SizedBox(height: 40),
            RaisedButton(
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
              },
              color: Colors.deepPurple,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            )
          ],
        ),
      ),
    ),
  );
}
}