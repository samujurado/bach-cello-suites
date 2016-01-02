giguefour = \transpose c c' {
  \key f \major
  \time 12/8
  \tempo 4. = 184
  \partial 8
  \repeat volta 2 {
    f8 |
    f e\3 f c d e f e\3 f a g\4 a |
    f e\3 f c d e <<f4.\2~ c\3 a\4>> <<f4\2 c\3 a\4>> a8 |
    g\4 f g\4 c' a\2 bf\4 a g\4 a f g\4 a |
    g\4 f g\4 c' a\2 bf\4 a g\4 a f a g\4 |
    f e\3 f d' b! c' b a b g\4 b g\4 |
    f e\3 f d' b! c' b a b g\4 b f |
    e d e e' b!\2 c'\2 f\3 e f e b c' |
    f e f d f c b! f a b f g\4 |
    c e g\4 c' e g\4 <<c'4.\1~ e\2 c\3 g\4>>  <<c'4\1 e\2 c\3 g\4>> 
  }
  \break
  \repeat volta 2 {
    c'8\2 |
    c'\2 b\2 c'\2 g\4 a b\2 c'\2 b\2 c'\2 e' d' e' |
    c'\2 b\2 c'\2 g\4 a b <<c'4.\1~ e\2 c\3 g\4>>  <<c'4\1 e\2 c\3 g\4>>  e'8 |
    e' d' e' bf?\2 a\2 bf\2 g\3 f\3 g\3 cs g\4 e' |
    e' d' e' bf\2 a\2 bf\2 g\3 f\3 g\3 cs e g\4 |
    f e\3 f d f c bf d g\4 bf\2 d' f\3 |
    e d e c e bf a c f a c' e |
    d c d bf\2 d' a\2 g\4 bf e g\4 bf d |
    cs e a cs'\2 e' g\4 f\3 a\2 d' a\2 d' cs' |
    d' cs' d' a b cs' d' cs' d' f' e' f' |
    d' cs' d' f\3 g\4 a d f gs b d' b |
    gs b d' f' e' d' c'\2 b\2 a\2 e a gs\2 |
    a gs a c' gs a d c d c' gs a |
    e d e c' gs a f e\3 f c' gs a |
    b d' a\2 gs d' fs e d' fs gs d' a |
    b d' a\2 gs d' fs e d' fs gs d' e |
    c' b a e a gs a e c <<a4\1 e\2 c\3 a\4>> f8 |
    f e\3 f c d e f e\3 f a g\4 a |
    f e\3 f c d e <<f4.\2~ c\3 a\4>> <<f4\2 c\3 a\4>> a8 |
    g\4 f g\4 c' a\2 bf\4 a g\4 a f g\4 a |
    g\4 f g\4 c' a\2 bf\4 a g\4 a f\3 a bf\2 |
    c'\2 bf\2 c'\2 f' d' ef' d'\4 c'\4 d'\4 bf\2 c'\2 d'\2 |
    c'\2 bf\2 c'\2 f' d' ef' d'\4 c'\4 d'\4 bf\2 c'\2 d'\2 |
    af\3 g\3 af\3 f\3 e\3 f\3 d c d b d' f' |
    af\3 g\3 af\3 f\3 e\3 f\3 d c d b d' f' |
    e d e c e bf a c'\4 f\3 a c'\4 ef |
    d c d bf d a g\4 bf e g\4 bf d' |
    c' bf c' a c' g\4 fs a d fs a c |
    bf a bf g\4 bf f e g\4 c e g\4 bf |
    a g\4 a a e f\3 bf\2 a bf\2 a e f\3 |
    c' bf\4 c' a e f\3 d c d a e f\3 |
    bf\2 a bf\2 g\4 bf\2 f\3 e bf d e bf c |
    f a c' f'_\markup "CV" a\2 c'\4 <<f'4.\1~ a\2 f\3 c'\4>> <<f'4\1 a\2 f\3 c'\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Gigue from Cello Suite No 4}
  \header {
    title = "Gigue"
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
      } \giguefour
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \giguefour
    >>
  }
}