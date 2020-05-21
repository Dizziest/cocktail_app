// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailState extends DetailState {
  @override
  final bool isLoading;
  @override
  final CocktailDetailedItem cocktailItem;
  @override
  final String error;

  factory _$DetailState([void Function(DetailStateBuilder) updates]) =>
      (new DetailStateBuilder()..update(updates)).build();

  _$DetailState._({this.isLoading, this.cocktailItem, this.error}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('DetailState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('DetailState', 'error');
    }
  }

  @override
  DetailState rebuild(void Function(DetailStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailStateBuilder toBuilder() => new DetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailState &&
        isLoading == other.isLoading &&
        cocktailItem == other.cocktailItem &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isLoading.hashCode), cocktailItem.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailState')
          ..add('isLoading', isLoading)
          ..add('cocktailItem', cocktailItem)
          ..add('error', error))
        .toString();
  }
}

class DetailStateBuilder implements Builder<DetailState, DetailStateBuilder> {
  _$DetailState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  CocktailDetailedItemBuilder _cocktailItem;
  CocktailDetailedItemBuilder get cocktailItem =>
      _$this._cocktailItem ??= new CocktailDetailedItemBuilder();
  set cocktailItem(CocktailDetailedItemBuilder cocktailItem) =>
      _$this._cocktailItem = cocktailItem;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DetailStateBuilder();

  DetailStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _cocktailItem = _$v.cocktailItem?.toBuilder();
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailState;
  }

  @override
  void update(void Function(DetailStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailState build() {
    _$DetailState _$result;
    try {
      _$result = _$v ??
          new _$DetailState._(
              isLoading: isLoading,
              cocktailItem: _cocktailItem?.build(),
              error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cocktailItem';
        _cocktailItem?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
