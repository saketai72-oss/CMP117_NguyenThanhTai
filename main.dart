import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 390,
            margin: const EdgeInsets.symmetric(vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(44),
              border: Border.all(color: const Color(0xFFCBD5E1), width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 44, left: 24, right: 24, bottom: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. TopBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIconButton(Icons.arrow_back_ios_new),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  _buildIconButton(Icons.share_outlined),
                ],
              ),
              const SizedBox(height: 24),

              // 2. Profile Header
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFFFB088),
                              Color(0xFFFF8080),
                              Color(0xFFFFCF71),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 132,
                        height: 132,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: ClipOval(
                            child: Image.asset(
                              'images/images.jpg',
                              width: 124,
                              height: 124,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: const BoxDecoration(
                                color: Color(0xFF0284C7),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16), // Additional space before text
                  const Text(
                    'Alex Rivers',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lead Mobile Engineer',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF64748B),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.location_on, size: 14, color: Color(0xFF94A3B8)),
                        SizedBox(width: 6),
                        Text(
                          'Tokyo, Japan',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // 3. Stats Card
              Container(
                height: 78,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFF1F5F9)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0F1729).withOpacity(0.05),
                      blurRadius: 18,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStatColumn('148', 'Projects', const Color(0xFF0F172A)),
                    Container(width: 1, height: 28, color: const Color(0xFFE2E8F0)),
                    _buildStatColumn('9 Yrs', 'Experience', const Color(0xFF0F172A)),
                    Container(width: 1, height: 28, color: const Color(0xFFE2E8F0)),
                    _buildStatColumn('4.9 ★', 'Rating', const Color(0xFFEAB308)),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // 4. About Me
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Passionate Lead Mobile Engineer specialized in Flutter, Dart, and building high-performance cross-platform applications. Focused on elegant architecture, intuitive UX, and design systems.',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF475569),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // 5. Skills & Expertise
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Skills & Expertise',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildSkillChip('Flutter', const Color(0xFFE0F2FE), const Color(0xFF0369A1)),
                      _buildSkillChip('Dart', const Color(0xFFDCFCE7), const Color(0xFF15803D)),
                      _buildSkillChip('Clean Arch', const Color(0xFFFFE4E6), const Color(0xFFBE123C)),
                      _buildSkillChip('UI/UX', const Color(0xFFF3E8FF), const Color(0xFF7E22CE)),
                      _buildSkillChip('Firebase', const Color(0xFFFEF3C7), const Color(0xFFB45309)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // 6. Featured Projects
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Featured Projects',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildProjectCard(
                        'E-Shop Flutter',
                        'Mobile App • 2026',
                        const [Color(0xFF60A5FA), Color(0xFF3B82F6)], // placeholder gradient
                      ),
                      _buildProjectCard(
                        'Crypto Vault',
                        'Finance • Clean Arch',
                        const [Color(0xFFC084FC), Color(0xFFA855F7)], // placeholder gradient
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // 7. Contact Card
              Container(
                height: 192,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0F1729).withOpacity(0.04),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildContactRow(
                      leadIcon: Icons.contact_mail_outlined,
                      title: 'Contact Information',
                      titleColor: const Color(0xFF0F172A),
                      titleWeight: FontWeight.w700,
                      trailIcon: Icons.keyboard_arrow_down,
                      leadIconBg: const Color(0xFFF1F5F9),
                    ),
                    Container(height: 1, color: const Color(0xFFF1F5F9)),
                    _buildContactRow(
                      leadIcon: Icons.email_outlined,
                      title: 'alex.rivers@email.com',
                      titleColor: const Color(0xFF334155),
                      titleWeight: FontWeight.w500,
                      trailIcon: Icons.copy,
                      leadIconBg: const Color(0xFFF8FAFC),
                    ),
                    Container(height: 1, color: const Color(0xFFF1F5F9)),
                    _buildContactRow(
                      leadIcon: Icons.phone_outlined,
                      title: '+81 (90) 1234-5678',
                      titleColor: const Color(0xFF334155),
                      titleWeight: FontWeight.w500,
                      trailIcon: Icons.copy,
                      leadIconBg: const Color(0xFFF8FAFC),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      width: 20,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Center(
        child: Icon(icon, size: 18, color: const Color(0xFF0F172A)),
      ),
    );
  }

  Widget _buildStatColumn(String value, String label, Color valueColor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.0,
            color: valueColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 1.0,
            color: Color(0xFF94A3B8),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillChip(String label, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle, size: 14, color: textColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String subtitle, List<Color> gradientColors) {
    return Container(
      width: 165,
      height: 145,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F1729).withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradientColors,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Icon(Icons.image, color: Colors.white54, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0F172A),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF64748B),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContactRow({
    required IconData leadIcon,
    required String title,
    required Color titleColor,
    required FontWeight titleWeight,
    required IconData trailIcon,
    required Color leadIconBg,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: leadIconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(leadIcon, size: 16, color: const Color(0xFF64748B)),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: titleWeight,
                color: titleColor,
              ),
            ),
          ),
          Icon(trailIcon, size: 16, color: const Color(0xFF94A3B8)),
        ],
      ),
    );
  }
}
