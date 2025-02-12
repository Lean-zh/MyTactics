
partial def getLines : IO String := do
  IO.print "Enter a your text: "
  let line ← (← IO.getStdin).getLine
  if line.trim.isEmpty then
    return line.trimRight
  else
    return line.trimRight ++ (← getLines)

def main : IO Unit := do
  let stdin ← getLines
  IO.println s!"Concatenated lines: {stdin}"
