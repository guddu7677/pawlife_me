import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           SizedBox(height: 10),
           Text(
              "Senectus sit aliquam mattis orci dignissim sed saritas arcu semper felis morbi vulputate neque mattis ac lectus.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black54, height: 1.4),
            ),
           SizedBox(height: 20),

             Text(
              "OUR INFO",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDAA520),
                letterSpacing: 1.2,
              ),
            ),
           SizedBox(height: 6),
           Text(
              "Get in Touch",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
           SizedBox(height: 8),
             Text(
              "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
           SizedBox(height: 30),

            _ContactCard(
              icon: Icons.location_on,
              title: "Our Location",
              subtitle: "121 King Street, Melbourne, 3000, Australia",
              color: Colors.teal.shade50,
              iconColor: Colors.teal,
            ),
           SizedBox(height: 16),
            _ContactCard(
              icon: Icons.phone,
              title: "Phone Number",
              subtitle: "+61 3 8376 6284",
              color: Colors.blue.shade50,
              iconColor: Colors.blueAccent,
            ),
           SizedBox(height: 16),
            _ContactCard(
              icon: Icons.email_rounded,
              title: "Email Us",
              subtitle: "support@pawlify.com",
              color: Colors.purple.shade50,
              iconColor: Colors.purpleAccent,
            ),

           SizedBox(height: 30),

           Text(
              "Send Us a Message",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: "Your Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                labelText: "Your Email",
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
             SizedBox(height: 12),

            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Your Message",
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.message_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.send, color: Colors.white),
                label: Text(
                  "Send Message",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
           SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color iconColor;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: iconColor.withOpacity(0.1),
              radius: 28,
              child: Icon(icon, size: 28, color: iconColor),
            ),
           SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 14, color: Colors.black54, height: 1.4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
