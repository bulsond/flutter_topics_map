import 'package:flutter/material.dart';

import '../model/topic_node.dart';
import 'widget/topics_list_view.dart';
import '../service/topics_parser.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TopicNode>? topics;

  @override
  void initState() {
    super.initState();
    // TopicsParser.initTopics()
    //     .then((topics) => setState(() => this.topics = topics));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    TopicsParser.initTopics()
        .then((topics) => setState(() => this.topics = topics));
  }

  @override
  Widget build(BuildContext context) {
    final list = topics;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Topics'),
      ),
      body: SafeArea(
        child: list != null
            ? TopicsListView(topics: list)
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
