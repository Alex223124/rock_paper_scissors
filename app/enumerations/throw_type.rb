class ThrowType < EnumerateIt::Base

  sort_by :none

  associate_values(
      rock: ['rock'],
      scissors: ['scissors'],
      paper: ['paper']
  )

end
