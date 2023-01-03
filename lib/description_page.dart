import 'package:flutter/material.dart';

String baconText = """
Bacon ipsum dolor amet brisket prosciutto pork short loin strip steak, flank jowl bacon. Venison hamburger capicola, ham salami spare ribs drumstick burgdoggen chicken shank swine bresaola kielbasa bacon turducken. Ribeye tri-tip alcatra cow doner short ribs capicola ham pork chop kielbasa pork turducken. Leberkas jerky fatback rump pastrami drumstick turkey beef.

Spare ribs ham pancetta porchetta, pastrami shoulder alcatra ham hock corned beef leberkas prosciutto swine tri-tip shankle. Cow picanha chislic corned beef rump tri-tip, short loin strip steak drumstick fatback. Ball tip cupim beef ribs, tenderloin turkey flank rump sirloin pastrami buffalo short loin meatball capicola venison ham hock. Bacon beef boudin porchetta kielbasa. Tongue short ribs corned beef ground round buffalo ribeye salami jowl shank beef ribs.

Filet mignon ribeye andouille, shank brisket pancetta burgdoggen boudin strip steak cupim drumstick capicola turkey biltong tongue. Prosciutto short loin brisket capicola turkey. Prosciutto pig capicola tongue leberkas, bacon tail spare ribs turducken. Sausage capicola corned beef, biltong chislic frankfurter strip steak beef ribs buffalo. Ball tip strip steak filet mignon beef frankfurter meatball, kielbasa tenderloin ham hock swine chislic. Ham capicola bresaola kielbasa pork loin. Meatloaf pork loin filet mignon andouille drumstick pork jerky turducken.
""";

class DescriptionPage extends StatelessWidget {
  final String title;
  final String imagePath;

  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              const SizedBox(height: 20),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                baconText,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
