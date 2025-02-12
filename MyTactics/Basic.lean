macro "repeat_apply" t₁:term "or" t₂:term : tactic =>
`(tactic | repeat (first |  apply $t₁ | apply $t₂) )

example : 2 ≤ 10 := by
  repeat_apply Nat.le_refl or Nat.le_step
