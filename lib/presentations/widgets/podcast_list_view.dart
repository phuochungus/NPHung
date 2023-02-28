import 'package:flutter/material.dart';

import '../../sample_data.dart';
import 'podcast_list_item.dart';

abstract class FunctionExecutor {
  Function? functionPointer;
  List<dynamic>? positionalArguments;
  Map<Symbol, dynamic>? namedArguments;
  FunctionExecutor(this.functionPointer);

  void execute() {
    Function.apply(functionPointer!, positionalArguments, namedArguments);
  }
}

class NavigationFunctionExecutor extends FunctionExecutor {
  BuildContext? context;

  NavigationFunctionExecutor(Function? functionPointer)
      : super(functionPointer);

  void setContext(BuildContext context) {
    this.context = context;
  }

  void execute() {
    try {
      if (namedArguments?[Symbol("context")] == null)
        throw Exception("Named argument context cant be null");
      super.execute();
    } catch (e) {
      throw Exception('namedArguments cant be null');
    }
  }
}

class SetStateExecutor extends FunctionExecutor {
  SetStateExecutor(Function? functionPointer) : super(functionPointer);
}

class PodcastListView extends StatelessWidget {
  final FunctionExecutor onPressHandler;

  const PodcastListView({Key? key, required this.onPressHandler})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: podcasts.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => Item(
        onPressHandler: () {
          if (onPressHandler is NavigationFunctionExecutor) {
            onPressHandler.namedArguments = {
              Symbol('context'): context,
              Symbol('selectedPodcast'): podcasts[index]
            };
          } else if (onPressHandler is SetStateExecutor) {
            onPressHandler.positionalArguments = [podcasts[index]];
          }
          onPressHandler.execute();
          //HomeScreen.navigateToPodcastPlayer(context, podcasts[index]);
        },
        podcast: podcasts[index],
      ),
    );
  }
}
