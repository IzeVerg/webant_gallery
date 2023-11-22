import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webant_project/bloc/home_bloc.dart';
import 'package:webant_project/data/enums/status_downloading.dart';
import 'package:webant_project/data/models/photo_model.dart';
import 'package:webant_project/view/core/widgets/error_widget.dart';
import 'package:webant_project/view/description/description_page.dart';

import '../core/widgets/circular_progress_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Webant'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.pinkAccent,
            dividerColor: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            tabs: <Tab>[
              Tab(
                height: 75,
                child: Text('New', style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
              Tab(
                height: 75,
                child: Text('Popular', style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
            ],
          ),
        ),
        body: BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) => previous.modelNew != current.modelNew,
          listener: (BuildContext context, state) {
          if (state.modelNew == null) {
            context.read<HomeBloc>().add(const HomeEvent.errorResponse());
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.statusNew == StatusDownloadingNew.loading ||
                state.statusPopular == StatusDownloadingPopular.loading) {
              return const CircularProgressBody();
            } else if (state.statusNew == StatusDownloadingNew.error ||
                state.statusPopular == StatusDownloadingPopular.error) {
              return const ErrorText();
            }
            return const _Body();
          },
        ),
      ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        RefreshIndicator(
          onRefresh: () async {
            context.read<HomeBloc>().add(const HomeEvent.upToRefresh());
            context.read<HomeBloc>().add(const HomeEvent.initGetNewPhoto());
          },
          child: _NewPhotos(
            key: const PageStorageKey(1),
            model: context.watch<HomeBloc>().state.modelNew,
          ),
        ),
        RefreshIndicator(
          onRefresh: () async {
            context.read<HomeBloc>().add(const HomeEvent.upToRefresh());
            context.read<HomeBloc>().add(const HomeEvent.initGetPopularPhoto());
          },
          child: _PopularPhotos(
            key: const PageStorageKey(2),
            model: context.watch<HomeBloc>().state.modelPopular,
          ),
        ),
      ],
    );
  }
}

class _NewPhotos extends StatefulWidget {
  const _NewPhotos({super.key, required this.model});

  final PhotosModel? model;

  @override
  State<_NewPhotos> createState() => _NewPhotosState();
}

class _NewPhotosState extends State<_NewPhotos> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreData() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        context.read<HomeBloc>().add(const HomeEvent.changePaginationNewStatus());
        context.read<HomeBloc>().add(const HomeEvent.paginationForNewPhoto());
        context.read<HomeBloc>().add(const HomeEvent.getNewPhoto());
        context.read<HomeBloc>().add(const HomeEvent.changePaginationNewStatus());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
      itemCount: widget.model?.data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DescriptionPage(model: widget.model?.data[index])),
            );
          },
          child: Container(
            height: 100,
            width: 159,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: CachedNetworkImage(
              imageUrl: 'https://gallery.prod1.webant.ru/media/${widget.model?.data[index].image.name}',
              errorWidget: (BuildContext context, String s, Object o) => Image.asset('assets/images/error.jpeg'),
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.59,
      ),
    );
  }
}

class _PopularPhotos extends StatefulWidget {
  const _PopularPhotos({super.key, required this.model});

  final PhotosModel? model;

  @override
  State<_PopularPhotos> createState() => _PopularPhotosState();
}

class _PopularPhotosState extends State<_PopularPhotos> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreData() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        context.read<HomeBloc>().add(const HomeEvent.changePaginationPopularStatus());
        context.read<HomeBloc>().add(const HomeEvent.paginationForPopularPhoto());
        context.read<HomeBloc>().add(const HomeEvent.getPopularPhoto());
        context.read<HomeBloc>().add(const HomeEvent.changePaginationPopularStatus());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool pagination = false; //variable for my unlucky pagination with circular progress indicator in down
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) => previous.paginationPopular != current.paginationPopular,
      listener: (context, state) {
        if (state.paginationPopular == true) {
          pagination = state.paginationPopular;
        } else if (state.paginationPopular == false) {
          pagination = state.paginationPopular;
        }
      },
      child: GridView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        itemCount: widget.model?.data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DescriptionPage(model: widget.model?.data[index])),
              );
            },
            child: Container(
              height: 100,
              width: 159,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: 'https://gallery.prod1.webant.ru/media/${widget.model?.data[index].image.name}',
                errorWidget: (BuildContext context, String s, Object o) => Image.asset('assets/images/error.jpeg'),
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.59,
        ),
      ),
    );
  }
}
