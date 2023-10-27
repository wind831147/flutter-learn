import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_learn/utils/enums/profile_data.dart';
import 'package:flutter_learn/widget/view_profile_list.dart';
import '../apis/profile.dart';
import '../models/item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isHaveData = false;

  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearchTextChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  void onSearchTextChanged() {
    setState(() {
      isHaveData = searchController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Form(
                key: _formKey,
                child: TextFormField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: '搜尋使用者....',
                    )))),
        body: isHaveData
            ? FutureBuilder(
                future: ProfilesApi.getListItemData(ProFileDataEnum.boy),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Profiles>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Text('Fail'); // 如果发生错误，显示错误消息
                  } else {
                    final profiles = snapshot.data!;
                    final imageLoadFutures = profiles.map((row) {
                      return precacheImage(NetworkImage(row.picUrl), context);
                    }).toList();

                    return FutureBuilder(
                        future: Future.wait(imageLoadFutures),
                        builder: (BuildContext context,
                            AsyncSnapshot<void> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            return ProfileListWidget(
                                profiles: profiles, key: UniqueKey());
                          }
                        });
                  }
                })
            : FutureBuilder(
                future: ProfilesApi.getListItemData(ProFileDataEnum.girl),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Profiles>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Text('Fail'); // 如果发生错误，显示错误消息
                  }

                  final profiles = snapshot.data!;

                  return MasonryGridView.count(
                    crossAxisCount: 3,
                    itemCount: profiles.length,
                    itemBuilder: (context, index) => Image.network(
                      profiles[index].picUrl,
                      fit: BoxFit.cover,
                    ),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  );
                }));
  }
}
