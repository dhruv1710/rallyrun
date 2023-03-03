/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Tournament type in your schema. */
@immutable
class Tournament extends Model {
  static const classType = const _TournamentModelType();
  final String id;
  final String? _name;
  final String? _logo;
  final List<PlayerTournament>? _Players;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TournamentModelIdentifier get modelIdentifier {
      return TournamentModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get logo {
    return _logo;
  }
  
  List<PlayerTournament>? get Players {
    return _Players;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Tournament._internal({required this.id, name, logo, Players, createdAt, updatedAt}): _name = name, _logo = logo, _Players = Players, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Tournament({String? id, String? name, String? logo, List<PlayerTournament>? Players}) {
    return Tournament._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      logo: logo,
      Players: Players != null ? List<PlayerTournament>.unmodifiable(Players) : Players);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tournament &&
      id == other.id &&
      _name == other._name &&
      _logo == other._logo &&
      DeepCollectionEquality().equals(_Players, other._Players);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Tournament {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("logo=" + "$_logo" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Tournament copyWith({String? name, String? logo, List<PlayerTournament>? Players}) {
    return Tournament._internal(
      id: id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
      Players: Players ?? this.Players);
  }
  
  Tournament.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _logo = json['logo'],
      _Players = json['Players'] is List
        ? (json['Players'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerTournament.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'logo': _logo, 'Players': _Players?.map((PlayerTournament? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'logo': _logo, 'Players': _Players, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<TournamentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<TournamentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField LOGO = QueryField(fieldName: "logo");
  static final QueryField PLAYERS = QueryField(
    fieldName: "Players",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'PlayerTournament'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Tournament";
    modelSchemaDefinition.pluralName = "Tournaments";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Tournament.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Tournament.LOGO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Tournament.PLAYERS,
      isRequired: false,
      ofModelName: 'PlayerTournament',
      associatedKey: PlayerTournament.TOURNAMENT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _TournamentModelType extends ModelType<Tournament> {
  const _TournamentModelType();
  
  @override
  Tournament fromJson(Map<String, dynamic> jsonData) {
    return Tournament.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Tournament';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Tournament] in your schema.
 */
@immutable
class TournamentModelIdentifier implements ModelIdentifier<Tournament> {
  final String id;

  /** Create an instance of TournamentModelIdentifier using [id] the primary key. */
  const TournamentModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'TournamentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TournamentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}