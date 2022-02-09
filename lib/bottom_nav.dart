import 'package:flutter/material.dart';
import 'package:esusu_inclusion_id/inclusion_id.dart';
import 'package:esusu_inclusion_id/main.dart';
import 'package:esusu_inclusion_id/widget.dart';
import 'package:url_launcher/url_launcher.dart';

class WebIndexPage extends StatefulWidget {
  const WebIndexPage({Key? key}) : super(key: key);

  @override
  _WebIndexPageState createState() => _WebIndexPageState();
}

class _WebIndexPageState extends State<WebIndexPage> {
  List<Widget> pages = const [
    InclusionIdWebPage(),
    InclusionIdWebPage(),
    InfoPage(),
    EmailPage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: green,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios_new_rounded), label: "Backward"),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward_ios_rounded), label: " Forward"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Contact us")
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
      body: Container(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const SizedBox(
            height: 130,
          ),
          Center(
            child: Container(
                height: 170,
                width: 170,
                child: Image.asset("assets/images/inclusion_id_gif.gif")),
          ),
          const Expanded(
              child: SizedBox(
            height: 60,
          )),
          Material(
            //borderRadius: BorderRadius.circular(70),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            elevation: 30,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      TextOf('How can we assist you', 12, FontWeight.w400,
                          Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      _launchEmail();
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/images/email.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        TextOf('Send mail', 17, FontWeight.w500, Colors.black),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _makePhoneCall();
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/images/phone.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        TextOf('Phone call', 17, FontWeight.w500, Colors.black),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _smsMessage();
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            child:
                                Image.asset("assets/images/conversation.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        TextOf('SMS', 17, FontWeight.w500, Colors.black),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _sendWhatsAppMess(
                          phone: '+234 8165904908',
                          message: "Hi there, I'm an inclusion.id app user");
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/images/whatsapp.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        TextOf('WhatsApp', 17, FontWeight.w500, Colors.black),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ]));
  }

  void _launchEmail() async {
    await launch(
        "mailto:admin@inclusion.id?subject=AS AN inclusion.id app user");
  }
}

void _makePhoneCall() async {
  await launch('tel: +234 8165904908');
}

void _smsMessage() async {
  await launch('sms: +234 8165904908');
}

void _sendWhatsAppMess({@required phone, @required message}) async {
  String url = 'whatsapp://send?phone=$phone&text=$message';
  await canLaunch(url) ? launch(url) : print('Can not openwhatsapp');
}

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 150),
              child: Container(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Image.asset(
                        "assets/images/inclusion_id_gif.gif",
                        width: 200,
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: green, width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child:
                                    TextOf('Home', 20, FontWeight.w700, green)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SecondSplashScreen()));
                          }),
                      const Expanded(child: SizedBox()),
                      TextOf("Powered By Esusu Africa", 14, FontWeight.w600,
                          green),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
