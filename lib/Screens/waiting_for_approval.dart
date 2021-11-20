import 'package:admin/screens/activity.dart';
import 'package:admin/shared/const.dart';
import 'package:flutter/material.dart';

class WaitingForApproval extends StatefulWidget {
  const WaitingForApproval({Key? key}) : super(key: key);

  @override
  _WaitingForApprovalState createState() => _WaitingForApprovalState();
}

class _WaitingForApprovalState extends State<WaitingForApproval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222B44),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              elevation: 0.0,
              title: Text(
                'Waiting for Approval',
                style: TextStyle(
                  color: const Color(0xffF0D5A3),
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor:
              const Color(0xff222B44), //const Color(0xff222B44),
            ),
          ],
          body: Container(
            decoration: whiteCont,
            child: ListView.separated(
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Activity(),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.access_time_outlined,
                      color: Color(0xff222B44),
                    ),
                    title: Text('khaled waiting for approval',
                        style: TextStyle(
                          //color: const Color(0xffF0D5A3),
                            fontSize: 15,
                            fontWeight: FontWeight.w500)
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 15,
                  thickness: 1,
                );
              },
            ),
          ),
        )
    );
  }
}
