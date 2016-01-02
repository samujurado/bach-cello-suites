giguethree = \transpose c c' {
  \key c \major
  \time 3/8
  \tempo 4. = 96
  \partial 8
  \repeat volta 2 {
    g8\4 |
    <<c'8\1 e\2 c\3 g\4 >> c16( d) e( f) |
    g8 a b |
    c' g\4 e' |
    d'16 c'\4 d' e' f'8 |
    b\2 c'\4 e |
    g\4 d c' |
    b g\4 d' |
    d fs g\4 |
    e e'16 d' c' b |
    c'8 a16 b c' d' |
    e'8 a\2 c'\4 |
    c' e fs |
    d d'16 c' b a |
    b8 g16\4 a b c' |
    d'8 g\4 b |
    b d e |
    c c'16 b a g\4 |
    fs8 a16 g\4 fs e | \break
    <<a4\1 fs\2 d\3 a\4>> d8 |
    c'16 d b d a d |
    b d a d b d |
    c' d b d a d |
    b d a d g\2 d | \break
    fs g\4 e g\4 d g\4 |
    e g\4 d g\4 e g\4 |
    f g\4 e g\4 d g\4 |
    e g\4 fs g\4 g\2 g\4 | \break
    fs g\4 g\2 g\4 a g\4 |
    g\2 g\4 a g\4 b g\4 |
    a g\4 b g\4 c'8 |
    <<d'4\1 fs\2 d\3 a\4>> a8 |
    c'16( d') ef'8 d' |
    c' bf a |
    fs' g' a\3 |
    fs' g' a\3 |
    c'16( d') ef'8 d' |
    c' bf a |
    cs' d' a\2 | \break
    cs' d' a\2 |
    g16\4 b d8 e |
    a16\4 c' e8 fs |
    g16\4 d g\4 e f d |
    c e a b c' a | \break
    d' a fs e d c |
    b d g\4 b a fs |
    g8\4 d b |
    <<b4\1 g\2 d\3 g\4>>
  }
  \break
  \repeat volta 2 {
    d'16 c' |
    b c' a b g\4 a |
    f g\4 e f d e |
    c g a b c' d' |
    e'8 c e' | \break
    f16 a b c' d' c' |
    d fs gs a b a |
    gs_\markup "CIV" fs\3 gs a\2 b\4 gs |
    <<e'4\1 gs\2 e\3 b\4>> b8\4 |
    c' e f | \break
    d d'16 c' b a |
    b8 g16\4 a b c' |
    d'8 g\4 bf |
    bf d e |
    c c'16 bf a g\4 |
    a8 f16 g\4 a bf | \break
    c'8 f a |
    f cs d |
    bf gs\4 a |
    d'16 e' f'8 gs\3 |
    <<f'4\1 b\2 gs\3 d'\4>> f'8 |
    e' d'16 c' b a |
    b d' c' a b gs\4 |
    a8 e c |
    <<a4\1 e\2 c\3 a\4>> c'8 |
    fs16( e) fs8 d |
    d16 a d8 fs |
    g16( fs) g8 d |
    e16 f! g\4 a bf g\4 | \break
    a g\4 f e f d' |
    c' b a g\4 c' e |
    g\4 f e d e c |
    <<b4\1 g\2 d\3 g\4>> g8\4 |
    fs16 g\4 e g\4 d g\4 | \break
    e g\4 d g\4 e g\4 |
    fs g\4 e g\4 d g\4 |
    e g\4 fs g\4 g\2 g\4 |
    fs a d a e a | \break
    fs a  g a e a |
    fs c' d c' e c' |
    fs c' e c' d c' |
    b d a d b d | \break
    c' d b d a d | 
    b d d' d f'8 |
    <<g'4\1 b\2 g\3 d'\4>> d8 | 
    f16( g) af8 g |
    f ef d |
    b c' d |
    b c' d |
    f16( g) af8 g |
    f ef d |
    fs g\4 d |
    fs g16 f! e d |
    c16 e g8\4 a |
    d16 f a8 b |
    e g\4 c' a bf g\4 |
    a f d f e d |
    g\4 d b a g\4 f |
    e g\4 c e d b |
    c' e g\4 |
    <<c'4\1 e\2 c\3 g\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Gigue from Cello Suite No 3}
  \header {
    title = "Gigue"
    subtitle = "from Cello Suite No 3"
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
      } \giguethree
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \giguethree
    >>
  }
}