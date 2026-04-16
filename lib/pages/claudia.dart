import 'package:flutter/material.dart';
import 'package:london/components/bar.dart';
import 'package:london/components/header.dart';
import 'package:london/components/section_card.dart';

class Claudia extends StatelessWidget {
  const Claudia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Bar(isHome: false,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Header(),
                  const SectionCard(
                    title: "Software development jobs in London",
                    content:
                        """London is a major tech hub in Europe, offering jobs such as:
            
    - Frontend Developer (React, Angular)
    - Backend Developer (Java, Node.js, Python)
    - Full Stack Developer
    - DevOps Engineer
    - Cybersecurity Specialist
    - Mobile App Developer
    
Big tech companies and startups are located in areas like Silicon Roundabout (Shoreditch).""",
                  ),
                  const SectionCard(
                    title: "Differences in English (London English)",
                    content:
                        """London uses British English, which differs from other types like American English.
            
    - Vocabulary: "Flat" (UK) vs "Apartment" (US)
    - Vocabulary: "Lift" (UK) vs "Elevator" (US)
    - Vocabulary: "Tube" (London) vs "Subway" (US)

    - Pronunciation: some Londoners use Cockney accent.
    - Pronunciation: "th" sounds like "f" -> "think" -> "fink"
    - Pronunciation: "h" is dropped -> "house" -> "ouse"

    - Slang: "Mate" = friend
    - Slang: "Cheers" = thanks
    - Slang: "Fancy" = want/like""",
                  ),
                  const SectionCard(
                    title: "What I like about London",
                    content:
                        """What I like most about London is its combination of history and modern technology. 
You can see historic places like Buckingham Palace and, at the same time, find innovative tech companies and startups. 
It is also very multicultural, which makes it an exciting place to live and work.""",
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
