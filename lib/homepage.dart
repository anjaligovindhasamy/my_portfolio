import 'package:anjaliportfolio/BrandAssets/brandcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   Homepage({super.key});



  bool isExpand = false;
  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();
  var key5 = GlobalKey();
  var key6 = GlobalKey();


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    bool isMobileScreen = screenSize <= 800;
    print(screenSize);
    return  Scaffold(
      // backgroundColor: Color(0xff80EBD9),
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: superBlue,
        backgroundColor: Colors.white,
        titleSpacing: 300,
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('Anjali',
                style: TextStyle(color: darkBlue, fontSize: 14, fontWeight: FontWeight.bold),),
            ],
          ),
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {Scrollable.ensureVisible(key1.currentContext!);},
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {Scrollable.ensureVisible(key2.currentContext!);},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {Scrollable.ensureVisible(key3.currentContext!);},
                child: Text(
                  'Project',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {Scrollable.ensureVisible(key5.currentContext!);},
                child: Text(
                  'Contact',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),


        actions: [
          Padding(padding: EdgeInsets.only(right: 100)),
          IconButton(
              onPressed: () {_launchURL('https://wa.me/+917904535080');}, icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.black)),
          IconButton(
              onPressed: () {_launchURL('https://www.linkedin.com/in/anjali-g-b37a27284/');}, icon: const Icon(FontAwesomeIcons.linkedin, color: Colors.black)),
          IconButton(
              onPressed: () {_launchURL('https://github.com/anjaligovindhasamy');}, icon: const Icon(FontAwesomeIcons.github, color: Colors.black)),
        ],
      ),


      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 950) {
            // For screens smaller than 700 pixels (mobile screens)
            return SingleChildScrollView(
               // Adjust padding for smaller screens
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          key: key1,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Hey There I’m Anjali', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.black)),
                                  Text('Full Stack Developer', style: TextStyle(fontSize: 15,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Text('A Python developer dedicated to crafting innovative solutions.Explore my work and lets bring your ideas to life', style: TextStyle(fontSize: 14,color: Colors.black), textAlign: TextAlign.center,),
                                  ),
                                  SizedBox(height: 24,),
                                  Container(
                                    height: 26,
                                    width: 100,
                                    color: darkBlue,
                                    child: TextButton(onPressed: (){Scrollable.ensureVisible(key3.currentContext!);},
                                      child: Text('My Projects', style: TextStyle(color: Colors.black),),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 60),
                                  child: Image.asset('assets/heroimage1.png', height: 300,width: 300,),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),

                        // *******************************************  Section 1 End   *******************************************************

                        // *******************************************  Section 2 start *******************************************************

                        Column  (
                          key: key2,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('About Me', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Text('Hi, I''m Anjali, a budding developer with a flair for web technologies.'
                                        'Proficient in HTML, CSS, Python, SQL, and Next.js, I''m passionate'
                                        'about creating visually appealing and responsive digital', style: TextStyle(fontSize: 14,color: Colors.black), textAlign: TextAlign.center,),
                                  ),
                                  SizedBox(height: 24,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 70,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('Python', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),SizedBox(height: 10,),
                                            Container(
                                              height: 28,
                                              width: 80,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('My SQL', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),SizedBox(height: 10,),
                                            Container(
                                              height: 28,
                                              width: 100,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('Bootstrap', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 70,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('HTML', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),SizedBox(height: 10,),
                                            Container(
                                              height: 28,
                                              width: 80,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('CSS', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),SizedBox(height: 10,),
                                            Container(
                                              height: 28,
                                              width: 110,
                                              color: darkgray,
                                              child: TextButton(onPressed: (){},
                                                child: Text('Git & GitHub', style: TextStyle(color: Colors.black),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),


                                    // SizedBox(height: 28,),
                                    // Container(
                                    //   height: 26,
                                    //   width: 100,
                                    //   color: darkBlue,
                                    //   child: TextButton(onPressed: (){_launchURL('https://www.linkedin.com/in/anjali-g-b37a27284/');},
                                    //     child: Text('Learn More', style: TextStyle(color: Colors.black),),
                                    //   ),
                                    // )
                                ],
                              ),
                          ],
                        ),
                        SizedBox(
                          height: 34,
                        ),

                        // ****************************************************************************************************
                        //                                     Project
                        // ****************************************************************************************************

                        Column(
                          key: key3,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Projects', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                                SizedBox(height: 20),

                                Column(
                                  children: [
                                    Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.7  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.6   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          //
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage3.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('The Bank Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:10.0, right: 10,),
                                                child: Text('I contributed to a banking application, applying OOP principles and utilizing Python. My role involved designing and implementing system components, showcasing my proficiency in OOP and Python development.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),


                                    Padding(
                                      padding: const EdgeInsets.all(40.0),
                                      child: Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.7  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.6   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage4.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('Ticket Booking Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:10.0, right: 10,),
                                                child: Text('I independently developed the front-end of an online job application using HTML and CSS. This project demonstrated my proficiency in creating visually appealing and user-friendly interfaces, showcasing my skills in front-end web development.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),
                                    ),


                                       Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.7  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.6   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage5.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('Online Job Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                child: Text('I contributed to a banking application, applying OOP principles and utilizing Python. My role involved designing and implementing system components, showcasing my proficiency in OOP and Python development.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),                                SizedBox(height: 60),


                        // *******************************************************************************************************************************

                        // *******************************************************  edication ************************************************************************

                        Column(
                          key: key4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text('Education', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                   Column(
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Text('2018-2020', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),
                                      SizedBox(height: 150),

                                      Container(
                                        width: 90,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('2020-2023', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),
                                      SizedBox(height: 150),

                                      Container(
                                        width: 110,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Text('Aug - Jan(2024)', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),
                                    ],
                                  ),




                                Column(
                                  children: [
                                    Container(
                                      height: 410,
                                      width: 2, // or specify a specific width
                                      color: Colors.black, // or any color you desire
                                    ),
                                  ],
                                ),



                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 120),
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: 210,
                                                height: 160,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text('12th Standard',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                      child: Text('In my final year of high school, I excelled academically while actively leading extracurricular initiatives, showcasing my strong work ethic and leadership abilities.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(21),
                                                    color: Color(0x7f00d6b4)
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),

                                          Column(
                                            children: [
                                              Container(
                                                width: 210,
                                                height: 160,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text('BSC computer science',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                      child: Text('I achieved an outstanding 88.82% GPA in my BSc Computer Science program, showcasing my strong commitment to academic excellence and proficiency in technical subjects.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(21),
                                                    color: Color(0x7f00d6b4)
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),

                                          Column(
                                            children: [
                                              Container(
                                                width: 210,
                                                height: 160,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text('Python Full Stack Cource',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                      child: Text('In my final year of high school, I excelled academically while actively leading extracurricular initiatives, showcasing my strong work ethic and leadership abilities.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(21),
                                                    color: Color(0x7f00d6b4)
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),

                        SizedBox(
                          height: 60,
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 80, ),
                              child:
                              Text('Contact', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        Column(
                          key: key5,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: () {_launchURL('https://www.linkedin.com/in/anjali-g-b37a27284/');},
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('LinkedIn', textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                    Image.asset('assets/linkedin.png', height: 150,width: 150,),
                                  ],
                                ),
                              ),
                            ), SizedBox(height: 20,),
                            InkWell(
                              onTap: () {_launchURL('https://wa.me/+917904535080');},
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('Whatsapp', textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                    Image.asset('assets/whatsapp.png', height: 150,width: 150,),
                                  ],
                                ),
                              ),
                            ), SizedBox(height: 20,),

                            InkWell(
                              onTap: () {_launchURL('https://github.com/anjaligovindhasamy');},
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('GitHub', textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                    Image.asset('assets/git.png', height: 150,width: 150,),
                                  ],
                                ),
                              ),
                            ), SizedBox(height: 20,),

                          ],
                        ),
                        SizedBox(height: 100,),

                        // ********************************************************** footer ***********************************************

                        Container(
                          height: 46,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: superBlue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/call.png', height: 10, width: 10),
                                  ),
                                  Text('790-4535-080', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/mail.png', height: 10, width: 10),
                                  ),
                                  Text('anjaligovindhasamy@gmail.com',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/pin.png', height: 10, width: 10),
                                  ),
                                  Text('Banglore, India', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),

                  ],
                ),

            );
          } else {
            // For screens larger than or equal to 700 pixels (desktop screens)
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          key: key1,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hey There I’m Anjali', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 60,color: Colors.black)),
                                  Text('Beginner in Development', style: TextStyle(fontSize: 30,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Text('I am a Begginer Developer , I can Provide clean \n code and pixel perfect design', style: TextStyle(fontSize: 14,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Container(
                                    height: 26,
                                    width: 100,
                                    color: darkBlue,
                                    child: TextButton(onPressed: (){Scrollable.ensureVisible(key3.currentContext!);},
                                      child: Text('My Projects', style: TextStyle(color: Colors.black),),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 60),
                                  child: Image.asset('assets/heroimage1.png', height: 300,width: 300,),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),

                        // *******************************************  Section 1 End   *******************************************************

                        // *******************************************  Section 2 start *******************************************************

                        Row(
                          key: key2,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Image.asset('assets/heroimage2.png', height: 300,width: 300,),
                                )
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 90),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('About Me', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Text('Hi, I''m Anjali, a budding developer with a flair for web technologies.\n'
                                      'Proficient in HTML, CSS, Python, SQL, and Next.js, I''m passionate\n'
                                      'about creating visually appealing and responsive digital\n'
                                      'experiences. Eager to contribute my skills and learn from dynamic\n'
                                      'teams. Let''s build something extraordinary!', style: TextStyle(fontSize: 14,color: Colors.black)),
                                  SizedBox(height: 24,),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 28,
                                            width: 70,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('Python', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),SizedBox(height: 10,),
                                          Container(
                                            height: 28,
                                            width: 70,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('My SQL', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),SizedBox(height: 10,),
                                          Container(
                                            height: 28,
                                            width: 100,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('Bootstrap', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 24,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 28,
                                            width: 70,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('HTML', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),SizedBox(height: 10,),
                                          Container(
                                            height: 28,
                                            width: 70,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('CSS', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),SizedBox(height: 10,),
                                          Container(
                                            height: 28,
                                            width: 120,
                                            color: darkgray,
                                            child: TextButton(onPressed: (){},
                                              child: Text('Git & GitHub', style: TextStyle(color: Colors.black),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 28,),
                                  Container(
                                    height: 26,
                                    width: 100,
                                    color: darkBlue,
                                    child: TextButton(onPressed: (){_launchURL('https://www.linkedin.com/in/anjali-g-b37a27284/');},
                                      child: Text('Learn More', style: TextStyle(color: Colors.black),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 34,
                        ),

                        // ****************************************************************************************************
                        //                                     Project
                        // ****************************************************************************************************

                        Row(
                          key: key3,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Projects', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(40.0),
                                      child: Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.6  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.4   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          //
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage3.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('The Bank Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:10.0, right: 10,),
                                                child: Text('I contributed to a banking application, applying OOP principles and utilizing Python. My role involved designing and implementing system components, showcasing my proficiency in OOP and Python development', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(40.0),
                                      child: Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.6  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.4   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage4.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('Ticket Booking Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:10.0, right: 10,),
                                                child: Text('I independently developed the front-end of an online job application using HTML and CSS. This project demonstrated my proficiency in creating visually appealing and user-friendly interfaces, showcasing my skills in front-end web development.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(40.0),
                                      child: Container(
                                          height: screenSize <= 700
                                              ? MediaQuery.of(context).size.height * 0.6  // Height for screensize <= 700
                                              : MediaQuery.of(context).size.height * 0.7, // Height for screensize > 700

                                          width: screenSize <= 700
                                              ? MediaQuery.of(context).size.width * 0.4   // Width for screensize <= 700
                                              : MediaQuery.of(context).size.width * 0.2,  // Width for screensize > 700
                                          // width: 260,
                                          // height: 410,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/heroimage5.png', height: 200,width: 200,),
                                              Container(width: 220,color: Colors.black, height: 0.5,),
                                              Text('Online Job Application',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                              Padding(
                                                padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                child: Text('I contributed to a banking application, applying OOP principles and utilizing Python. My role involved designing and implementing system components, showcasing my proficiency in OOP and Python development', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(21),
                                              color: Color(0x7f00d6b4))
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),

                        // *******************************************************************************************************************************

                        Row(
                          key: key4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Column(
                              children: [
                                Text('Education', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                              ],
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:80),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:14.0, right: 14,),
                                              child: Text('2018-2020', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),
                                      SizedBox(height: 150),

                                      Container(
                                        width: 90,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:14.0, right: 14,),
                                              child: Text('2020-2023', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),
                                      SizedBox(height: 150),

                                      Container(
                                        width: 156,
                                        height: 30,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:14.0, right: 14,),
                                              child: Text('Aug (2023) - Jan (2024)', textAlign: TextAlign.center,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0x7f00d6b4)
                                        ),
                                      ),


                                    ],
                                  ),
                                ),



                                Container(
                                  height: 410,
                                  width: 2, // or specify a specific width
                                  color: Colors.black, // or any color you desire
                                ),



                                Padding(
                                  padding: const EdgeInsets.only(left:80, top: 120),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 210,
                                            height: 160,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text('12th Standard',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                  child: Text('In my final year of high school, I excelled academically while actively leading extracurricular initiatives, showcasing my strong work ethic and leadership abilities.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(21),
                                                color: Color(0x7f00d6b4)
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30),

                                      Column(
                                        children: [
                                          Container(
                                            width: 210,
                                            height: 160,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text('BSC computer science',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                  child: Text('I achieved an outstanding 88.82% GPA in my BSc Computer Science program, showcasing my strong commitment to academic excellence and proficiency in technical subjects.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(21),
                                                color: Color(0x7f00d6b4)
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30),

                                      Column(
                                        children: [
                                          Container(
                                            width: 210,
                                            height: 160,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text('Python Full Stack Cource',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:14.0, right: 14,),
                                                  child: Text('In my final year of high school, I excelled academically while actively leading extracurricular initiatives, showcasing my strong work ethic and leadership abilities.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,),),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(21),
                                                color: Color(0x7f00d6b4)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),

                        SizedBox(
                          height: 100,
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 80, ),
                              child:
                              Text('Contact', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 50,
                        ),

                        Row(
                          key: key5,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: () {_launchURL('https://www.linkedin.com/in/anjali-g-b37a27284/');},
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('LinkedIn', textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                    Image.asset('assets/linkedin.png', height: 150,width: 150,),
                                  ],
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: () {_launchURL('https://wa.me/+917904535080');},
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('Whatsapp', textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                    Image.asset('assets/whatsapp.png', height: 150,width: 150,),
                                  ],
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: () {_launchURL('https://github.com/anjaligovindhasamy');},
                              child: Container(
                                    child: Column(
                                      children: [
                                        Text('GitHub', textAlign: TextAlign.justify,),
                                        SizedBox(height: 10,),
                                        Image.asset('assets/git.png', height: 150,width: 150,),
                                      ],
                                    ),
                                  ),
                            ),

                          ],
                        ),
                        SizedBox(height: 100,),

                        // ********************************************************** footer ***********************************************

                        Container(
                          height: 46,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: superBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/call.png', height: 20, width: 20),
                                  ),
                                  Text('790-4535-080'),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/mail.png', height: 20, width: 20),
                                  ),
                                  Text('anjaligovindhasamy@gmail.com'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0), // Adjust the padding value as needed
                                    child: Image.asset('assets/pin.png', height: 20, width: 20),
                                  ),
                                  Text('Banglore, India'),
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
