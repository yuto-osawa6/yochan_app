

// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter_gen/gen_l10n/app_localizations.dart';


// // class Home extends StatefulWidget {
// //   const Home({Key? key}) : super(key: key);
// //   @override
// //   State<Home> createState() => _HomeState();
// // }

// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title:const Text("Home"),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             Text(
// //               AppLocalizations.of(context)!.hello("kazutxt"),
// //             ),
// //             Text(
// //               AppLocalizations.of(context)!.allow,
// //             ),
// //             Text(
// //               AppLocalizations.of(context)!.deny,
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:yochan/model/task.dart';
// // import 'package:';
// import 'package:yochan/model/task_model.dart';
// import 'package:yochan/view_model/task.dart';
// import 'package:yochan/view_model/task_view_model.dart';
// // import 'package:flutter_mvvm/view/home_page.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_mvvm/view_model/home_page_notifier.dart';

// class HomePage extends ConsumerWidget {
//   HomePage({Key? key}) : super(key: key);
//   // final UserViewModel userViewModel = UserViewModel();
//   // print(userViewModel);
//   //  List<Tasks> users = [];
//   // Future getUsers() async {
//   //   users = (await userViewModel.fetchUsers())!;
//   // }
//   // List<Tasks> users = [];
//   // Future getUsers() async {
//   //   users = (await userViewModel.fetchUsers())!;
//   // }


//   @override

//   Widget build(BuildContext context, WidgetRef ref) {
//     final asyncValue = ref.watch(listProvider); 
//     // print("aa");
//     print(asyncValue);
//     // print(userViewModel);
//     // print(getUsers());

//     // state（状態）
//     final _homePageState = ref.watch(homePageProvider);
//     // provider（状態の操作）
//     final _homePageNotifier = ref.watch(homePageProvider.notifier);
//     // print(_homePageState);
//     return Scaffold(
//       // print(asyncValue);
//       appBar: AppBar(title: const Text('Flutter MVVM')),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _homePageNotifier.resetAllCount,
//         child: const Icon(Icons.exposure_zero),
//       ),
//       // body: ListView(
//       //   children: [
//       //     ListTile(
//       //       title: Text('Main Count ${_homePageState.mainCount}'),
//       //       onTap: _homePageNotifier.increaseMainCount,
//       //     ),
//       //     ListTile(
//       //       title: Text('Sub Count ${_homePageState.subCount}'),
//       //       onTap: _homePageNotifier.increaseSubCount,
//       //     ),
//       //   ],
//       // ),

//       // body: FutureBuilder(
//       //   future: getUsers(),
//       //   builder: (context, snapshot) {
//       //     if (snapshot.connectionState == ConnectionState.waiting) {
//       //       return const Center(
//       //         child: Text("LOADING"),
//       //       );
//       //     } else {
//       //       if (users.isEmpty) {
//       //         return const Center(
//       //           child: Text("NO DATA"),
//       //         );
//       //       }
//       //       return ListView.builder(
//       //         itemCount: users.length,
//       //         itemBuilder: (context, index) => ListTile(
//       //           // title: Text(users[index].name),
//       //           // subtitle: Text(users[index].email),
//       //         ),
//       //       );
//       //     }
//       //   },
//       // ),
//       body: Center(
//         child: asyncValue.when(
//           data: (data) {
//             // print(data);
//             return data.isNotEmpty
//                 ? ListView(
//                     children: data
//                         .map(
//                           (Task coffee) => Card(
//                             child: GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (context) {
//                                     return SimpleDialog(
//                                       title: Text(coffee.title!),
//                                       children: [
//                                         SimpleDialogOption(
//                                           child: Text(coffee.description!),
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: ListTile(
//                                 title: Text(coffee.title!),
//                                 // subtitle: Text(coffee.description!),
//                                 trailing: const Icon(Icons.more_vert),
//                               ),
//                             ),
//                           ),
//                         )
//                         .toList(),
//                   )
//                 : const Text('Data is empty.');
//           },
//           loading: () => const CircularProgressIndicator(),
//           error: (error, _) => Text(error.toString()),
//         ),
//       ),

//     );
//   }
// }