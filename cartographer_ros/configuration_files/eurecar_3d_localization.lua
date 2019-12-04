-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "eurecar_3d.lua"

TRAJECTORY_BUILDER.pure_localization = true
POSE_GRAPH.optimize_every_n_nodes = 10

TRAJECTORY_BUILDER_3D.ceres_scan_matcher.only_optimize_yaw = false
POSE_GRAPH.optimization_problem.huber_scale = 5e2
POSE_GRAPH.constraint_builder.sampling_ratio = 0.03
POSE_GRAPH.optimization_problem.ceres_solver_options.max_num_iterations = 20
POSE_GRAPH.constraint_builder.min_score = 0.12
POSE_GRAPH.constraint_builder.global_localization_min_score = 0.16
POSE_GRAPH.constraint_builder.ceres_scan_matcher_3d.only_optimize_yaw = false


return options
