preludeonelowg = \transpose c c' {
  \key g \major
  \time 4/4
  \tempo 4 = 84
  g,16 d b a b d b d g, d b a b d b d |
  g, e c' b c' e c' e g, e c' b c' e c' e |
  g, fs c' b c' fs c' fs g, fs c' b c' fs c' fs |
  g, g b a b g b g g, g b a b g b fs |
  g, e b a b g fs g e g fs g b d' cs' b |
  cs g\2 a g\2 a g\2 a g\2 cs g\2 a g\2 a g\2 a g\2 |
  fs a d' cs' d' a\2 g\3 a fs a g a d fs e d |
  e b g fs g b g b e b g fs g b g b |
  e cs d e d cs b a g fs e d' cs' b a g |
  fs e d d' a\2 d' fs a d e fs a g fs e d |
  gs d f e f d gs d b d f e f d gs d |
  c e a b c' a e d c e a b c' a fs e |
  ds fs ds fs a fs a fs ds fs ds fs a fs a fs |
  g\2 fs e g\2 fs g\2 a fs g\2 fs e d c b, a, g, |
  fs c d c d c d c fs c d c d c d c |
  g, b f e f b f b g, b f e f b f b |
  g, c e d e c e c g, c e d e c e c |
  g, fs c' b c' fs c' fs g, fs c' b c' fs c' fs |
  g, d b a b g fs e d c b a g fs e d |
  cs a e fs g e fs g cs a e fs g e fs g |
  c! a d e fs d e fs c a d e fs d e fs |
  c a d fs a cs' <<d'8\1~\fermata fs\2 d\3 a,\4>> d'16 a b c'! d e fs g |
  a fs d e fs g a b c' a fs g a b c' d' |
  ef' d' cs' d' d' c'! b c' c' a fs e! d a b c' |
  d' a d fs a b cs' a b g\2 d' c' b g\2 a b |
  d g\2 b d g\2 a b g\2 cs' bf a bf bf a gs a\2 |
  a g?\2 fs g g f cs b, a, cs e g a cs' d cs' |
  d' a fs e fs a d fs a d' cs' b a g fs e |
  d8 c'?16 b a g fs e d c' b a g fs e d |
  c b a g fs e d cs b, a g fs e d c b, |
  a, g fs e fs a d a e a fs a g a e a |
  fs a d a g a e a fs a d a g a e a |
  fs a d a e a fs a g\2 a a\2 a b\2 a d a |
  a\2 a b\2 a c'\2 a d a b\2 a c'\2 a d'\2 a b\2 a |
  c'\2 a b\2 a c'\2 a a\2 a b\2 a a\2 a b\2 a d a |
  a\2 a g a a\2 a fs a g a fs a g a e a |
  fs a d e f! d fs d' g d' gs d' a\2 d' bf\2 d' |
  b?\2 d' c'\2 d' cs'\2 d' d'\2 d' ef' d' e'! d' f'! d' fs' d' |
  g'_\markup "CVII" b\2 d\4 b\2 g' b\2 g' b\2	g' b\2 d\4 b\2 g' b\2 g' b\2 |
  g' a\3 d\4 a\3 g' a\3 g' a\3 g' a\3 d\4 a\3 g'a\3 g' a\3 |
  fs' c'\2 d\4 c'\2 fs' c'\2 fs' c'\2 fs' c'\2 d\4 c'\2 fs' c'\2 fs' c'\2 |
  << g'1\1\fermata b\2 g\3 d\4>> \bar "|."
}

\bookpart {
  \tocItem \markup {\italic Prelude No 1 for Low-G Ukulele}
  \header {
    title = "Prelude No 1"
    subtitle = "for Low-G Ukulele"
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
      } \preludeonelowg
      \new TabStaff \with {
        stringTunings = \stringTuning <g c' e' a'>
        \tabFullNotation
      } \preludeonelowg
    >>
  }
}