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
POSE_GRAPH.optimize_every_n_nodes = 30

-- TRAJECTORY_BUILDER_3D.ceres_scan_matcher.only_optimize_yaw = false
-- POSE_GRAPH.optimization_problem.huber_scale = 5e2
-- POSE_GRAPH.optimization_problem.ceres_solver_options.max_num_iterations = 20
-- POSE_GRAPH.constraint_builder.min_score = 0.12
-- POSE_GRAPH.constraint_builder.global_localization_min_score = 0.16
-- POSE_GRAPH.constraint_builder.ceres_scan_matcher_3d.only_optimize_yaw = false

POSE_GRAPH.constraint_builder.max_constraint_distance = 40
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.linear_search_window = 30
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.linear_search_window = 30
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.angular_search_window = math.rad(180)
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.branch_and_bound_depth = 30


-- fast localization
MAP_BUILDER.num_background_threads = 12
POSE_GRAPH.constraint_builder.sampling_ratio = 0.5 * POSE_GRAPH.constraint_builder.sampling_ratio
POSE_GRAPH.global_sampling_ratio = 0.1 * POSE_GRAPH.global_sampling_ratio
POSE_GRAPH.max_num_final_iterations = 1


return options
