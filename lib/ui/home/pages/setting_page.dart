import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
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
                  child: Icon(Icons.chevron_left,color: Color.fromARGB(255,86,125,244).withOpacity(0.7),),
                ),
                // Page title
                Expanded(
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 48), // Add padding to ensure proper centering
                      child: Text(
                        'Setting',
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
            const SizedBox(height: 40),
            buildSectionTitle('Account'),
            buildOptionRow('Edit Profile', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            buildOptionRow('Password', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            buildOptionRow('Language', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            const SizedBox(height: 40),
            buildSectionTitle('Preferences'),
            buildOptionRow('Theme', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            buildOptionRow('Notifications', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            buildOptionRow('Attendance', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),
            const SizedBox(height: 40),
            buildSectionTitle('Support'),
            buildOptionRow('Terms of Service & Privacy', Icons.chevron_right), // Menggunakan ikon "chevron_right"
            buildDivider(),

            const Text(
              'Clear Cache', 
              style: TextStyle(
                color: Color(0xFF121212),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.32,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF567DF4),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.28,
        ),
      ),
    );
  }

  Widget buildOptionRow(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF121212),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.32,
            ),
          ),
          Icon(icon, color: Color(0xFF808080)),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return const Divider(color: Color(0xFFF4F4F4), thickness: 1.5);
  }
}