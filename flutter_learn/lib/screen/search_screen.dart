import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/enums/profile_data.dart';
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

                    return ListView.builder(
                      itemCount: profiles.length,
                      itemBuilder: (BuildContext context, index) {
                        final row = profiles[index];
                        return InkWell(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 16,
                            ),
                            title: Text(row.name),
                            subtitle: Text(row.username),
                          ),
                        );
                      },
                    );
                  }
                })
            : FutureBuilder(
                future: ProfilesApi.getItemData(ProFileDataEnum.girl),
                builder:
                    (BuildContext context, AsyncSnapshot<Profiles> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Text('Fail'); // 如果发生错误，显示错误消息
                  } else {
                    final profiles = snapshot.data!;
                    return Container(
                        alignment: Alignment.center,
                        child: Text(
                            'Not Have Data Name: ${profiles.name}, UserName: ${profiles.username}'));
                  }
                }));
  }
}
