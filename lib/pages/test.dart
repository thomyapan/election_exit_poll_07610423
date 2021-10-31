import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String? _guessNumber;
  String? _feedback;
  String txt = 'รายชื่อผู้สมัครรับเลือกตั้ง ';
  String txt0 = 'นายกองค์การบริหารส่วนตำบลเขาพระ';
  String txt1 = 'อำเภอเมืองนครนายก จังหวัดนครนายก';



/*@override
  void initState() {
    super.initState();
    _game = Game();
  }*/

  /*@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.grey,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildHeader(),
                  _buildMainContent(),
                  _buildInputPanel(),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/vote_hand.png',
          width: 120,
          height: 120,
        ),
        Text(
          'EXIT POLL',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return _guessNumber == null
    ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt, style: GoogleFonts.pressStart2p(fontSize: 15.0)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(txt0, style: GoogleFonts.pressStart2p(fontSize: 15.0)),
        ),
        Text(txt1, style: GoogleFonts.pressStart2p(fontSize: 15.0)),
      ],
    )
    //? SizedBox.shrink()
        : Column(
    );
  }

  Widget _buildInputPanel() {
    return Container(

    );
  }
}