import 'package:adv_basics/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
      'National Anthem of India',
      [
        'Jana Gana Mana',
        'Vande Mataram',
        'Amar Sonar Bangla',
        'Sayaun Thunga Phulka'
      ],
      "Jana Gana Mana"),
  QuizQuestions('Which one of the following is not an Asian country?',
      ['Sierra Leone', 'Timor Leste', 'Brunei', 'Tajikistan'], "Sierra Leone"),
  QuizQuestions(
      'Which one of the following is the oldest Indian Philosophy?',
      [
        'Sankhya  (purusha & prakriti)',
        'Yoga (mind-body connection)',
        'Nyaya  (logic)',
        'Charvaka (materialism)'
      ],
      "Sankhya"),
  QuizQuestions(
      'Which one of the following is not a Nastika (heterodox) school of Indian Philosophy?',
      [
        'Nyaya  (logic)',
        'Charvaka (materialism)',
        'Jainism  (ahimsa)',
        'Buddhism (nirvana)'
      ],
      "Charvaka"),
  QuizQuestions('Oldest Indian continuously inhabited city',
      ['Varanasi', 'Ujjain', 'Dwarka', 'Puri'], "Varanasi"),
  QuizQuestions(
      'After how many years "The MAHA KUMBH Mela" takes place?',
      [
        'After every 144 years',
        'It is held anually',
        //'After every 3 years',
        'After every 6 years',
        'After every 12 years'
        // 'After every 20736 years'
      ],
      "After every 144 years")
];
