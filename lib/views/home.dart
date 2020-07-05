import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hummer/core/viewmodels/home_vm.dart';
import 'package:hummer/utils/margin.dart';
import 'package:hummer/utils/theme.dart';

final pv = ChangeNotifierProvider((_) => HomeVM());

class Home extends StatefulHookWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = useProvider(pv);
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: TextField(
                    controller: provider.tec,
                    maxLines: null,
                    style: GoogleFonts.sourceCodePro(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Input song\'s HUM code',
                      hintStyle: GoogleFonts.sourceCodePro(
                        color: black.withOpacity(0.8),
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const YMargin(30),
                Container(
                  width: 200,
                  height: 50,
                  child: FlatButton(
                    color: primary,
                    onPressed: () {
                      provider.process();
                    },
                    child: Text('PROCESS',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: white,
                              fontSize: 10,
                              letterSpacing: 1),
                        )),
                  ),
                ),   const YMargin(30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
