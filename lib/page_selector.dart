// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:esusu_inclusion_id/bottom_nav.dart';

class SimplePageSelector extends StatefulWidget {
  const SimplePageSelector({Key? Key}) : super(key: Key);
  _SimplePageSelectorState createState() => _SimplePageSelectorState();
}

class _SimplePageSelectorState extends State<SimplePageSelector> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 4,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Column(children: [
                                  Image.asset("assets/images/dgi inclusion.jpg",
                                      width: double.infinity, height: 380.8),
                                  SizedBox(height: 40),
                                  Text("Digital Inclusion for All",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                        "Advancing a Digital Economy for a Digital Nigeria",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mulish(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  SizedBox(height: 60),
                                  TabPageSelector(
                                    indicatorSize: 10,
                                    selectedColor: Colors.blue,
                                  ),
                                ]),
                              ),
                            ),
                            Column(children: [
                              Image.asset("assets/images/verify.png",
                                  width: double.infinity, height: 380.8),
                              SizedBox(height: 40),
                              Text("Digital Identification",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Facilitate SIM, NIN & BVN Registration",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 10,
                                selectedColor: Colors.blue,
                              ),
                            ]),
                            Column(children: [
                              Image.asset("assets/images/idd.jpg",
                                  width: double.infinity, height: 380.8),
                              SizedBox(height: 40),
                              Text("Smart Verification",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Verify Identities in a secured way",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 10,
                                selectedColor: Colors.blue,
                              ),
                            ]),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "assets/images/financial_inclusion.png",
                                      width: double.infinity,
                                      height: 380.8),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("Financial Inclusion",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                        "Promote agency banking and digital financial services",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mulish(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  SizedBox(height: 40),
                                  Flexible(
                                    child: TabPageSelector(
                                      indicatorSize: 10,
                                      selectedColor: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                    height: 1,
                                  )),
                                  InkWell(
                                      child: Container(
                                          width: double.infinity,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.orange),
                                          child: Center(
                                            child: Text("Get started",
                                                style: GoogleFonts.mulish(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          )),
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WebIndexPage()),
                                            (route) => false);
                                      }),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//Padding(padding: EdgeInsets.all(8), child: ,),