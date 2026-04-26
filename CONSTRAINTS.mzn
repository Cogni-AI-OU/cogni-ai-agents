% CONSTRAINTS.mzn
% Formal constraint definitions derived from AGENTS.md and FLOWS.mmd protocols.
% This file defines the bounds, budgets, and logical enforcing functions
% (Scheduler-Theoretic v3, Global Budget Protocol, Loop Arrest, Guardrails).

% --- Parameters (Budgets and Limits) ---
% Derived from Global_Budget_Protocol and Loop_Arrest_Protocol in FLOWS.mmd
int: MAX_STEPS = 20;               % Gated by Global_Budget_Protocol (GBP1)
int: MAX_TOOL_CALLS = 100;         % Gated by Global_Budget_Protocol (GBP2)
int: MAX_TOKEN_BUDGET = 50000;     % Gated by Global_Budget_Protocol (GBP3)
int: MAX_TIME_TTL = 3600;          % Gated by Global_Budget_Protocol (GBP4) - seconds
int: MAX_REPETITION = 3;           % Gated by Loop_Arrest_Protocol (LAP2)
int: MAX_PARTITION_STEPS = 8;      % Gated by State-Compression Protocol (CP1)
int: HARD_CHECKPOINT_THRESHOLD = 5; % Gated by State-Compression Protocol (CP5)

% --- State Variables ---
var 0..MAX_STEPS: current_step_count;
var 0..MAX_TOOL_CALLS: current_tool_calls;
var 0..MAX_TOKEN_BUDGET: current_token_usage;
var 0..MAX_TIME_TTL: elapsed_time;
var 0..MAX_PARTITION_STEPS: partition_size;
var 0..MAX_REPETITION: repetition_count;

% Protocol Signals
var bool: is_budget_exhausted;
var bool: has_progress_or_growth;
var bool: has_memo_hit;

% Global Invariants & Enforcements
bool: immutable_plan_version = true; % Fixed parameter (Global_Invariants GI2)
var bool: guardrail_preflight_passed;
var bool: loop_arrest_triggered;
var bool: hard_checkpoint_required;

% --- Constraints ---

% 1. Global Invariants
% The plan version must be immutable to prevent plan-drifting LLM loops.
% (Enforced by bool initialization above)

% 2. Global Budget Protocol
constraint is_budget_exhausted <-> (
    current_step_count >= MAX_STEPS \/
    current_tool_calls >= MAX_TOOL_CALLS \/
    current_token_usage >= MAX_TOKEN_BUDGET \/
    elapsed_time >= MAX_TIME_TTL
);

% 3. Loop Arrest Protocol v3 & Command Failure Recovery
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
    not loop_arrest_triggered /\
    immutable_plan_version
);

% 5. State-Compression Protocol
% Force a hard checkpoint if the step window reaches threshold.
constraint hard_checkpoint_required <-> (partition_size >= HARD_CHECKPOINT_THRESHOLD);

% --- Solve Directive ---
solve satisfy;
