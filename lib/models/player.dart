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


/** This is an auto generated class representing the Player type in your schema. */
@immutable
class Player extends Model {
  static const classType = const _PlayerModelType();
  final String id;
  final String? _name;
  final String? _age;
  final String? _phone;
  final List<PlayerTournament>? _Tournaments;
  final String? _teamID;
  final String? _matchID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PlayerModelIdentifier get modelIdentifier {
      return PlayerModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get age {
    return _age;
  }
  
  String? get phone {
    return _phone;
  }
  
  List<PlayerTournament>? get Tournaments {
    return _Tournaments;
  }
  
  String get teamID {
    try {
      return _teamID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get matchID {
    try {
      return _matchID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Player._internal({required this.id, name, age, phone, Tournaments, required teamID, required matchID, createdAt, updatedAt}): _name = name, _age = age, _phone = phone, _Tournaments = Tournaments, _teamID = teamID, _matchID = matchID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Player({String? id, String? name, String? age, String? phone, List<PlayerTournament>? Tournaments, required String teamID, required String matchID}) {
    return Player._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      age: age,
      phone: phone,
      Tournaments: Tournaments != null ? List<PlayerTournament>.unmodifiable(Tournaments) : Tournaments,
      teamID: teamID,
      matchID: matchID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Player &&
      id == other.id &&
      _name == other._name &&
      _age == other._age &&
      _phone == other._phone &&
      DeepCollectionEquality().equals(_Tournaments, other._Tournaments) &&
      _teamID == other._teamID &&
      _matchID == other._matchID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Player {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("age=" + "$_age" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("teamID=" + "$_teamID" + ", ");
    buffer.write("matchID=" + "$_matchID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Player copyWith({String? name, String? age, String? phone, List<PlayerTournament>? Tournaments, String? teamID, String? matchID}) {
    return Player._internal(
      id: id,
      name: name ?? this.name,
      age: age ?? this.age,
      phone: phone ?? this.phone,
      Tournaments: Tournaments ?? this.Tournaments,
      teamID: teamID ?? this.teamID,
      matchID: matchID ?? this.matchID);
  }
  
  Player.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _age = json['age'],
      _phone = json['phone'],
      _Tournaments = json['Tournaments'] is List
        ? (json['Tournaments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerTournament.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _teamID = json['teamID'],
      _matchID = json['matchID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'age': _age, 'phone': _phone, 'Tournaments': _Tournaments?.map((PlayerTournament? e) => e?.toJson()).toList(), 'teamID': _teamID, 'matchID': _matchID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'age': _age, 'phone': _phone, 'Tournaments': _Tournaments, 'teamID': _teamID, 'matchID': _matchID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<PlayerModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PlayerModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField AGE = QueryField(fieldName: "age");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField TOURNAMENTS = QueryField(
    fieldName: "Tournaments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'PlayerTournament'));
  static final QueryField TEAMID = QueryField(fieldName: "teamID");
  static final QueryField MATCHID = QueryField(fieldName: "matchID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Player";
    modelSchemaDefinition.pluralName = "Players";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["teamID"], name: "byTeam"),
      ModelIndex(fields: const ["matchID"], name: "bySinglesMatch")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.AGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Player.TOURNAMENTS,
      isRequired: false,
      ofModelName: 'PlayerTournament',
      associatedKey: PlayerTournament.PLAYER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.TEAMID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.MATCHID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _PlayerModelType extends ModelType<Player> {
  const _PlayerModelType();
  
  @override
  Player fromJson(Map<String, dynamic> jsonData) {
    return Player.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Player';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Player] in your schema.
 */
@immutable
class PlayerModelIdentifier implements ModelIdentifier<Player> {
  final String id;

  /** Create an instance of PlayerModelIdentifier using [id] the primary key. */
  const PlayerModelIdentifier({
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
  String toString() => 'PlayerModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PlayerModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}