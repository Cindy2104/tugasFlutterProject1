import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageNotification extends StatelessWidget {
  const PageNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Notification', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text('Normal toast'),
              onTap: () {
                showToast(
                  'This is toast',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Permanent toast'),
              onTap: () {
                showToast(
                  'This is a permanent toast',
                  context: context,
                  duration: Duration.zero,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Normal toast full width'),
              onTap: () {
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  borderRadius: BorderRadius.zero,
                  toastHorizontalMargin: 0,
                  fullWidth: true,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Normal toast full width with horizontal margin'),
              onTap: () {
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 20,
                  fullWidth: true,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Normal toast(custom borderRadius textStyle etc)'),
              onTap: () {
                showToast(
                  'This is normal toast',
                  context: context,
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.red),
                  backgroundColor: Colors.yellow,
                  textPadding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 30.0,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(10.0, 20.0),
                    bottom: Radius.elliptical(10.0, 20.0),
                  ),
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
