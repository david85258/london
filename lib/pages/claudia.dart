import 'package:flutter/material.dart';
import 'package:london/components/bar.dart';
import 'package:london/components/section_card.dart';

class Claudia extends StatelessWidget {
  const Claudia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Bar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
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
                        const Text(
                          "A simple website about London, its culture and technology.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SectionCard(
                    title: "Software development jobs in London",
                    content:
                        """London is a major tech hub in Europe, offering jobs such as:
            
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
                    content:
                        """London uses British English, which differs from other types like American English.
            
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
                    content:
                        """What I like most about London is its combination of history and modern technology. You can see historic places like Buckingham Palace and, at the same time, find innovative tech companies and startups. It is also very multicultural, which makes it an exciting place to live and work.""",
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
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
