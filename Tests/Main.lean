import MyTactics

theorem demo : 2 ≤ 6 := by
  repeat_apply Nat.le_refl or Nat.le_step

example : 30 < 39 := by
  repeat_apply Nat.le_refl or Nat.le_step

example : 30 < 40 := by
  repeat_apply Nat.succ_le_succ or Nat.zero_le

def main : IO Unit := do
  IO.println "Running tests..."
  -- Test cases
  let test1 := 2 ≤ 2
  if test1 then
    IO.println "Test 1 passed"
  else
    throw (IO.userError "Test 1 failed")
