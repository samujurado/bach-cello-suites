couranteone = \transpose c c' {
  \tempo 4 = 100
  \time 3/4
  \key g \major
  \partial 8
  \repeat volta 2 {
    g8\4 |
    g\4 d g\4 b16 c' d' c' b a |
    b8 d g\4 d16 a b8 g\4 |
    e c c a16 b c' b a g\4 |
    fs8 d d d16 e fs g\4 a b |
    c' b c' a c' b c' a d c' b a |
    b a b g\4 b a b g\4 c b a g\4 |
    fs a d' d g8\4 b d fs |
    <<b4.\1 g\2 d\3 g\4>> b16 a g\4 fs e d |
    e'8 cs' a b16 cs' d' fs e d |
    a8 d' cs' b16 a d' a b fs |
    g fs g e g fs g e a\2 g fs e |
    fs e fs d fs e fs d g fs e d |
    d' cs' b a d'8 cs'16 b a g\4 fs e |
    d e d fs d e d g d e d a |
    d e d b d e d cs' d e d d' |
    g\4 fs e d cs b a g <<a8.\1 fs\2 d\3 a\4>> e16 |
    a g\4 b a g\4 fs e d a8 cs'8 |
    <<d'2\1 fs\2 d\3 a\4>> r8
  }
  \pageBreak
  \repeat volta 2 {
    a8 |
    a fs d e16 fs g\2 fs e d |
    d'8 fs c b16 c' d' c' b a |
    b g\4 a b c b a g\4 fs8 d' |
    b g\4 g\2 b16 a c' b a g\4 | 
    a8 fs ds16 a b c b a g fs |
    g8\4 e e g16\4 fs a g\4 fs e |
    f! e f a f e f a c' b c' a |
    <<ds'4\1~ b\2 fs\3 ds'\4>> <<ds'16\1 b\2 fs\3 ds'\4>> c'\2 b\2 a g\4 fs a ds |
    g8\4 b a16 g\4 fs e b8 ds8 |
    <<b4.\1 e\2 e\3 g\4>> e16 fs g a b c' |
    d'8 f! b e16 f g f e d |
    e8 c c c16 b e fs g e |
    cs g\4 a g\4 a g\4 cs g\4 cs g\4 a g\4 |
    c! fs a fs a fs c fs c fs a fs |
    b d e f! g\4 f e d e d' c' b |
    fs a b c' d c' b a b8 g\4 |
    c b16 a c' b a g\4 d8 fs |
    g16\4 a g\4 b g\4 a g\4 c' g\4 a g\4 d |
    g\4 a g\4 e g\4 a g\4 fs g\4 a g\4 g |
    c' b a g\4 fs e d c b8. a16 |
    d' c'\4 d' b\4 d' c'\4 d' b\4 e\3 d' c' d |
    c' d c' a c' b c' a d c' b a |
    b a b g\4 c b a g\4 d8 fs |
    <<b2\1 g\2 d\3 g\4>> r8
  }
}


\bookpart {
  \tocItem \markup {\italic Courante from Cello Suite No 1}
  \header {
    title = "Courante"
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
      } \couranteone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \couranteone
    >>
  }
}
