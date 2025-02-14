import 'package:flutter/material.dart';
import 'dart:async';

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'রমজান ২০২৫',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'SolaimanLipi',
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentTime = DateFormat('hh:mm a').format(DateTime.now());
  String currentDate = DateFormat('dd MMMM, yyyy', 'bn_BD').format(DateTime.now());
  String hijriDate = "১৫ রমজান, ১৪৪৬";
  late Timer timer;

  // Sample prayer times for Dhaka, Bangladesh
  final Map<String, String> prayerTimes = {
    'ফজর': '০৪:১৫',
    'যোহর': '১২:১০',
    'আসর': '৪:২০',
    'মাগরিব': '৬:১৮',
    'ইশা': '৭:৩৫',
  };

  // Sample Sehri and Iftar times
  String sehriTime = '০৪:০৫';
  String iftarTime = '৬:১৮';
  
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentTime = DateFormat('hh:mm a').format(DateTime.now());
      });
    });
  }
  
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'রমজান ২০২৫',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF1E8449),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF1E8449),
                image: DecorationImage(
                  image: AssetImage('assets/images/mosque_silhouette.png'),
                  fit: BoxFit.cover,
                  opacity: 0.3,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'রমজান ২০২৫',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'বাংলাদেশ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('রমজান ক্যালেন্ডার'),
              onTap: () {
                // Navigate to calendar page
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('কোরআন'),
              onTap: () {
                // Navigate to Quran page
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('দোয়া সমূহ'),
              onTap: () {
                // Navigate to Dua page
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('কিবলা দিকনির্দেশক'),
              onTap: () {
                // Navigate to Qibla direction page
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('সেটিংস'),
              onTap: () {
                // Navigate to settings page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('আমাদের সম্পর্কে'),
              onTap: () {
                // Navigate to about page
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section with current time and date
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF1E8449),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/mosque_pattern.png'),
                  fit: BoxFit.cover,
                  opacity: 0.1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    currentTime,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    currentDate,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    hijriDate,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Sehri and Iftar times
            Row(
              children: [
                Expanded(
                  child: _buildTimeCard(
                    title: 'সেহরি',
                    time: sehriTime,
                    iconData: Icons.nightlight_round,
                    color: const Color(0xFF1E3A8A),
                  ),
                ),
                Expanded(
                  child: _buildTimeCard(
                    title: 'ইফতার',
                    time: iftarTime,
                    iconData: Icons.wb_sunny,
                    color: const Color(0xFFB45309),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // Prayer times section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1E8449),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'নামাজের সময়সূচী',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: prayerTimes.length,
                    separatorBuilder: (context, index) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      String prayer = prayerTimes.keys.elementAt(index);
                      String time = prayerTimes.values.elementAt(index);
                      
                      return ListTile(
                        leading: _getPrayerIcon(prayer),
                        title: Text(
                          prayer,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          time,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E8449),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF1E8449),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'হোম',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'ক্যালেন্ডার',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'কোরআন',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'দোয়া',
          ),
        ],
      ),
    );
  }
  
  Widget _buildTimeCard({
    required String title,
    required String time,
    required IconData iconData,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            iconData,
            color: color,
            size: 32,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _getPrayerIcon(String prayer) {
    IconData iconData;
    Color iconColor;
    
    switch (prayer) {
      case 'ফজর':
        iconData = Icons.nights_stay;
        iconColor = Colors.indigo;
        break;
      case 'যোহর':
        iconData = Icons.wb_sunny;
        iconColor = Colors.orange;
        break;
      case 'আসর':
        iconData = Icons.wb_twighlight;
        iconColor = Colors.amber;
        break;
      case 'মাগরিব':
        iconData = Icons.sunny_snowing;
        iconColor = Colors.deepOrange;
        break;
      case 'ইশা':
        iconData = Icons.nightlight_round;
        iconColor = Colors.indigo;
        break;
      default:
        iconData = Icons.access_time;
        iconColor = Colors.grey;
    }
    
    return CircleAvatar(
      backgroundColor: iconColor.withOpacity(0.2),
      child: Icon(
        iconData,
        color: iconColor,
      ),
    );
  }
}