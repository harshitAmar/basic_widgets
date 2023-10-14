import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Style Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Default Text',
            ),
            Text(
              'Custom Text Style Sanctus dolores erat lorem ipsum dolore at ea ea consetetur ipsum. Gubergren sed stet accusam duo sadipscing dolores accusam. Labore et et gubergren dolor sed et lorem, sea takimata kasd diam lorem ea aliquyam sadipscing amet kasd. Magna clita et at at clita stet sea justo sit. Et sit elitr sanctus aliquyam sit. Dolor rebum ipsum. ',
              style: GoogleFonts.aboreto(
                color: Colors.blue,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                shadows: [
                  const BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 5,
                    color: Colors.black,
                  ),
                  const BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 5,
                    color: Colors.red,
                  ),
                ],
                fontStyle: FontStyle.italic,
                letterSpacing: 1.2,
                wordSpacing: 2.0,
              ),
              maxLines: 3,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
