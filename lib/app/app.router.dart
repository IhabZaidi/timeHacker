// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../representation/screens/home/home_screen_view.dart';

class Routes {
  static const String homeScreenView = '/';
  static const all = <String>{
    homeScreenView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreenView, page: HomeScreenView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeScreenView(),
        settings: data,
      );
    },
  };
}
