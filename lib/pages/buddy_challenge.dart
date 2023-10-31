import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuddyChallenge extends StatefulWidget {
  const BuddyChallenge({super.key});

  @override
  State<BuddyChallenge> createState() => _BuddyChallengeState();
}

class _BuddyChallengeState extends State<BuddyChallenge> {
  List<String> medalcolor = ["gold", "grey", "grey", "gold", "gold", "grey"];

  List<String> time = ["2h", "1h", "30m", "2h", "2h", "30m"];

  int counter = 0;
  int targetrange=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: Text(
            '3 Day Career Growth\n Challenge',
            style: GoogleFonts.roboto(
              color: const Color(0xFF1C1B1F),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Day 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Text(
                      'Day 2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Text(
                      'Day 3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage("assets/images/gold.png"),
                          radius: MediaQuery.of(context).size.width * 0.06,
                        ),
                        if (counter % 2 == 0)
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Shivam\n',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '2h 30m',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage("assets/images/gold.png"),
                          radius: MediaQuery.of(context).size.width * 0.06,
                        ),
                        if (counter % 2 == 0)
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Aakash\n',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '3h 30m',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing:
                              MediaQuery.of(context).size.width * 0.02,
                          mainAxisSpacing:
                              MediaQuery.of(context).size.width * 0.02,
                        ),
                        itemCount: medalcolor.length,
                        itemBuilder: (context, index) {
                          return Card(
                              elevation: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/${medalcolor[index]}.png"),
                                  ),
                                  Text(
                                    time[index],
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                      letterSpacing: 0.15,
                                    ),
                                  )
                                ],
                              ));
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Day 1',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/gold.png"),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Startup Work ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '10m to 30m',
                                  style: GoogleFonts.roboto(
                                    color: const Color(0xFF707070),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Row(
                              children: [
                                Image(
                                    image: AssetImage("assets/images/gold.png")),
                                Text(
                                  '2h',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/grey.png"),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Medical Exam Study ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          counter++;
                                        });
                                      },
                                      child: (counter % 2 == 0)
                                          ? const Icon(Icons.arrow_drop_down)
                                          : const Icon(Icons.arrow_drop_up),
                                    ),
                                    Text(
                                      '10m to 30m',
                                      style: GoogleFonts.roboto(
                                        color: const Color(0xFF707070),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                        if(targetrange==2)  Row(
                              children: [
                                const Image(
                                    image: AssetImage("assets/images/grey.png")),
                                Text(
                                  '10m',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                             if(targetrange==3)  Row(
                              children: [
                                const Image(
                                    image: AssetImage("assets/images/gold.png")),
                                Text(
                                  '45m',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                        if(targetrange==1)    FloatingActionButton(
                              onPressed: () {
                                showDialog(
                               
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        backgroundColor: Colors.black,        
                                    title: const Text("Worked for?"),
                                    content:   Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                              children: [
                                               const  Image(
                                                    image: AssetImage(
                                                        "assets/images/grey.png")),
                                                           const SizedBox(
                                                width: 3,
                                               ),
                                               const  Text("Worked for min target\n 1m",
                                               style: TextStyle(
                                                color: Colors.white
                                               ),),
                                               const SizedBox(
                                                width: 12,
                                               ),
                                                FloatingActionButton(
                                                  onPressed: () {
                                                 Navigator.of(ctx).pop();
                                                 setState(() {
                                                   targetrange=2;
                                                 });
                                                  },
                                                  backgroundColor:
                                                      const Color(0xFFD9D9D9),
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(50)),
                                                ),
                                              ],
                                            ),
                                         const    SizedBox(
                                              height: 10,
                                            ),
                                             Row(
                                              children: [
                                               const  Image(
                                                    image: AssetImage(
                                                        "assets/images/gold.png")),
                                                 const SizedBox(
                                                width: 1,
                                               ),
                                               const  Text("Worked for max target\n 30m",
                                               style: TextStyle(
                                                color: Colors.white
                                               ),
                                               ),
                                               const SizedBox(
                                                width: 12,
                                               ),
                                                FloatingActionButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                    setState(() {
                                                   targetrange=3;
                                                 });
                                                  },
                                                  backgroundColor:
                                                      const Color(0xFFD9D9D9),
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(50)),
                                                ),
                                              ],
                                            ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop();
                                        },
                                      child: const Text("Ok"),
                                      ),
                                    const  TextField(
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                        decoration: InputDecoration(
                                        
                                        label: Text("Enter Time",
                                        style: TextStyle(
                                          color: Colors.white
                                        ),)
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              backgroundColor: const Color(0xFFD9D9D9),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (counter % 2 != 0) ontapcard(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ontapcard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 20, right: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Ch 1 Nervous system',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '2. Brain disease',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
