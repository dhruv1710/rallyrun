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


/** This is an auto generated class representing the SinglesDraw type in your schema. */
@immutable
class SinglesDraw extends Model {
  static const classType = const _SinglesDrawModelType();
  final String id;
  final List<SinglesMatch>? _Matches;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SinglesDrawModelIdentifier get modelIdentifier {
      return SinglesDrawModelIdentifier(
        id: id
      );
  }
  
  List<SinglesMatch>? get Matches {
    return _Matches;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const SinglesDraw._internal({required this.id, Matches, createdAt, updatedAt}): _Matches = Matches, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory SinglesDraw({String? id, List<SinglesMatch>? Matches}) {
    return SinglesDraw._internal(
      id: id == null ? UUID.getUUID() : id,
      Matches: Matches != null ? List<SinglesMatch>.unmodifiable(Matches) : Matches);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinglesDraw &&
      id == other.id &&
      DeepCollectionEquality().equals(_Matches, other._Matches);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SinglesDraw {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SinglesDraw copyWith({List<SinglesMatch>? Matches}) {
    return SinglesDraw._internal(
      id: id,
      Matches: Matches ?? this.Matches);
  }
  
  SinglesDraw.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Matches = json['Matches'] is List
        ? (json['Matches'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SinglesMatch.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Matches': _Matches?.map((SinglesMatch? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Matches': _Matches, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<SinglesDrawModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<SinglesDrawModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MATCHES = QueryField(
    fieldName: "Matches",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'SinglesMatch'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SinglesDraw";
    modelSchemaDefinition.pluralName = "SinglesDraws";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: SinglesDraw.MATCHES,
      isRequired: false,
      ofModelName: 'SinglesMatch',
      associatedKey: SinglesMatch.DRAWID
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

class _SinglesDrawModelType extends ModelType<SinglesDraw> {
  const _SinglesDrawModelType();
  
  @override
  SinglesDraw fromJson(Map<String, dynamic> jsonData) {
    return SinglesDraw.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'SinglesDraw';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [SinglesDraw] in your schema.
 */
@immutable
class SinglesDrawModelIdentifier implements ModelIdentifier<SinglesDraw> {
  final String id;

  /** Create an instance of SinglesDrawModelIdentifier using [id] the primary key. */
  const SinglesDrawModelIdentifier({
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
  String toString() => 'SinglesDrawModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SinglesDrawModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}