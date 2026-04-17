import 'package:flutter/material.dart';
import 'package:london/Colors_app.dart';
import 'package:london/components/bar.dart';
import 'package:london/components/header.dart';
import 'package:london/components/section_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Bar(isHome: true,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Header(),
                  const SectionCard(
                    title: "About the Application / Website",
                    content: """The idea is to create a website called "London Culture & Tech Guide", 
aimed at students, tourists, and developers who want to understand both the cultural 
and professional environment of London.""",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
