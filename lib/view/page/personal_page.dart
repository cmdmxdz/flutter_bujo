import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 个人页
class PersonalPage extends StatefulWidget {
	@override
	_PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {

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
						Text('个人页', style: Theme.of(context).textTheme.headline6),
						Text('Personal Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
