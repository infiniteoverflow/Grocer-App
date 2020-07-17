import 'package:flutter/material.dart';
import 'package:grocer_app/widgets/recentlyViewedCard.dart';

import 'bestSellerCard.dart';
import 'ourTopPicksCard.dart';

List<OurTopPicksCard> OurTopPicks = [
  OurTopPicksCard("assets/images/books/book_zola.png", "Michael Rosen",
      "The \n Dissapearance of \n Emila Zola"),
  OurTopPicksCard("assets/images/books/book_fatherhood.png", "Marcus Berkmann",
      "Fatherhood"),
  OurTopPicksCard("assets/images/books/book_space.png", "Stride Lottie",
      "The Time \n Travellers Handbook"),
  OurTopPicksCard("assets/images/books/book_tree.png", "Stride Lottie",
      "The Time \n Travellers Handbook"),
];

List<BestSellersCard> BestSellersBook = [
  BestSellersCard("assets/images/books/book_zoo.png", "Christopher Wilson",
      "Zoo", "4"),
  BestSellersCard("assets/images/books/book_paper.png", "Rebecca Mackenzie",
      "In A Land Of Paper Gods", "5"),
  BestSellersCard("assets/images/books/book_tattletale.png", "Sarah J. Noughton",
      "Tattletale", "4"),
];

List<RecentlyViewedCard> RecentlyViewedBook = [
  RecentlyViewedCard("assets/images/books/book_tree.png", "Jake Arnott",
      "The Fatal Tree"),
  RecentlyViewedCard("assets/images/books/book_four.png", "LOTZ, SARAH",
      "Day Four"),
  RecentlyViewedCard("assets/images/books/book_d2d.png", "Edward Humes",
      "Door to Door"),
];
