import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

import 'package:stylish/l10n/localization_de.dart';
import 'package:stylish/l10n/localization_en.dart';

abstract class Localization {
  static Localization? of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  String get explore;
  String get best_outfits;
  String get dress;
  String get shirt;
  String get pants;
  String get tshirt;
  String get long_sleeve;
  String get casual_henley;
  String get curved_hem;
  String get casual_nolin;
  String get henley_description;
  String get add_to_cart;
  String get new_arrival;
  String get popular;
  String get search_items;
  String get see_all;
  String get colors;
}

class ECommerceLocalizationsDelegate extends LocalizationsDelegate<Localization> {
  const ECommerceLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<Localization> load(Locale locale) => _load(locale);

  static Future<Localization> _load(Locale locale) async {
    final String name =
        (locale.countryCode == null || locale.countryCode!.isEmpty)
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    Intl.defaultLocale = localeName;

    if (locale.languageCode == 'en') {
      return LocalizationEN();
    }
    return LocalizationDE();
  }

  @override
  bool shouldReload(LocalizationsDelegate<Localization> old) => false;
}
