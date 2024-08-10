// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPreferenceCollection on Isar {
  IsarCollection<Preference> get preferences => this.collection();
}

const PreferenceSchema = CollectionSchema(
  name: r'Preference',
  id: -2412535530476531349,
  properties: {
    r'locale': PropertySchema(
      id: 0,
      name: r'locale',
      type: IsarType.byte,
      enumMap: _PreferencelocaleEnumValueMap,
    ),
    r'loggedIn': PropertySchema(
      id: 1,
      name: r'loggedIn',
      type: IsarType.bool,
    ),
    r'themeMode': PropertySchema(
      id: 2,
      name: r'themeMode',
      type: IsarType.byte,
      enumMap: _PreferencethemeModeEnumValueMap,
    )
  },
  estimateSize: _preferenceEstimateSize,
  serialize: _preferenceSerialize,
  deserialize: _preferenceDeserialize,
  deserializeProp: _preferenceDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _preferenceGetId,
  getLinks: _preferenceGetLinks,
  attach: _preferenceAttach,
  version: '3.1.0+1',
);

int _preferenceEstimateSize(
  Preference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _preferenceSerialize(
  Preference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.locale.index);
  writer.writeBool(offsets[1], object.loggedIn);
  writer.writeByte(offsets[2], object.themeMode.index);
}

Preference _preferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Preference(
    reader.readBool(offsets[1]),
    _PreferencethemeModeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
        ThemeMode.system,
    _PreferencelocaleValueEnumMap[reader.readByteOrNull(offsets[0])] ??
        LocaleEnum.en,
  );
  return object;
}

P _preferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_PreferencelocaleValueEnumMap[reader.readByteOrNull(offset)] ??
          LocaleEnum.en) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (_PreferencethemeModeValueEnumMap[reader.readByteOrNull(offset)] ??
          ThemeMode.system) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PreferencelocaleEnumValueMap = {
  'en': 0,
  'hi': 1,
};
const _PreferencelocaleValueEnumMap = {
  0: LocaleEnum.en,
  1: LocaleEnum.hi,
};
const _PreferencethemeModeEnumValueMap = {
  'system': 0,
  'light': 1,
  'dark': 2,
};
const _PreferencethemeModeValueEnumMap = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

Id _preferenceGetId(Preference object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _preferenceGetLinks(Preference object) {
  return [];
}

void _preferenceAttach(IsarCollection<dynamic> col, Id id, Preference object) {}

extension PreferenceQueryWhereSort
    on QueryBuilder<Preference, Preference, QWhere> {
  QueryBuilder<Preference, Preference, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PreferenceQueryWhere
    on QueryBuilder<Preference, Preference, QWhereClause> {
  QueryBuilder<Preference, Preference, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Preference, Preference, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Preference, Preference, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Preference, Preference, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PreferenceQueryFilter
    on QueryBuilder<Preference, Preference, QFilterCondition> {
  QueryBuilder<Preference, Preference, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> localeEqualTo(
      LocaleEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> localeGreaterThan(
    LocaleEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locale',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> localeLessThan(
    LocaleEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locale',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> localeBetween(
    LocaleEnum lower,
    LocaleEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> loggedInEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loggedIn',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> themeModeEqualTo(
      ThemeMode value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> themeModeLessThan(
    ThemeMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Preference, Preference, QAfterFilterCondition> themeModeBetween(
    ThemeMode lower,
    ThemeMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PreferenceQueryObject
    on QueryBuilder<Preference, Preference, QFilterCondition> {}

extension PreferenceQueryLinks
    on QueryBuilder<Preference, Preference, QFilterCondition> {}

extension PreferenceQuerySortBy
    on QueryBuilder<Preference, Preference, QSortBy> {
  QueryBuilder<Preference, Preference, QAfterSortBy> sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> sortByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> sortByLoggedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.desc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension PreferenceQuerySortThenBy
    on QueryBuilder<Preference, Preference, QSortThenBy> {
  QueryBuilder<Preference, Preference, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByLoggedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.desc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<Preference, Preference, QAfterSortBy> thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension PreferenceQueryWhereDistinct
    on QueryBuilder<Preference, Preference, QDistinct> {
  QueryBuilder<Preference, Preference, QDistinct> distinctByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale');
    });
  }

  QueryBuilder<Preference, Preference, QDistinct> distinctByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loggedIn');
    });
  }

  QueryBuilder<Preference, Preference, QDistinct> distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeMode');
    });
  }
}

extension PreferenceQueryProperty
    on QueryBuilder<Preference, Preference, QQueryProperty> {
  QueryBuilder<Preference, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Preference, LocaleEnum, QQueryOperations> localeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locale');
    });
  }

  QueryBuilder<Preference, bool, QQueryOperations> loggedInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loggedIn');
    });
  }

  QueryBuilder<Preference, ThemeMode, QQueryOperations> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeMode');
    });
  }
}
