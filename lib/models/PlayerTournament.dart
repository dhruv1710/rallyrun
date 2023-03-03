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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the PlayerTournament type in your schema. */
@immutable
class PlayerTournament extends Model {
  static const classType = const _PlayerTournamentModelType();
  final String id;
  final Player? _player;
  final Tournament? _tournament;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PlayerTournamentModelIdentifier get modelIdentifier {
      return PlayerTournamentModelIdentifier(
        id: id
      );
  }
  
  Player get player {
    try {
      return _player!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Tournament get tournament {
    try {
      return _tournament!;
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
  
  const PlayerTournament._internal({required this.id, required player, required tournament, createdAt, updatedAt}): _player = player, _tournament = tournament, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PlayerTournament({String? id, required Player player, required Tournament tournament}) {
    return PlayerTournament._internal(
      id: id == null ? UUID.getUUID() : id,
      player: player,
      tournament: tournament);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerTournament &&
      id == other.id &&
      _player == other._player &&
      _tournament == other._tournament;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlayerTournament {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("player=" + (_player != null ? _player!.toString() : "null") + ", ");
    buffer.write("tournament=" + (_tournament != null ? _tournament!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlayerTournament copyWith({Player? player, Tournament? tournament}) {
    return PlayerTournament._internal(
      id: id,
      player: player ?? this.player,
      tournament: tournament ?? this.tournament);
  }
  
  PlayerTournament.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _player = json['player']?['serializedData'] != null
        ? Player.fromJson(new Map<String, dynamic>.from(json['player']['serializedData']))
        : null,
      _tournament = json['tournament']?['serializedData'] != null
        ? Tournament.fromJson(new Map<String, dynamic>.from(json['tournament']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'player': _player?.toJson(), 'tournament': _tournament?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'player': _player, 'tournament': _tournament, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<PlayerTournamentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PlayerTournamentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PLAYER = QueryField(
    fieldName: "player",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Player'));
  static final QueryField TOURNAMENT = QueryField(
    fieldName: "tournament",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Tournament'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlayerTournament";
    modelSchemaDefinition.pluralName = "PlayerTournaments";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["playerId"], name: "byPlayer"),
      ModelIndex(fields: const ["tournamentId"], name: "byTournament")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerTournament.PLAYER,
      isRequired: true,
      targetNames: ['playerId'],
      ofModelName: 'Player'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerTournament.TOURNAMENT,
      isRequired: true,
      targetNames: ['tournamentId'],
      ofModelName: 'Tournament'
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

class _PlayerTournamentModelType extends ModelType<PlayerTournament> {
  const _PlayerTournamentModelType();
  
  @override
  PlayerTournament fromJson(Map<String, dynamic> jsonData) {
    return PlayerTournament.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PlayerTournament';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PlayerTournament] in your schema.
 */
@immutable
class PlayerTournamentModelIdentifier implements ModelIdentifier<PlayerTournament> {
  final String id;

  /** Create an instance of PlayerTournamentModelIdentifier using [id] the primary key. */
  const PlayerTournamentModelIdentifier({
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
  String toString() => 'PlayerTournamentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PlayerTournamentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}