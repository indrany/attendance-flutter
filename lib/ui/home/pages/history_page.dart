import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool showDetail = false;
  PageController _pageController = PageController(initialPage: DateTime.now().month - 1);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    // Back button
                    Container(
                      width: 48,
                      height: 48,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Icon(Icons.chevron_left),
                    ),
                    // Page title
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 48), // Add padding to ensure proper centering
                          child: Text(
                            'History',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF221F1F),
                              fontSize: 24,
                              fontFamily: 'Kumbh Sans',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                _buildCalendarWidget(),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showDetail = !showDetail;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF567DF4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Absensi Datang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '08:00, 4 Maret 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kantor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Kumbh Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (showDetail) ...[
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF567DF4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lokasi:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10), // Added spacing between details
                        Text(
                          'Status: Sesuai spot Absensi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10), // Added spacing between details
                        Text(
                          'Longitude: 114.56789012',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10), // Added spacing between details
                        Text(
                          'Latitude: -8.1234567',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.47),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Lihat di Peta',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Kumbh Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Perangkat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'ID Perangkat: 01abcgdkshrjslaaaa',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Model Perangkat: 11456789012',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pembuat Perangkat: Xiaomi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build the calendar widget
  Widget _buildCalendarWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 400, // Adjust height as needed
      child: PageView.builder(
        controller: _pageController,
        itemCount: 12, // Number of months to display
        itemBuilder: (context, index) {
          final month = DateTime(DateTime.now().year, index + 1, 1);
          return _buildMonthlyCalendar(month);
        },
      ),
    );
  }

  // Function to build the monthly calendar widget
  Widget _buildMonthlyCalendar(DateTime month) {
    return TableCalendar(
      focusedDay: month,
      firstDay: DateTime(DateTime.now().year - 1),
      lastDay: DateTime(DateTime.now().year + 1),
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: Colors.blue[100],
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(color: Colors.white),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      availableCalendarFormats: {CalendarFormat.month: 'Month'},
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          return GestureDetector(
            onTap: () {
              // Add your custom action here when a date is selected
              print('Selected Date: $day');
            },
            child: Center(
              child: Text(
                day.day.toString(),
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}