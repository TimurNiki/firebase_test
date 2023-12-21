import 'package:equatable/equatable.dart';

import '../../../../core/utility/base/base_firebase_model.dart';

class News extends Equatable with IdModel, BaseFirebaseModel<News> {
  final String? title;
  final String? category;
  final String? categoryID;
  final String? backgroundImage;
  @override
  final String? id;

  const News({
    this.title,
    this.category,
    this.categoryID,
    this.backgroundImage,
    this.id,
  });

  @override
  List<Object?> get props => [title, category, categoryID, backgroundImage, id];

  News copyWith({
    String? title,
    String? category,
    String? categoryID,
    String? backgroundImage,
    String? id,
  }) {
    return News(
      title: title ?? this.title,
      category: category ?? this.category,
      categoryID: categoryID ?? this.categoryID,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'category': category,
      'categoryID': categoryID,
      'backgroundImage': backgroundImage,
      'id': id,
    };
  }

  @override
  News fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'] as String?,
      category: json['category'] as String?,
      categoryID: json['categoryID'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      id: json['id'] as String?,
    );
  }
}
