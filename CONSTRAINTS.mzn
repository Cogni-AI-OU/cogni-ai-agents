% CONSTRAINTS.mzn
% Formal constraint definitions derived from AGENTS.md and FLOWS.mmd protocols.
% This file defines the bounds, budgets, and logical enforcing functions
% (Scheduler-Theoretic v3, Global Budget Protocol, Loop Arrest, Guardrails).

% --- Parameters (Budgets and Limits) ---
int: MAX_STEPS = 20;
int: MAX_REPETITION = 3;
int: MAX_PARTITION_STEPS = 8;
int: HARD_CHECKPOINT_THRESHOLD = 5;

% --- State Variables ---
var 0..MAX_STEPS: current_step_count;
var 0..MAX_PARTITION_STEPS: partition_size;
var 0..10: repetition_count;

% Protocol Signals
var bool: is_budget_exhausted;
var bool: has_progress_or_growth;
var bool: has_memo_hit;

% Global Invariants & Enforcements
var bool: immutable_plan_version;
var bool: guardrail_preflight_passed;
var bool: loop_arrest_triggered;
var bool: hard_checkpoint_required;

% --- Constraints ---

% 1. Global Invariants
% The plan version must be immutable to prevent plan-drifting LLM loops.
constraint immutable_plan_version = true;

% 2. Global Budget Protocol
constraint is_budget_exhausted <-> (current_step_count >= MAX_STEPS);

% 3. Loop Arrest Protocol v2 & Command Failure Recovery
% Loop arrest activates if we hit too many repetitions, hit a memo footprint,
% drain the budget, or fail to produce monotonic growth/progress.
constraint loop_arrest_triggered <-> (
    repetition_count >= MAX_REPETITION \/
    has_memo_hit \/
    is_budget_exhausted \/
    not has_progress_or_growth
);

% 4. Guardrail Executor (Pre-flight)
% Guardrail allows tool execution only if ALL conditions are met safely.
constraint guardrail_preflight_passed <-> (
    not has_memo_hit /\
    has_progress_or_growth /\
    not is_budget_exhausted /\
    immutable_plan_version
);

% 5. State-Compression Protocol
% Cannot partition more than the max step limit per batch.
constraint partition_size <= MAX_PARTITION_STEPS;
% Force a hard checkpoint if the step window reaches threshold.
constraint hard_checkpoint_required <-> (partition_size >= HARD_CHECKPOINT_THRESHOLD);

% --- Solve Directive ---
solve satisfy;
