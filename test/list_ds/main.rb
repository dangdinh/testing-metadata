require 'bundler/setup'
require 'gooddata'
require_relative 'exercise_brick'

include GoodData::Bricks

stack = [
    DecodeParamsMiddleware,
    LoggerMiddleware,
    GoodDataMiddleware,
    ExerciseBrick
]

p = GoodData::Bricks::Pipeline.prepare(stack)

# Parameters from executor
$SCRIPT_PARAMS = {} if $SCRIPT_PARAMS.nil?

# Pipeline execute
p.call($SCRIPT_PARAMS)
