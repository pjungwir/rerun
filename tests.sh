#!/usr/bin/env bats

@test "once" {
  result="$(./rerun echo hi)"
  [ "$result" = "hi" ]
}

@test "twice" {
  result="$(./rerun -t 2 echo hi)"
  [ "$result" = $'hi\nhi' ]
}
