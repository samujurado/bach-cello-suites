\version "2.18.0"
\language "english"

preludeone = \transpose c c' {
  \key g \major
  \time 4/4
  \tempo 4 = 84
  g16\4 d b a b d b d g\4 d b a b d b d |
  g\4 e c' b c' e c' e g\4 e c' b c' e c' e |
  g\4 fs c' b c' fs c' fs g\4 fs c' b c' fs c' fs |
  g\4 g b a b g b g g\4 g b a b g b fs |
  g\4 e b a b g\4 fs g\4 e g\4 fs g\4 b d' cs' b |
  cs g\2 a g\2 a g\2 a g\2 cs g\2 a g\2 a g\2 a g\2 |
  fs a d' cs' d' a g\4 a fs a g\4 a d fs e d |
  e b g\4 fs g\4 b g\4 b e b g\4 fs g\4 b g\4 b |
  e cs d e d cs b a g fs e d' cs' b a g |
  fs e d d' a d' fs a d e fs a g\4 fs e d |
  gs\4 d f e f d gs\4 d b d f e f d gs\4 d |
  c e a b c' a e d c e a b c' a fs e |
  ds fs ds fs a fs a fs ds fs ds fs a fs a fs |
  g\2 fs e g\2 fs g\2 a fs g\2 fs e d c b a g\4 |
  fs c d c d c d c fs c d c d c d c |
  g\4 b f e f b f b g\4 b f e f b f b |
  g\4 c e d e c e c g\4 c e d e c e c |
  g\4 fs c' b c' fs c' fs g\4 fs c' b c' fs c' fs |
  g\4 d b a b g\4 fs e d c b a g\4 fs e d |
  cs a e fs g e fs g cs a e fs g e fs g |
  c! a d e fs d e fs c a d e fs d e fs |
  c a d fs a cs' <<d'8\1~\fermata fs\2 d\3 a\4>> d'16 a b c'! d e fs g |
  a fs d e fs g a b c' a fs g a b c' d' |
  ef' d' cs' d' d' c'! b c' c' a fs e! d a b c' |
  d' a d fs a b c' a b g\2 d' c' b g\2 a b |
  d g\2 b d g\2 a b g\2 cs' bf a bf bf a gs a\2 |
  a g?\2 fs g\2 g\4 e cs' b a cs' e g\4 a cs' d cs' |
  d' a fs e fs a d fs a d' cs' b a g fs e |
  d8 c'?16 b a g fs e d c' b a g fs e d |
  c b a g fs e d cs d a g fs e d c b |
  a g fs e fs a d a e a fs a g\4 a e a |
  fs a d a g\4 a e a fs a d a g\4 a e a |
  fs a d a e a fs a g\4 a a\4 a b\4 a d a |
  a\4 a b\4 a c'\4 a d a b\4 a c'\4 a d'\4 a b\4 a |
  c'\4 a b\4 a c'\4 a a\4 a b\4 a a\4 a b\4 a g a |
  a\2 a g a a\2 a fs a g a fs a g a e a |
  fs a d e f! d fs d' g d' gs d' a\2 d' bf\2 d' |
  b?\2 d' c'\2 d' cs'\4 d' d'\4 d' ef'\4 d' e'! d' f'! d' fs' d' |
  g'_\markup "CVII" b\2 d'\4 b\2 g' b\2 g' b\2	g' b\2 d'\4 b\2 g' b\2 g' b\2 |
  g' a\3 d'\4 a\3 g' a\3 g' a\3 g' a\3 d'\4 a\3 g'a\3 g' a\3 |
  fs' c'\2 d'\4 c'\2 fs' c'\2 fs' c'\2 fs' c'\2 d'\4 c'\2 fs' c'\2 fs' c'\2 |
  << g'1\1\fermata b\2 g\3 d'\4>> \bar "|."
}

\bookpart {
  \tocItem \markup {\italic Prelude from Cello Suite No 1}
  \header {
    title = "Prelude"
    subtitle = "from Cello Suite No 1"
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
      } \preludeone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \preludeone
    >>
  }
}