import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7fb),
      // backgroundColor: Colors.greenAccent, //Color(0xfff6f7fb)
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: OverflowBox(
            maxWidth: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).width / 2 + 60,
                  width: MediaQuery.sizeOf(context).width / 3 + 20,
                  // color: Colors.yellow,
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Container(
                    height: MediaQuery.sizeOf(context).width / 2,
                    width: MediaQuery.sizeOf(context).width / 3,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 30,
                          offset: Offset(0, 0),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffed8b88),
                          Color(0xffed8c89),
                          Color(0xfff0a092),
                          Color(0xfff4bcaa)
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        bottomLeft: Radius.circular(18.0),
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(MediaQuery.of(context).size.width / 5.5),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 16,
                          bottom: MediaQuery.of(context).size.width / 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Breakfast',
                              style: GoogleFonts.outfit(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: MediaQuery.of(context).size.width / 23),
                              )),
                          SizedBox(
                            height: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bread,',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: MediaQuery.of(context).size.width / 32),
                                  )),
                              Text('Peanut butter,',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: MediaQuery.of(context).size.width / 32),
                                  )),
                              Text('Apple',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: MediaQuery.of(context).size.width / 32),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('525',
                                  style: GoogleFonts.outfit(
                                    letterSpacing: 2,
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: MediaQuery.of(context).size.width / 13),
                                  )),
                              SizedBox(
                                width: 7,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.width / 35),
                                child: Text('kcal',
                                    style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: MediaQuery.of(context).size.width / 32),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.14),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'images/toast3.png',
                        scale: 13,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
