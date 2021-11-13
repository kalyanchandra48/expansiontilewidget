import 'package:flutter/material.dart';
import 'models/model.dart';
import 'styles/textstyles.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Expansion()));
}

class Expansion extends StatelessWidget {
  Toolkit toolkit = Toolkit(
      title: 'Map Out your plan',
      description:
          'Create your future vision and work backwards to today. Make sure everyone has 90 day plan ',
      tool: [
        Tools(
          heading: 'Telescope to microscope',
          description:
              ' There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
        ),
        Tools(
          heading: '1 page BBP',
          description: 'jasdjansjdnajsndjasndjansdjas',
        ),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: 390,
                color: Color(0xff82E8D7),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 50),
                      child: GestureDetector(
                        onTap: () {
                          //Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'To ToolKit',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 47,
                left: 78,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Color(0xff82E8D7),
                  child: Image.asset('assets/map2.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  toolkit.title,
                  style: AppFonts.header,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(toolkit.description, style: AppFonts.description),
              ],
            ),
          ),
          SizedBox(
            height: 9,
          ),
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            separatorBuilder: (context, i) {
              return SizedBox(
                height: 10,
              );
            },
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(0xffF2F2F2),
                ),
                child: ExpansionTile(
                  // backgroundColor: Color(0xffF2F2F2),
                  collapsedBackgroundColor: Color(0xffF2F2F2),
                  collapsedTextColor: Colors.black,
                  //collapsedIconColor: Colors.black,
                  title:
                      Text(toolkit.tool[i].heading, style: AppFonts.tileheader),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xffF2F2F2),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(toolkit.tool[i].description,
                            style: AppFonts.tiledes),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, i) {
                        return SizedBox(
                          height: 5,
                        );
                      },
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              color: Colors.white,
                            ),
                            child: ListTile(
                              //            minLeadingWidth: 40,
                              tileColor: Colors.white,
                              leading: Image.asset('assets/map2.png'),
                              title: Text('The 5 Year Vision'),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
