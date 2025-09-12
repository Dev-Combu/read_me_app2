// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingBookDto {

 String get id; String get uid; String get author; String get bookTitle; String get title; String get image; String get detail; String get date;
/// Create a copy of ReadingBookDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadingBookDtoCopyWith<ReadingBookDto> get copyWith => _$ReadingBookDtoCopyWithImpl<ReadingBookDto>(this as ReadingBookDto, _$identity);

  /// Serializes this ReadingBookDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadingBookDto&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.author, author) || other.author == author)&&(identical(other.bookTitle, bookTitle) || other.bookTitle == bookTitle)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,author,bookTitle,title,image,detail,date);

@override
String toString() {
  return 'ReadingBookDto(id: $id, uid: $uid, author: $author, bookTitle: $bookTitle, title: $title, image: $image, detail: $detail, date: $date)';
}


}

/// @nodoc
abstract mixin class $ReadingBookDtoCopyWith<$Res>  {
  factory $ReadingBookDtoCopyWith(ReadingBookDto value, $Res Function(ReadingBookDto) _then) = _$ReadingBookDtoCopyWithImpl;
@useResult
$Res call({
 String id, String uid, String author, String bookTitle, String title, String image, String detail, String date
});




}
/// @nodoc
class _$ReadingBookDtoCopyWithImpl<$Res>
    implements $ReadingBookDtoCopyWith<$Res> {
  _$ReadingBookDtoCopyWithImpl(this._self, this._then);

  final ReadingBookDto _self;
  final $Res Function(ReadingBookDto) _then;

/// Create a copy of ReadingBookDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? author = null,Object? bookTitle = null,Object? title = null,Object? image = null,Object? detail = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,bookTitle: null == bookTitle ? _self.bookTitle : bookTitle // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReadingBookDto].
extension ReadingBookDtoPatterns on ReadingBookDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReadingBookDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReadingBookDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReadingBookDto value)  $default,){
final _that = this;
switch (_that) {
case _ReadingBookDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReadingBookDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReadingBookDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String uid,  String author,  String bookTitle,  String title,  String image,  String detail,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReadingBookDto() when $default != null:
return $default(_that.id,_that.uid,_that.author,_that.bookTitle,_that.title,_that.image,_that.detail,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String uid,  String author,  String bookTitle,  String title,  String image,  String detail,  String date)  $default,) {final _that = this;
switch (_that) {
case _ReadingBookDto():
return $default(_that.id,_that.uid,_that.author,_that.bookTitle,_that.title,_that.image,_that.detail,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String uid,  String author,  String bookTitle,  String title,  String image,  String detail,  String date)?  $default,) {final _that = this;
switch (_that) {
case _ReadingBookDto() when $default != null:
return $default(_that.id,_that.uid,_that.author,_that.bookTitle,_that.title,_that.image,_that.detail,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReadingBookDto implements ReadingBookDto {
   _ReadingBookDto({required this.id, required this.uid, required this.author, required this.bookTitle, required this.title, required this.image, required this.detail, required this.date});
  factory _ReadingBookDto.fromJson(Map<String, dynamic> json) => _$ReadingBookDtoFromJson(json);

@override final  String id;
@override final  String uid;
@override final  String author;
@override final  String bookTitle;
@override final  String title;
@override final  String image;
@override final  String detail;
@override final  String date;

/// Create a copy of ReadingBookDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadingBookDtoCopyWith<_ReadingBookDto> get copyWith => __$ReadingBookDtoCopyWithImpl<_ReadingBookDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadingBookDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadingBookDto&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.author, author) || other.author == author)&&(identical(other.bookTitle, bookTitle) || other.bookTitle == bookTitle)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,author,bookTitle,title,image,detail,date);

@override
String toString() {
  return 'ReadingBookDto(id: $id, uid: $uid, author: $author, bookTitle: $bookTitle, title: $title, image: $image, detail: $detail, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ReadingBookDtoCopyWith<$Res> implements $ReadingBookDtoCopyWith<$Res> {
  factory _$ReadingBookDtoCopyWith(_ReadingBookDto value, $Res Function(_ReadingBookDto) _then) = __$ReadingBookDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String uid, String author, String bookTitle, String title, String image, String detail, String date
});




}
/// @nodoc
class __$ReadingBookDtoCopyWithImpl<$Res>
    implements _$ReadingBookDtoCopyWith<$Res> {
  __$ReadingBookDtoCopyWithImpl(this._self, this._then);

  final _ReadingBookDto _self;
  final $Res Function(_ReadingBookDto) _then;

/// Create a copy of ReadingBookDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? author = null,Object? bookTitle = null,Object? title = null,Object? image = null,Object? detail = null,Object? date = null,}) {
  return _then(_ReadingBookDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,bookTitle: null == bookTitle ? _self.bookTitle : bookTitle // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
