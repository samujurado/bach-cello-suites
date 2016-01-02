preludetwo = \transpose c c' {
  \tempo 4 = 72
  \key d \minor
  \time 3/4
  d8 f <<a4\1~ f\2~ d\3~ a\4~>> <<a16\1 f\2 d\3 a\4>>  f e d |
  cs e g\4 a <<bf4\1~ g\2~ d\3~ g\4~>> <<bf16\1 g\2 d\3 g\4>> a g\4 f |
  e g\4 bf\2 cs' e'8. bf16\2 a g\4 f e |
  f g\4 a f d8 c bf a | \break
  bf16 d f a d'8. c'16 bf\2 a g\4 f\3 |
  e g\4 bf\2 d' c' a bf\2 g\4 f\3 e g\4 bf\2 |
  a c e g\4 c'8. bf16 a g\4 f e |
  d f a c bf g\4 a f\3 e f\3 a f\3 |
  g\4 bf\2 d' f' bf8.\2 a16 g\4 f e g\4 |
  a c e g\4 c' a\4 e g\4 f a d ef |
  d a bf\2 d' g\4 bf\2 a c' bf\2 g\4 d' f\3 |
  e b! c' e' g\4 d e c bf g\4 e bf |
  f8 a <<c'4\1~ f\2~ c\3~ a\4~>> <<c'16\1 f\2 c\3 a\4>> bf a g\4 |
  fs a bf c' d c' bf a fs ef d c |
  bf a g\4 bf <<d'4\1~ g\2~ d\3~ bf\4~>> <<d'16\1 g\2 d\3 bf\4>> c' bf a |
  gs b! c' d' e d' c' b gs f? e d |
  c b! a c' f e f gs a f d c |
  b! d' gs b! d'8. c'16 b a gs a |
  c e a c' <<e'8.\1 a\2 e\3 c'\4>> c'16 b! a gs a |
  d f a d' <<f'8.\1_\markup "CVII" b\2 g\3 d'\4>> e'16 d'\2 c'\2 b!\2 d'\2 |
  e d' c' b! a c' b a d b a gs\4 |
  c a g\4 f cs g\4 f e d f e d |
  gs\4 d e f b! f e d gs d' c' b! |
  a b! c' e a bf c' a e c a g\4 |
  fs a c' d' <<ef'8.\1 g\2 c\3 g\4>> d'16 c' bf? c' a |
  bf a bf d g\4 ef f g\4 a g\4 f e |
  d c d f bf g\4 a bf cs bf a g\4 |
  f e f a d bf c' d' e d' c' bf |
  a g\4 a c' f\3 d' e' f' g\4 f' e' d' |
  cs g\4 f e\3 a e\3 f g\4 cs' bf\4 a g\4 |
  f d a cs' d' a\2 g\4 f a f e d |
  gs\4 d e f a f e d g\4 f e d |
  cs b! cs' e a e cs e a g\4 f e\3 |
  f e\3 f a d' a f a d c' bf a |
  g\4 f g\4 cs' e' cs' g\4 cs' a g\4 f e |
  d a d' e' f' d' a f d c' b a |
  g\4 a bf d ef f g\4 a bf g\4 ef' g\4 |
  f\3 g\4 a cs d e? f g\4 a f\3 d' f\3 |
  e f\3 g\4 bf a b! cs d e bf g\4 bf |
  cs'8 a <<g4\2~ cs\3~ g\4~>> <<g16\2 c\3 g\4>> bf a g\4 |
  f e d e f d a f d' a f d |
  gs8 f\3 <<d'4~\1 gs\2 f\3 b!\4>> d'16 f' e' d' |
  cs'\4 b!\4 a b\4 cs'\4 a d'\4 a e'\4 a f'\4 a |
  g' e'\4 cs'\2 e'\4 a cs' e' f' g' f'\4 g' e'\4 |
  f' d'\2 cs'\2 d'\2 a cs'\2 d'\2 e' f' e' f' d'\4 |
  e' cs'\4 b!\2 cs'\4 a b cs' d' e' d'\4 e' cs'\4 |
  d b! a \rit b f gs b cs' d' cs' d' b |
  <<cs'4\1 e\2 e\3 g\4>> r4 r |
  \atempo b16 g\4 fs g\4 ef g\4 d g\4 ef g\4 bf d |
  cs e g\4 a <<bf8.\1 e\2 cs\3 g\4>> a16 g\4 fs g\4 e |
  f? d bf g\4 a f e\3 g\4 f d cs e |
  d bf a g\4 fs a c' ef' d' c' bf a |
  bf g\4 fs g\4 ef g\4 d g\4 e g\4 bf d |
  <<bf8.\1 g\2 cs\3 g\4>> f16 e d cs b! a g\4 f e |
  d a d e f e d c bf a g\4 f |
  e a cs e g\4 f e d c b! a g\4 |
  f a d f a d f a d bf c a |
  g\4 d g\4 a bf g\4 fs g\4 ef \rit g\4 d g\4 |
  <<a2.\1 e\2 cs\3 g\4>> |
  \atempo
  <<a\1 f\2 d\3 a\4>> |
  <<a\1 e\2 d\3 a\4>> |	
  <<a\1 e\2 cs\3 a\4>> |
  <<d'\1 f\2 d\3 a\4>> |
  \bar "|."
}

\bookpart {
  \tocItem \markup {\italic Prelude from Cello Suite No 2}
  \header {
    title = "Prelude"
    subtitle = "from Cello Suite No 2"
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
      } \preludetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \preludetwo
    >>
  }
}


