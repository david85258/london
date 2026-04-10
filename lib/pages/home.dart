import 'package:flutter/material.dart';
import 'package:london/components/bar.dart';
import 'package:london/components/section_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Bar(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: Colors.red[50],
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_city,
                        size: 80,
                        color: Colors.red[700],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "London Culture & Tech Guide",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          debugPrint("hola mundo");
                        },
                        child: const Text(
                          "A simple website about London, its culture and technology.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SectionCard(
                  title: "About the Application / Website",
                  content: """The idea is to create a website called "London Culture & Tech Guide", aimed at students, tourists, and developers who want to understand both the cultural and professional environment of London.""",
                ),
                const SectionCard(
                  title: "Customs of the English-speaking community",
                  content: """Drinking tea is a very common tradition, especially afternoon tea.

People often queue (stand in line) in an orderly way; it is considered very important.

Pub culture is a big part of social life, where people meet after work.

Celebrations like Bonfire Night (Guy Fawkes Night) are traditional events.""",
                ),
                const SectionCard(
                  title: "Social norms",
                  content: """Politeness is very important; people frequently say "please", "thank you", and "sorry".

Respect for personal space is expected.

Being punctual is valued, especially in professional environments.

Talking loudly in public transport is generally frowned upon.""",
                ),
                const SectionCard(
                  title: "Values and beliefs",
                  content: """Multiculturalism: London is very diverse, with people from many cultures and backgrounds.

Equality and inclusion are strongly promoted.

Freedom of expression is an important value.

Environmental awareness is growing, with many people supporting sustainability.""",
                ),
                const SectionCard(
                  title: "Software development jobs in London",
                  content: """London is a major tech hub in Europe, offering jobs such as:

Frontend Developer (React, Angular)
Backend Developer (Java, Node.js, Python)
Full Stack Developer
DevOps Engineer
Cybersecurity Specialist
Mobile App Developer

Big tech companies and startups are located in areas like Silicon Roundabout (Shoreditch).""",
                ),
                const SectionCard(
                  title: "Differences in English (London English)",
                  content: """London uses British English, which differs from other types like American English.

Vocabulary: "Flat" (UK) vs "Apartment" (US)
Vocabulary: "Lift" (UK) vs "Elevator" (US)
Vocabulary: "Tube" (London) vs "Subway" (US)

Pronunciation: some Londoners use Cockney accent.
Pronunciation: "th" sounds like "f" -> "think" -> "fink"
Pronunciation: "h" is dropped -> "house" -> "ouse"

Slang: "Mate" = friend
Slang: "Cheers" = thanks
Slang: "Fancy" = want/like""",
                ),
                const SectionCard(
                  title: "What I like about London",
                  content: """What I like most about London is its combination of history and modern technology. You can see historic places like Buckingham Palace and, at the same time, find innovative tech companies and startups. It is also very multicultural, which makes it an exciting place to live and work.""",
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "This home page was made in Flutter and is about London.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
