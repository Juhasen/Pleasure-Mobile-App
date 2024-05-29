import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:pleasure_mobile_app/app/screens/map/map_page.dart';


class FilterState extends ChangeNotifier {
  final Set<String> _activeFilters = {};
  late int filterSize = activeFilters.length;

  Set<String> get activeFilters => _activeFilters;

  void addFilter(String filter) {
    _activeFilters.add(filter);
    notifyListeners();
  }

  void removeFilter(String filter) {
    _activeFilters.remove(filter);
    notifyListeners();
  }

  int activeFiltersLength(){
    return activeFilters.length;
  }
}

