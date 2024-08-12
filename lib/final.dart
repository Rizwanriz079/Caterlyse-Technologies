import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class HomeScreen extends StatelessWidget {

  final List<Map<String, String>> carouselItems = [
    {
      'title': 'Enjoy your first \norder, the taste of \nour delicious food!',
      'subtitle': 'FIRSTPLATE01',
      'image': 'assets/b.png', // Replace with actual image path
    },
    {
      'title': 'Enjoy your first \norder, the taste of \nour delicious food!',
      'subtitle': 'FIRSTPLATE01',
      'image': 'assets/b.png', // Replace with actual image path
    },
    {
      'title': 'Enjoy your first \norder, the taste of \nour delicious food!',
      'subtitle': 'FIRSTPLATE01',
      'image': 'assets/b.png', // Replace with actual image path
    },
  ];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Monica!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    color: Color(0xFF6318AF), // Purple Color
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Current location",
                  style: TextStyle(color: Color(0xFF7B7B7B)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: Color(0xFF6318AF)),
                        Text(
                          'Hyderabad',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFAAAAAA),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.play_circle_outline,
                            color: Color(0xFF7F1FE0)),
                        Text(
                          'How it  works?',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                CarouselSlider(
                  options: CarouselOptions(
                    height: screenHeight * 0.20,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: carouselItems.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: screenWidth * 0.8,
                          margin: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.01),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.03),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF7915DE),
                                Color(0xFF260C40),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                top: 17,
                                bottom: 0,
                                child: Image.asset(
                                  item['image']!,
                                  fit: BoxFit.cover,
                                  width: screenWidth * 0.35,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(screenWidth * 0.04),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item['title']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenWidth * 0.045,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.01),
                                    Text(
                                      item['subtitle']!,
                                      style: TextStyle(
                                        color: Color(0xFFF6D798),
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  'Start Crafting',
                  style: TextStyle(
                    fontSize: screenHeight * 0.03,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // First Container (full width)
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFCEAD2), Color(0xFFB98A53)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Box',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.05, // Responsive font size
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.01), // Responsive spacing
                                    Row(
                                      children: [
                                        Icon(Icons.person, color: Colors.black54),
                                        SizedBox(width: screenWidth * 0.02), // Responsive spacing
                                        Expanded(
                                          child: Text(
                                            'Min 10 - Max 120',
                                            style: TextStyle(
                                              color: Color(0xFF935A10),
                                              fontSize: screenWidth * 0.03, // Responsive font size
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenHeight * 0.03),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFDD8E18),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'See All',
                                              style: TextStyle(fontSize: screenWidth * 0.04,color: Colors.white), // Responsive font size
                                            ),
                                            SizedBox(width: 4),
                                            Icon(Icons.arrow_forward,color: Colors.white,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'assets/c.png',
                                width: screenWidth * 0.40, // Responsive width
                                height: screenHeight * 0.15, // Responsive height
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: screenHeight * 0.02), // Responsive spacing
                      // // Second and Third Containers (side by side)
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           gradient: LinearGradient(
                      //             colors: [Color(0xFFF4D5FD), Color(0xFFD3A9F6)],
                      //             begin: Alignment.topLeft,
                      //             end: Alignment.bottomRight,
                      //           ),
                      //           borderRadius: BorderRadius.circular(16),
                      //         ),
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(16.0),
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               Text(
                      //                 'Meal Boxes',
                      //                 style: TextStyle(
                      //                   fontSize: screenWidth * 0.045, // Responsive font size
                      //                   fontWeight: FontWeight.bold,
                      //                   color: Colors.black87,
                      //                 ),
                      //               ),
                      //               SizedBox(height: screenHeight * 0.01), // Responsive spacing
                      //               Row(
                      //                 children: [
                      //                   Icon(Icons.person,
                      //                       color: Colors.black54),
                      //                   SizedBox(width: screenWidth * 0.02), // Responsive spacing
                      //                   Expanded(
                      //                     child: Text(
                      //                       'Min 10 Guests',
                      //                       style: TextStyle(
                      //                         color: Colors.black54,
                      //                         fontSize: screenWidth * 0.035, // Responsive font size
                      //                       ),
                      //                       overflow: TextOverflow.ellipsis,
                      //                     ),
                      //                   ),
                      //                   SizedBox(width: screenWidth * 0.01), // Responsive spacing
                      //                   ElevatedButton(
                      //                     onPressed: () {},
                      //                     style: ElevatedButton.styleFrom(
                      //                       backgroundColor: Color(0xFF9C74F8),
                      //                       shape: CircleBorder(),
                      //                       padding: EdgeInsets.all(8),
                      //                     ),
                      //                     child: Icon(Icons.arrow_forward),
                      //                   ),
                      //                 ],
                      //               ),
                      //               Spacer(),
                      //               Image.asset(
                      //                 'assets/b.png',
                      //                 width: double.infinity,
                      //                 height: screenHeight * 0.1, // Responsive height
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(width: screenWidth * 0.02), // Responsive spacing
                      //     Expanded(
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           gradient: LinearGradient(
                      //             colors: [Color(0xFFFFEBEB), Color(0xFFF0B7B7)],
                      //             begin: Alignment.topLeft,
                      //             end: Alignment.bottomRight,
                      //           ),
                      //           borderRadius: BorderRadius.circular(16),
                      //         ),
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(16.0),
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               Text(
                      //                 'Catering',
                      //                 style: TextStyle(
                      //                   fontSize: screenWidth * 0.045, // Responsive font size
                      //                   fontWeight: FontWeight.bold,
                      //                   color: Colors.black87,
                      //                 ),
                      //               ),
                      //               SizedBox(height: screenHeight * 0.01), // Responsive spacing
                      //               Row(
                      //                 children: [
                      //                   Icon(Icons.person,
                      //                       color: Colors.black54),
                      //                   SizedBox(width: screenWidth * 0.02), // Responsive spacing
                      //                   Expanded(
                      //                     child: Text(
                      //                       'Min 120 Guests',
                      //                       style: TextStyle(
                      //                         color: Colors.black54,
                      //                         fontSize: screenWidth * 0.035, // Responsive font size
                      //                       ),
                      //                       overflow: TextOverflow.ellipsis,
                      //                     ),
                      //                   ),
                      //                   SizedBox(width: screenWidth * 0.01), // Responsive spacing
                      //                   ElevatedButton(
                      //                     onPressed: () {},
                      //                     style: ElevatedButton.styleFrom(
                      //                       backgroundColor: Color(0xFFF76C6C),
                      //                       shape: CircleBorder(),
                      //                       padding: EdgeInsets.all(8),
                      //                     ),
                      //                     child: Icon(Icons.arrow_forward),
                      //                   ),
                      //                 ],
                      //               ),
                      //               Spacer(),
                      //               Image.asset(
                      //                 'assets/c.png',
                      //                 width: double.infinity,
                      //                 height: screenHeight * 0.1, // Responsive height
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                Text(
                  'Choose Your Platter',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                _buildDeliveryBoxSection(screenWidth, screenHeight),
                SizedBox(height: screenHeight * 0.04),
                _buildMealBoxSection(screenWidth, screenHeight),
                SizedBox(height: screenHeight * 0.04),
                _buildCateringMenuSection(screenWidth, screenHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryBoxSection(double screenWidth, double screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Delivery Box',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6318AF),
                  ),
                ),
                SizedBox(width: screenWidth * 0.01),
                Icon(Icons.person, size: 15, color: Colors.grey),
                Text("(Min 10 - Max 50)", style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            Text(
              'More',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Color(0xFF484C51),
              ),
            ),
          ],
        ),
        Text(
          'Best for small gatherings and house-parties',
          style: TextStyle(
            fontSize: screenWidth * 0.03,
            color: Color(0xFF93999F),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        SizedBox(
          height: screenHeight * 0.35, // Fixed height for CarouselSlider
          child: _buildCarouselSlider(screenWidth),
        ),
      ],
    );
  }

  Widget _buildCarouselSlider(double screenWidth) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity, // Use the height of the enclosing SizedBox
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: [
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(screenWidth * 0.03),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              // Image
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(screenWidth * 0.03),
                    topRight: Radius.circular(screenWidth * 0.03),
                  ),
                  child: Image.asset(
                    'assets/f.png', // Replace with actual image path
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              // Title and Description
              Expanded(
                flex: 9,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.center_focus_strong_rounded,color: Color(0xFF257B3E),size: 18,),
                          SizedBox(width:3),
                          Text(
                            'Panjabi Special Menu',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth * 0.0002),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: screenWidth * 0.0002),
                      Row(
                        children: [
                          Text(
                            '6 Categories & 9 Items',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Color(0xFF6318AF),
                            ),
                          ),
                          Spacer(),
                          Text('See all',style: TextStyle(fontSize: screenWidth * 0.04,color: Color(0xFF60666C)),),
                        ],
                      ),
                      SizedBox(height: screenWidth * 0.0001),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: screenWidth * 0.0001),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Starts at ',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.042,
                                  color: Colors.black.withOpacity(0.6), // Light black
                                ),
                              ),
                              Text(
                                '₹299',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Black for the price
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.person, size: screenWidth * 0.04,color: Color(0xFF666666),),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                '10 - 600',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: screenWidth * 0.05, color: Colors.amberAccent),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                '₹219',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Color(0xFF6318AF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' / person',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Colors.black, // Black for the price
                                ),
                              ),
                              Icon(Icons.arrow_downward_outlined, size: screenWidth * 0.05,color: Color(0xFF198754),),
                              Text(
                                '20%',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Color(0xFF198754)
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenWidth * 0.01),
                          Row(
                            children: [
                              Text(
                                'with Dynamic Price for',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Color(0xFF6318AF),
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text('100 Guests'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Add more carousel items here if needed
      ],
    );
  }

  Widget _buildMealBoxSection(double screenWidth, double screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Meal Box',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6318AF),
                  ),
                ),
                SizedBox(width: screenWidth * 0.01),
                Icon(Icons.person, size: 15, color: Colors.grey),
                Text("(Min 10)", style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            Text(
              'More',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Color(0xFF484C51),
              ),
            ),
          ],
        ),
        Text(
          'Individually packed meal boxes of happiness!',
          style: TextStyle(
            fontSize: screenWidth * 0.03,
            color: Color(0xFF93999F),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        SizedBox(
          height: screenHeight * 0.2,
          child: CarouselSlider(
            options: CarouselOptions(
                height: double.infinity,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                // autoPlay: true,
                aspectRatio: 2/1),
            items: [
              _buildMealBoxCard('assets/e.png', screenWidth, screenHeight),
              _buildMealBoxCard('assets/d.png', screenWidth, screenHeight),
              // Add more items here if needed
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMealBoxCard(String imagePath, double screenWidth, double screenHeight) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01), // Add margin for spacing
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.02),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(screenWidth * 0.02),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: screenWidth * 0.9, // Adjust width if needed
        ),
      ),
    );
  }

  Widget _buildCateringMenuSection(double screenWidth, double screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Catering Menus',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6318AF),
                  ),
                ),
                SizedBox(width: screenWidth * 0.01),
                Icon(Icons.person, size: 15, color: Colors.grey),
                Text("(Min 200)", style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
        Text(
          'Best for weddings, Corporate Events, Birthdays etc',
          style: TextStyle(
            fontSize: screenWidth * 0.03,
            color: Color(0xFF93999F),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        SizedBox(
          height: screenHeight * 0.35, // Fixed height for CarouselSlider
          child: _buildCarouselSliderCatering(screenWidth),
        ),
      ],
    );
  }


  Widget _buildCarouselSliderCatering(double screenWidth) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity, // Use the height of the enclosing SizedBox
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: [
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              border: Border.all(color: Colors.grey.shade300)),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.03),
                      topRight: Radius.circular(screenWidth * 0.03)),
                  child: Image.asset(
                    'assets/f.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              // Title and Description
              Expanded(
                flex: 9,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.center_focus_strong_rounded,color: Color(0xFF257B3E),size: 18,),
                          SizedBox(width:3),
                          Text(
                            'Panjabi Special Menu',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth * 0.0002),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: screenWidth * 0.0002),
                      Row(
                        children: [
                          Text(
                            '12 Categories & 40 Items',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Color(0xFF6318AF),
                            ),
                          ),
                          Spacer(),
                          Text('See all',style: TextStyle(fontSize: screenWidth * 0.04,color: Color(0xFF60666C)),),
                        ],
                      ),
                      SizedBox(height: screenWidth * 0.0001),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: screenWidth * 0.0001),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Starts at ',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.042,
                                  color: Colors.black.withOpacity(0.6), // Light black
                                ),
                              ),
                              Text(
                                '₹299',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Black for the price
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.person, size: screenWidth * 0.04,color: Color(0xFF666666),),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                '10 - 600',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: screenWidth * 0.05, color: Colors.amberAccent),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                '₹219',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Color(0xFF6318AF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' / person',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Colors.black, // Black for the price
                                ),
                              ),
                              Icon(Icons.arrow_downward_outlined, size: screenWidth * 0.05,color: Color(0xFF198754),),
                              Text(
                                '20%',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Color(0xFF198754)
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenWidth * 0.01),
                          Row(
                            children: [
                              Text(
                                'with Dynamic Price for',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Color(0xFF6318AF),
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text('100 Guests'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Add more carousel items here if needed
      ],
    );
  }

}
