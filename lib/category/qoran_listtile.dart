import 'package:azkar/display_qoran_page.dart';
import 'package:azkar/models/qoran_names.dart';
import 'package:flutter/material.dart';

class QoranListtile extends StatefulWidget {
  const QoranListtile({super.key});

  @override
  State<QoranListtile> createState() => _QoranListtileState();
}

class _QoranListtileState extends State<QoranListtile> {
  void _navigateToDisplayTextPage(String text, String text2) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DisplayTextPage(
          textToDisplay: text,
          nameToDisplay: text2,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: sour.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => _navigateToDisplayTextPage(
                    sour[index].displayqoran, sour[index].name),
                child: ListTile(
                    leading: Text(
                      'عدد الايات : ${sour[index].ayat}',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      children: [
                        Spacer(),
                        Text(
                          sour[index].name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    //Text(chats[index].name),
                    subtitle: Row(
                      children: [
                        Spacer(),
                        Text(
                          'سورة رقم : ${sour[index].index}',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    trailing: Image(
                      image: AssetImage('assets/images/qoran2.jpg'),
                    )),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          );
        });
  }
}
