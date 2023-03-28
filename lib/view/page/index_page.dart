
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 索引页
class IndexPage extends StatefulWidget {
	@override
	_IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

	@override
	void initState() {
		super.initState();
	}

	@override
	void dispose() {
		super.dispose();

	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('索引页', style: Theme.of(context).textTheme.headline6),
						Text('Index Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
