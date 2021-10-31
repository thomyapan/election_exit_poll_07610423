import 'package:election_exit_poll_07610423/models/item.dart';
import 'package:election_exit_poll_07610423/services/api.dart';
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
  late Future<List<Item>> _futurePollPage;


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
              /*Expanded(
                child: Container(
                    child: FutureBuilder<List<Item>>(
                      future: _futurePollPage,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (snapshot.hasData) {
                          var exitPoll = snapshot.data;

                          return ListView.builder(
                              padding: EdgeInsets.all(8.0),
                              itemCount: exitPoll!.length,
                              itemBuilder: (BuildContext context, int index) {
                                var pollItem = exitPoll[index];

                                return Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  margin: EdgeInsets.all(8.0),
                                  elevation: 5.0,
                                  shadowColor: Colors.black.withOpacity(0.2),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  pollItem.displayName,
                                                  style: GoogleFonts.prompt(
                                                      fontSize: 20.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ผิดพลาด: ${snapshot.error}'),
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _futurePollPage = _loadPoll();
                                      });
                                    },
                                    child: Text('ลองใหม่')),
                              ],
                            ),
                          );
                        }
                        return SizedBox.shrink();
                      },
                    )),
              ),*/
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

  /*Future<List<Item>> _loadPoll() async {
    List list = await Api().fetch('poll_page');
    var PollPage = list.map((item) => Item.fromJson(item)).toList();
    return PollPage;
  }*/

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: Theme.of(context).textTheme.bodyText2),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
