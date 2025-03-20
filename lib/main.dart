import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Grocery App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(130.0), 
         child: ClipRRect(
          borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
    ),
      child: AppBar(
        
        backgroundColor: Colors.green[900],
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for "Grocery"',
            
            prefixIcon: Icon(Icons.search, color: Colors.green,size: 30,),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
             contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          ),
        ),
        actions:[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child:
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.grey),
            onPressed: () {},
          ),
          )
          ],
        ),
         ),
      
      ),

      

      //  drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader( 
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //         ),
      //          child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: Colors.green),
      //           accountName:Text("Abhishek Mishra",
      //           style: TextStyle(fontSize: 18), 
      //           ),
      //           accountEmail: Text("abhishekm977@gmail.com"),
      //           currentAccountPictureSize: Size.square(50),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundColor: Color.fromARGB(255, 165, 255, 137),
      //             child: Text(
      //               "A",
      //               style: TextStyle(fontSize: 30.0, color: Colors.blue),
      //             ), // Text
      //           ), // CircleAvatar
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Home'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Cart'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Profile'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ), 




      body: Column(
        children: [
          SizedBox(height: 20),
        CarouselSlider(
          items: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 196, 224, 222),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/meat.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10), // Khoảng cách giữa ảnh và chữ
                Text(
                  'Meat',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 196, 224, 222),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/leafy-green.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Leafy Green',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  width: 80,
                  height: 50,
                  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 196, 224, 222),
                    
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/fruit.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Fruit',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  width: 80,
                  height: 50,
                  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 196, 224, 222),
                    
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/bread.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'bread',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
          options: CarouselOptions(
            height: 150.0, // Tăng chiều cao để đủ chứa ảnh và chữ
            enlargeCenterPage: false,
            autoPlay: false,
            aspectRatio: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.3,
          ),
  ),


   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'View All',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
        ],
  
  ),
    Row(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(6.0),
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 196, 224, 222),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/meat.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meat',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  '200g',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  '\$ 10',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(6.0),
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 196, 224, 222),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/leafy-green.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Leafy Green',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  '200g',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  '\$ 10',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(6.0),
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 196, 224, 222),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/fruit.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fruit',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  '200g',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  '\$ 10',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ],
          ),
       
        
      ],
    ),
  ],
),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
