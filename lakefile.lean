import Lake
open Lake DSL

package "MyTactics" where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ s!"v{Lean.versionString}"

@[default_target]
lean_lib «Hello» where


@[default_target]
lean_lib «MyTactics» where
  -- add any library configuration options here

lean_exe "hello" where
  root := `Hello.Greet

@[default_target]
lean_exe "demo" where
  root := `Demo

@[test_driver]
lean_exe test {
  root := `Tests.Main
}
