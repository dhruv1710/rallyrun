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


/** This is an auto generated class representing the SinglesMatch type in your schema. */
@immutable
class SinglesMatch extends Model {
  static const classType = const _SinglesMatchModelType();
  final String id;
  final List<Player>? _Players;
  final String? _drawID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SinglesMatchModelIdentifier get modelIdentifier {
      return SinglesMatchModelIdentifier(
        id: id
      );
  }
  
  List<Player>? get Players {
    return _Players;
  }
  
  String get drawID {
    try {
      return _drawID!;
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
  
  const SinglesMatch._internal({required this.id, Players, required drawID, createdAt, updatedAt}): _Players = Players, _drawID = drawID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory SinglesMatch({String? id, List<Player>? Players, required String drawID}) {
    return SinglesMatch._internal(
      id: id == null ? UUID.getUUID() : id,
      Players: Players != null ? List<Player>.unmodifiable(Players) : Players,
      drawID: drawID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinglesMatch &&
      id == other.id &&
      DeepCollectionEquality().equals(_Players, other._Players) &&
      _drawID == other._drawID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SinglesMatch {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("drawID=" + "$_drawID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SinglesMatch copyWith({List<Player>? Players, String? drawID}) {
    return SinglesMatch._internal(
      id: id,
      Players: Players ?? this.Players,
      drawID: drawID ?? this.drawID);
  }
  
  SinglesMatch.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Players = json['Players'] is List
        ? (json['Players'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Player.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _drawID = json['drawID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Players': _Players?.map((Player? e) => e?.toJson()).toList(), 'drawID': _drawID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Players': _Players, 'drawID': _drawID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<SinglesMatchModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<SinglesMatchModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PLAYERS = QueryField(
    fieldName: "Players",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Player'));
  static final QueryField DRAWID = QueryField(fieldName: "drawID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SinglesMatch";
    modelSchemaDefinition.pluralName = "SinglesMatches";
    
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
      ModelIndex(fields: const ["drawID"], name: "bySinglesDraw")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: SinglesMatch.PLAYERS,
      isRequired: false,
      ofModelName: 'Player',
      associatedKey: Player.MATCHID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SinglesMatch.DRAWID,
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

class _SinglesMatchModelType extends ModelType<SinglesMatch> {
  const _SinglesMatchModelType();
  
  @override
  SinglesMatch fromJson(Map<String, dynamic> jsonData) {
    return SinglesMatch.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'SinglesMatch';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [SinglesMatch] in your schema.
 */
@immutable
class SinglesMatchModelIdentifier implements ModelIdentifier<SinglesMatch> {
  final String id;

  /** Create an instance of SinglesMatchModelIdentifier using [id] the primary key. */
  const SinglesMatchModelIdentifier({
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
  String toString() => 'SinglesMatchModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SinglesMatchModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}