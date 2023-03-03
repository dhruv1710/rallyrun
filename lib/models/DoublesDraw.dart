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


/** This is an auto generated class representing the DoublesDraw type in your schema. */
@immutable
class DoublesDraw extends Model {
  static const classType = const _DoublesDrawModelType();
  final String id;
  final List<DoublesMatch>? _Doublesmatches;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  DoublesDrawModelIdentifier get modelIdentifier {
      return DoublesDrawModelIdentifier(
        id: id
      );
  }
  
  List<DoublesMatch>? get Doublesmatches {
    return _Doublesmatches;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const DoublesDraw._internal({required this.id, Doublesmatches, createdAt, updatedAt}): _Doublesmatches = Doublesmatches, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory DoublesDraw({String? id, List<DoublesMatch>? Doublesmatches}) {
    return DoublesDraw._internal(
      id: id == null ? UUID.getUUID() : id,
      Doublesmatches: Doublesmatches != null ? List<DoublesMatch>.unmodifiable(Doublesmatches) : Doublesmatches);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoublesDraw &&
      id == other.id &&
      DeepCollectionEquality().equals(_Doublesmatches, other._Doublesmatches);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DoublesDraw {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DoublesDraw copyWith({List<DoublesMatch>? Doublesmatches}) {
    return DoublesDraw._internal(
      id: id,
      Doublesmatches: Doublesmatches ?? this.Doublesmatches);
  }
  
  DoublesDraw.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Doublesmatches = json['Doublesmatches'] is List
        ? (json['Doublesmatches'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DoublesMatch.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Doublesmatches': _Doublesmatches?.map((DoublesMatch? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Doublesmatches': _Doublesmatches, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<DoublesDrawModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<DoublesDrawModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField DOUBLESMATCHES = QueryField(
    fieldName: "Doublesmatches",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'DoublesMatch'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DoublesDraw";
    modelSchemaDefinition.pluralName = "DoublesDraws";
    
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
      key: DoublesDraw.DOUBLESMATCHES,
      isRequired: false,
      ofModelName: 'DoublesMatch',
      associatedKey: DoublesMatch.DOUBLESDRAWID
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

class _DoublesDrawModelType extends ModelType<DoublesDraw> {
  const _DoublesDrawModelType();
  
  @override
  DoublesDraw fromJson(Map<String, dynamic> jsonData) {
    return DoublesDraw.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'DoublesDraw';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [DoublesDraw] in your schema.
 */
@immutable
class DoublesDrawModelIdentifier implements ModelIdentifier<DoublesDraw> {
  final String id;

  /** Create an instance of DoublesDrawModelIdentifier using [id] the primary key. */
  const DoublesDrawModelIdentifier({
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
  String toString() => 'DoublesDrawModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is DoublesDrawModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}