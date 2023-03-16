import 'dart:convert';

import 'package:network__api/src/models/albums_model.dart';
import 'package:network__api/src/models/comments_model.dart';
import 'package:network__api/src/models/dummy/carts/carts_model.dart';
import 'package:network__api/src/models/photo_model.dart';
import 'package:network__api/src/models/post_model.dart';

import '../models/todo_model.dart';

extension PostEx on String {
  List<Post> get toListPost {
    List list = jsonDecode(this);
    List<Post> posts = list.map<Post>((map) => Post.fromJson(map)).toList();
    return posts;
  }

  List<Comment> get toListComment {
    List list = jsonDecode(this);
    List<Comment> comment = list.map<Comment>((map) => Comment.fromJson(map)).toList();
    return comment;
  }

  List<Album> get toListAlbum {
    List list = jsonDecode(this);
    List<Album> album = list.map<Album>((map) => Album.fromJson(map)).toList();
    return album;
  }

  List<Photo> get toListPhoto{
    List list = jsonDecode(this);
    List<Photo> photo = list.map<Photo>((map) => Photo.fromJson(map)).toList();
    return photo;
  }

  List<Todo> get toListTodo{
    List list = jsonDecode(this);
    List<Todo> todo = list.map<Todo>((map) => Todo.fromJson(map)).toList();
    return todo;
  }

  List<MainCart> get toListCart{
    List list = jsonDecode(this);
    List<MainCart> cart = list.map<MainCart>((map) => MainCart.fromJson(map)).toList();
    return cart;
  }
}


