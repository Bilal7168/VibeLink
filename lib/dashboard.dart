import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//type in 'stl' to put in the StatelessWidget template
//cannot change values in this Stateless Widget - make it Stateful later during development
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
                padding: EdgeInsets.only(right: 90, left: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        'VibeLink',
                        style: TextStyle(
                            color: Color.fromARGB(255, 52, 84, 164),
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.dashboard, color:Color.fromARGB(255, 52, 84, 164))),
                        IconButton(onPressed: () {}, icon: Icon(Icons.people, color:Color.fromARGB(255, 22, 104, 33))),
                        IconButton(onPressed: () {}, icon: Icon(Icons.message, color:Color.fromARGB(255, 55, 28, 113))),
                        SizedBox(height: 20, child: VerticalDivider(color: Colors.black, thickness: 1)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                      ],
                    )
                  ],
                ))),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 38, 47, 221),
                      Color.fromARGB(255, 52, 84, 164),
                      Color.fromARGB(255, 128, 122, 208),
                    ])),
                child: Align(
                  alignment: FractionalOffset.center,
                  child: Container(
                    alignment: Alignment.center,
                    // height: MediaQuery.of(context).size.height - 200, //AppBar will compensate for this
                    width: MediaQuery.of(context).size.width - 200,
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    //3 different boards - one to the top left for profile
                    child: Stack(children: [
                      Row(
                        children: [
                          //profile side with picture
                          //profile call here
                          Profile(),

                          SizedBox(
                              width: (MediaQuery.of(context).size.width - 200) *
                                  0.01),

                          //main dashboard component
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height - 150,
                                  child: SingleChildScrollView(
                                    child: Container(
                                      width: (MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              200) *
                                          0.58, //width of the container having the dashboard
                                      // width: (MediaQuery.of(context).size.width),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(10),
                                      ),

                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 20),

                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              //image
                                              children: [
                                                SizedBox(width: 20),
                                                //profile pic image for posting or making a post
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://m.media-amazon.com/images/S/amzn-author-media-prod/i6s7df11h3iinrkj9dnjc963pr._SX450_CR0%2C0%2C450%2C450_.jpg',
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(width: 20),

                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width:
                                                        ((MediaQuery.of(context)
                                                                        .size
                                                                        .width -
                                                                    200) *
                                                                0.58) *
                                                            0.85,
                                                    child: TextFormField(
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                      maxLines:
                                                          3, //3 is optimum for styling
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText:
                                                            'Start typing .....',
                                                        hintStyle: TextStyle(
                                                            fontSize: 14),
                                                        fillColor: Colors.black,
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    42,
                                                                    97,
                                                                    238),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    173,
                                                                    174,
                                                                    177),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]
                                              //textField
                                              ), //this is supposed to format the profile and textField in a row-wise manner

                                          SizedBox(height: 10), //margin

                                          //Contains the Send and Dropdown for interests
                                          Row(
                                              //image
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 100),
                                                IconButton(
                                                    icon: Icon(
                                                      Icons.image,
                                                      color: Color.fromARGB(
                                                          255, 42, 97, 238),
                                                    ),
                                                    onPressed: () {}),
                                                Text('Images'),
                                                IconButton(
                                                    icon: Icon(
                                                      Icons.video_camera_back,
                                                      color: Color.fromARGB(
                                                          255, 130, 39, 7),
                                                    ),
                                                    onPressed: () {}),
                                                Text('Videos'),

                                                // SizedBox(
                                                //     width:
                                                //         ((MediaQuery.of(context)
                                                //                     .size
                                                //                     .width -
                                                //                 200) *
                                                //             0.4)),

                                                SizedBox(
                                                    width: (((MediaQuery.of(context)
                                                                        .size
                                                                        .width -
                                                                    200) *
                                                                0.58) *
                                                            0.85) -
                                                        380),

                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: SizedBox(
                                                      width: 60,
                                                      height: 30,
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          foregroundColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                          backgroundColor:
                                                              const Color
                                                                  .fromARGB(255,
                                                                  52, 84, 164),
                                                          // padding: const EdgeInsets.all(4.0),
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 13),
                                                        ),
                                                        onPressed: () {},
                                                        child:
                                                            const Text('Send'),
                                                      ),
                                                    )),

                                                SizedBox(width: 15),

                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: SizedBox(
                                                      width: 80,
                                                      height: 40,
                                                      child:
                                                          DropdownButtonExample(), //need to add a dropdown here
                                                    )),
                                                SizedBox(
                                                    width:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width -
                                                                200) *
                                                            0.03),
                                              ]),

                                          SizedBox(height: 20),

                                          //Horizontal line
                                          //put it inside SizedBox to control width of the divider
                                          SizedBox(
                                            width: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
                                                        200) *
                                                    0.58) -
                                                50,
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 52, 84, 164),
                                              height: 1,
                                            ),
                                          ),

                                          //create a loop of posts following a format
                                          SizedBox(height: 20),

                                          //put the Posts widget here

                                          Posts(),
                                          Posts(),
                                          Posts(),
                                          Posts(),
                                          Posts(),
                                          Posts(),
                                        ],
                                      ),
                                    ),
                                  ))),

                          SizedBox(
                              width: (MediaQuery.of(context).size.width - 200) *
                                  0.01),

                          //recommendations component
                          Extras(),
                        ],
                      ),
                    ]),
                  ),
                ))));
  }
}

const List<String> list = <String>['Music', 'Therapy', 'Food', 'Journal'];

//Dropdown nexer the Send Button in Post
class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_forward),
      elevation: 24,
      style: const TextStyle(
        color: Color.fromARGB(255, 52, 84, 164),
      ),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 52, 84, 164),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 32,
      icon: Icon(
        Icons.favorite,
        color:
            isFavorite ? Colors.red : const Color.fromARGB(255, 202, 202, 202),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        // Additional logic or actions can be added here
      },
    );
  }
}

//Posts stateful widget here
class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  //variable section here

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal:
                ((MediaQuery.of(context).size.width - 200) * 0.58) * 0.03),
        child: Column(
            //image
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                  width: 60,
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/5324d095e4b08fd5fbc4003e/1642529694892-E72MLTJEHB50IZ5B19JW/DSC_6974.jpg',
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bixy Poppy',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Musician',
                      style:
                          TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    Row(children: [
                      Text('AM Labs (Inc.)',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 84, 164),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text(
                        ' . 1d',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w900),
                      )
                    ])
                  ],
                )
              ]),
              SizedBox(height: 10),
              Container(
                  width:
                      ((MediaQuery.of(context).size.width - 200) * 0.58) * 0.96,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 173, 174, 177)),
                      borderRadius: BorderRadius.circular(7)),
                  child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Text(
                          //random text for just styling
                          "Identifying & selecting suitable #ChronicPain patients for #SpinalCordStimulation (#SCS) is time-consuming. The #SCS e-health tool, created by experts, streamlines referrals, reducing patients\' journey to pain relief. Try it now! #BSCEMEA #ehealth. Choosing Between Next.js and the MERN Stack: Understanding the Developer Differences 🛠️\"\ \n\nIn the ever-evolving landscape of web development, decisions regarding technology stacks can significantly impact project outcomes. Next.js and the MERN stack (MongoDB, Express.js, React.js, Node.js) are both popular choices, each offering unique advantages. While Next.js excels in providing server-side rendering and static site generation, MERN stack developers specialize in building dynamic, full-stack applications. Understanding these differences is key to selecting the right tools for your project. 💻 ",
                          style: TextStyle(fontSize: 14),
                        ),
                      ])),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(alignment: Alignment.topRight, child: FavoriteButton()),
                  SizedBox(height: 7),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      color: Color.fromARGB(255, 156, 154, 154),
                      iconSize: 32,
                      icon: const Icon(Icons.chat),
                      onPressed: () {
                        // ...
                      },
                    ),
                  ),
                ],
              )
            ]
            //textField
            ));
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            width: (MediaQuery.of(context).size.width - 200) * 0.2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://m.media-amazon.com/images/S/amzn-author-media-prod/i6s7df11h3iinrkj9dnjc963pr._SX450_CR0%2C0%2C450%2C450_.jpg',
                  ),
                ),
                SizedBox(height: 20),
                Text('Maria Casis',
                    style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 5),
                Text('Guitarist',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text('@XMLA_US',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 52, 84, 164))),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    '4.5k',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w900),
                  )
                ]),
                SizedBox(height: 10),
                SizedBox(
                  width: ((MediaQuery.of(context).size.width - 200) * 0.2) - 50,
                  child: Divider(
                    color: Color.fromARGB(255, 52, 84, 164),
                    height: 1,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Posts',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 84, 164)),
                        ),
                      ],
                    )),
                SizedBox(height: 5),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Post Likes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '35',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 84, 164)),
                        ),
                      ],
                    )),
                SizedBox(height: 5),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories Accessed',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 84, 164)),
                        ),
                      ],
                    )),
                SizedBox(height: 10),
                SizedBox(
                  width: ((MediaQuery.of(context).size.width - 200) * 0.2) - 50,
                  child: Divider(
                    color: Color.fromARGB(255, 52, 84, 164),
                    height: 1,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Chat Rooms',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '@MusicianBand_X',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      'Music',
                      style: TextStyle(
                          color: Color.fromARGB(255, 52, 84, 164),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '@DrugAddicts_12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      'Therapy',
                      style: TextStyle(
                          color: Color.fromARGB(255, 52, 84, 164),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '@Tekno_POP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      'Pop-K',
                      style: TextStyle(
                          color: Color.fromARGB(255, 52, 84, 164),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                  ],
                )),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

class Extras extends StatefulWidget {
  const Extras({super.key});

  @override
  State<Extras> createState() => _ExtrasState();
}

class _ExtrasState extends State<Extras> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.all(20),
        width: ((MediaQuery.of(context).size.width - 200) * 0.2) -
            40, //added 40 for the margin padding provided
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Invitations (7)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
                height: 200, //200 works
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                    Invitations(),
                  ],
                ))),
            SizedBox(height: 20),
            Text(
              'POI\'s (48)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
                height: 200, //200 works
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                    POI(),
                  ],
                ))),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Invitations extends StatelessWidget {
  const Invitations({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://media.licdn.com/dms/image/C5603AQHXjaTkitmRiQ/profile-displayphoto-shrink_400_400/0/1652824409115?e=2147483647&v=beta&t=WLxahKax0sL2MEfAyTAeGSeWb-Efq1uCpNWHMgL1PmY',
              ),
            ),
            SizedBox(width: 5),
            Text('Maryam Li.'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.close, color: Colors.red))
          ],
        ),
      ],
    );
  }
}

class POI extends StatefulWidget {
  const POI({super.key});

  @override
  State<POI> createState() => _POIState();
}

class _POIState extends State<POI> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://media.licdn.com/dms/image/C4E03AQEg9zgDxB-hrQ/profile-displayphoto-shrink_200_200/0/1625237205457?e=2147483647&v=beta&t=lTtD28rwdO0O_ZMcamFSf_V9fOMb2tWeH6QF4ub2YDw',
              ),
            ),
            SizedBox(width: 5),
            Text('Kira Mie.'),
            SizedBox(width: 10),
            Text(
              'Pianist',
              style: TextStyle(
                  color: Color.fromARGB(255, 59, 94, 183),
                  fontSize: 12,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Color.fromARGB(255, 52, 84, 164),
                  size: 17,
                ))
          ],
        ),
      ],
    );
  }
}
