bourreefourtwo = \transpose bf a' {
  \key bf \major
  \time 2/2
  \tempo 2 = 76
  \partial 4
  \repeat volta 2 {
    <<bf4 d>> |
    <<bf ef>> c' <<c' f>> a\4 |
    <<bf8\1 g\2>> c' d'4 <<d' d>> bf |
    ef c' f a\4 |
    bf f <<bf\1 f\2 d\3 bf\4>>
  }
  \break
  \repeat volta 2 {
    <<f'\1 bf\3>> |
    f' g' <<g' d'>> f' |
    ef'8\2 d'\2 ef'4\2 c'\2 ef' |
    <<f' a>> ef' <<ef' bf>> d' |
    c'8 bf a g\2 f ef <<bf4 d>> | \break
    <<bf ef>> c' <<c' f>> a\4 |
    <<bf8\1 g\4>> c' d'4 <<d' d>> bf |
    ef c' f a\4 |
    <<bf2.\1 f\2 d\3 bf\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Bourrée \italic 2 from Cello Suite No 4}
  \header {
    title = "Bourrée 2"
    subtitle = "from Cello Suite No 4"
    composer = "J S Bach"
    arranger = "arr T E Preece"
    copyright = ##f
    tagline = ##f
  }
  
  \score {
    \new StaffGroup <<
      \new Staff \with {
      } \new Voice \with {
        \remove New_fingering_engraver
        \remove Dynamic_engraver
        \remove Text_engraver
      } \bourreefourtwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \bourreefourtwo
    >>
  }
}

