import 'package:flutter/material.dart';
import '../apis/profile.dart';
import '../utils/enums/profile_data.dart';
// import '../utils/extensions/StringExtensions.dart';
// import 'package:flutter_learn/utils/extensions/StringExtensions.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // 在这里可以添加登录相关的状态和逻辑
  final TextEditingController searchController = TextEditingController();
  bool data = false;
  final _formKey = GlobalKey<FormState>(); // 在這裡定義 _formKey

  // String? isDataVaild(String? inputData) {
  //   if (inputData == null || inputData.isEmpty) {
  //     return 'missing data';
  //   }

  //   if (true) {
  //     return 'hello';
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Form(
                key: _formKey,
                child: TextFormField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: '請輸入文字,禁止輸入符號',
                    ),
                    // validator: isDataVaild,
                    onFieldSubmitted: (String _) {
                      setState(() {
                        data = true;
                      });
                    }))),
        body: data
            ? const Center(
                child: Text(
                  ProfileApi.getItemData(ProFileDataEnum.food)
                );
              )
            : const Center(
                child: Text('456'),
              ));
  }
}
