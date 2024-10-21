import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers2/homeprovider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Provider"),
        ),
        body: SafeArea(
          child: Center(
            child: ChangeNotifierProvider<Homeproviders>(
              create: (context) => Homeproviders(),
              child:
                  Consumer<Homeproviders>(builder: (context, provider, child) {
                return Column(
                  children: [
                    Text(
                      provider.eligibilityMessege.toString(),
                      style: TextStyle(
                          color: (provider.eligibility == true)
                              ? Colors.green
                              : Colors.red),
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Entetr your age",
                        ),
                        onChanged: (val) {
                          provider.checkEligibility(int.parse(val));
                        })
                  ],
                );
              }),
            ),
          ),
        ));
  }
}
