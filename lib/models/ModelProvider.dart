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

import 'package:amplify_core/amplify_core.dart';
import 'DoublesDraw.dart';
import 'DoublesMatch.dart';
import 'Player.dart';
import 'PlayerTournament.dart';
import 'SinglesDraw.dart';
import 'SinglesMatch.dart';
import 'Team.dart';
import 'Tournament.dart';

export 'DoublesDraw.dart';
export 'DoublesMatch.dart';
export 'Player.dart';
export 'PlayerTournament.dart';
export 'SinglesDraw.dart';
export 'SinglesMatch.dart';
export 'Team.dart';
export 'Tournament.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "8106e9c4cf119a5aa75980c26d518519";
  @override
  List<ModelSchema> modelSchemas = [DoublesDraw.schema, DoublesMatch.schema, Player.schema, PlayerTournament.schema, SinglesDraw.schema, SinglesMatch.schema, Team.schema, Tournament.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "DoublesDraw":
        return DoublesDraw.classType;
      case "DoublesMatch":
        return DoublesMatch.classType;
      case "Player":
        return Player.classType;
      case "PlayerTournament":
        return PlayerTournament.classType;
      case "SinglesDraw":
        return SinglesDraw.classType;
      case "SinglesMatch":
        return SinglesMatch.classType;
      case "Team":
        return Team.classType;
      case "Tournament":
        return Tournament.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}