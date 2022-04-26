import 'package:app_prakyath/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:endless/endless.dart';

class ExampleItem {
  final String title;

  ExampleItem({
    required this.title,
  });
}

class ExampleItemPager {
  int pageIndex = 0;
  final int pageSize;

  ExampleItemPager({
    this.pageSize = 8,
  });

  List<ExampleItem> nextBatch() {
    List<ExampleItem> batch = [];

    for (int i = 0; i < pageSize; i++) {
      batch.add(ExampleItem(title: arr[i][0]));
    }

    pageIndex += 1;

    return batch;
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  ExampleItemPager pager = ExampleItemPager();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: (9/10)*MediaQuery. of(context). size. width,
            child: PaginatedSearchBar<ExampleItem>(
              containerDecoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Search',
              emptyBuilder: (context) {
                return const Text("I'm an empty state!");
              },
              placeholderBuilder: (context) {
                return const Text("Search for your favourite foods!");
              },
              paginationDelegate: EndlessPaginationDelegate(
                pageSize: 20,
                maxPages: 3,
              ),
              onSearch: ({
                required pageIndex,
                required pageSize,
                required searchQuery,
              }) async {
                return Future.delayed(const Duration(milliseconds: 1300), () {
                  if (searchQuery == "empty") {
                    return [];
                  }

                  if (pageIndex == 0) {
                    pager = ExampleItemPager();
                  }

                  return pager.nextBatch();
                });
              },
              itemBuilder: (
                  context, {
                    required item,
                    required index,
                  }) {
                return Text(item.title);
              },
            ),
          ),
        ),
      ],
    );
  }
}
