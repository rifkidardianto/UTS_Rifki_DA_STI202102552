import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Profile';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: const Text(
                    'Enjoyment in work brings perfection to the results.'),
              ),
              _buildTitle("Personal Data"),
              _buildDataRow(item: 'Name :', desc: 'Rifki Dwi Ardianto'),
              _buildDataRow(
                  item: 'Place and date of born :',
                  desc: 'Semarang, 12 October 1987'),
              _buildDataRow(item: 'Gender :', desc: 'Male'),
              _buildDataRow(item: 'Religion :', desc: 'Islam'),
              _buildDataRow(item: 'Status :', desc: 'Married'),
              _buildDataRow(
                  item: 'Address :',
                  desc: 'Jl. MT Haryono, Rawasari, Samarinda Ulu'),
              const SizedBox(height: 10.0),
              _buildTitle("Skills"),
              const SizedBox(height: 10.0),
              _buildSkillRow("Ms Office", 0.80),
              const SizedBox(height: 5.0),
              _buildSkillRow("Switching", 0.75),
              const SizedBox(height: 5.0),
              _buildSkillRow("Routing", 0.85),
              const SizedBox(height: 5.0),
              _buildSkillRow("Wireless", 0.75),
              const SizedBox(height: 30.0),
              _buildTitle("Experience"),
              _buildExperienceRow(
                  company: "BUKIT MAKMUR MANDIRI UTAMA Inc.",
                  position: "Supervisor - IT",
                  duration: " Oct 2017 - Present "),
              _buildExperienceRow(
                  company: "BUKIT MAKMUR MANDIRI UTAMA Inc.",
                  position: "Foreman - IT",
                  duration: " Feb 2009 - 2017 "),
              _buildExperienceRow(
                  company: "BUKIT MAKMUR MANDIRI UTAMA Inc.",
                  position: "Technical Support - IT",
                  duration: " Jul 2007 - 2009 "),
              const SizedBox(height: 20.0),
              _buildTitle("Education"),
              const SizedBox(height: 5.0),
              _buildExperienceRow(
                  company: "STMIK WIDYA UTAMA, PURWOKERTO",
                  position: "S1 Technical Information - ONP",
                  duration: "Jun 2021 - Present"),
              _buildExperienceRow(
                  company: "SMK NEGERI 7, SEMARANG",
                  position: "TKJ - COMPUTER AND NETWORK ENGINEERING",
                  duration: "Jun 2003 - 2007"),
              _buildExperienceRow(
                  company: "SMP NEGERI 16, SEMARANG",
                  position: "",
                  duration: "Jun 2000 - 2003"),
              _buildExperienceRow(
                  company: "SD NEGERI 03, NGALIYAN",
                  position: "",
                  duration: "Jun 1994 - 2000"),
              const SizedBox(height: 20.0),
              _buildTitle("Contact"),
              const SizedBox(height: 5.0),
              const Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.mail,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "rifki.dardianto@gmail.com",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.phone,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "+62-8529-0557-210",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              _buildSocialsRow(),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: const Icon(FontAwesomeIcons.facebookF),
          onPressed: () {},
        ),
        const SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: const Icon(FontAwesomeIcons.github),
          onPressed: () {},
        ),
        const SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: const Icon(FontAwesomeIcons.youtube),
          onPressed: () {},
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return const Row(
      children: <Widget>[
        SizedBox(
          width: 20.0,
          height: 110.0,
        ),
        SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('images/ft_profile.jpg')))),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Rifki Dwi Ardianto",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Supervisor IT"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "BUMA Site LMO, Berau",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

ListTile _buildDataRow({
  required String item,
  String? desc,
}) {
  return ListTile(
    title: Text(
      item,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    subtitle: Text("$desc"),
    textColor: Colors.grey.shade900,
  );
}
