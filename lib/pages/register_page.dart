import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register Now!",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.2)),
                      SizedBox(
                        height: 16,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3,
                                ),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration.collapsed(
                                    hintText: "Full Name",
                                    hintStyle:
                                        TextStyle(color: Colors.black87)),

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3,
                                ),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black87),

                                decoration: InputDecoration.collapsed(
                                    hintText: "Email",
                                    hintStyle:
                                        TextStyle(color: Colors.black87)),

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3,
                                ),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black87),
                                obscureText: true,

                                decoration: InputDecoration.collapsed(
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.black87)),

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3,
                                ),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black87),
                                obscureText: true,

                                decoration: InputDecoration.collapsed(
                                    hintText: "Confirm Password",
                                    hintStyle:
                                        TextStyle(color: Colors.black87)),

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Center(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context).primaryColor),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ))),
                                  onPressed: () {
                                    // Validate returns true if the form is valid, or false otherwise.
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, display a snackbar. In the real world,
                                      // you'd often call a server or save the information in a database.
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text('Processing Data')));
                                    }
                                  },
                                  child: Text(
                                    'Login',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context).backgroundColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ))),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/login");
                                },
                                child: Text(
                                  'Already Have an Account?',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
