import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webant_project/domain/repository/repository_photo.dart';

import 'bloc/home_bloc.dart';
import 'view/home/home_page.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => HomeBloc(repo: RepositoryPhoto())..add(const HomeEvent.getNewPhoto())..add(const HomeEvent.getPopularPhoto()),
    child:
    const MaterialApp(
      home: HomePage(),
    ),
  ),
  );
}
