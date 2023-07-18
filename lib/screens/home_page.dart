import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Consumer<HomePageProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          provider.eligibilityMessage.toString(),
                          style: TextStyle(
                            color: (provider.isElligible == true)
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration(hintText: "Enter Your Age"),
                          onChanged: (value) {
                            provider.checkEligibility(int.parse(value));
                          },
                        )
                      ],
                    );
                  },
                ))));
  }
}
