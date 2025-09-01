import 'package:flutter/material.dart';
import '../../../core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CurvedClipper(),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.bgHome.provider(),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70.0,
            left: 30.0,
            child: Container(
              width: 48,
              height: 48,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.50, color: Color(0xFFF4F4F4)),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Icon(
                Icons.chevron_left,
                color: Color.fromARGB(255, 244, 244, 244).withOpacity(0.7),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 75), // Spasi dari atas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Kumbh Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
              SizedBox(height: 30), // Spasi antara judul dan foto profil
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/avatar.png'), // Menggunakan AssetImage untuk gambar lokal
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        _changeProfilePhoto(context); // Panggil fungsi ketika ikon edit diklik
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Spasi antara ikon edit dan email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'hera@geoface.id | +6285806391116',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 200), // Spasi antara email dan bagian berikutnya
              buildSectionTitle('Account'),
              buildOptionRow('Edit Profile', Icons.chevron_right), // Menggunakan ikon "chevron_right"
              buildDivider(),
              buildOptionRow('Jabatan', Icons.chevron_right), // Menggunakan ikon "chevron_right"
              buildDivider(),
              buildOptionRow('Perangkat Terdaftar', Icons.chevron_right), // Menggunakan ikon "chevron_right"
              buildDivider(),
            ],
          ),
        ],
      ),
    );
  }

  void _changeProfilePhoto(BuildContext context) {
    // Implementasi fungsi untuk mengganti foto profil
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Pilih dari galeri'),
                onTap: () {
                  // Implementasi logika untuk memilih foto dari galeri
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Ambil foto baru'),
                onTap: () {
                  // Implementasi logika untuk mengambil foto baru dari kamera
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF567DF4),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.28,
          ),
        ),
      ),
    );
  }

  Widget buildOptionRow(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
