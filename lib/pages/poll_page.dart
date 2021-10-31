import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class PollPage extends StatefulWidget {
  const PollPage({Key? key}) : super(key: key);

  @override
  _PollPageState createState() => _PollPageState();
}

class _PollPageState extends State<PollPage> {
  String txt1 = 'รายชื่อผู้สมัครรับเลือกตั้ง ';
  String txt2 = 'นายกองค์การบริหารส่วนตำบลเขาพระ';
  String txt3 = 'อำเภอเมืองนครนายก จังหวัดนครนายก';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                    'assets/images/vote_hand.png',
                    alignment: Alignment.center,
                    height: 120.0,
                    width: 120.0,
                  ),
                ),
              Text(
                'EXIT POLL\n',
                style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.white70
                ),
              ),
              Text(
                'เลือกตั้ง อบต.\n',
                style: GoogleFonts.prompt(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal
                ),
              ),
              Text(
                txt1,
                style: GoogleFonts.prompt(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              Text(
                txt2,
                style: GoogleFonts.prompt(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              Text(
                txt3,
                style: GoogleFonts.prompt(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text(
                      'ดูผล',
                      style: GoogleFonts.prompt(fontSize: 20.0,color: Colors.white),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
