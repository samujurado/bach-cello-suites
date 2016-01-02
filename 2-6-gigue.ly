giguetwo = \transpose c c' {
  \key d \minor
  \time 3/8
  \tempo 4. = 69
  \partial 8
  \repeat volta 2 {
    a8 |
    <<a4\1 f\2 d\3 a\4>> bf8 |
    <<a4\1 e\2 cs\3 a\4>> g8\4 |
    f16 e f g\4 a8 |
    <<a4\1 f\2 d\3 a\4>> d'8 |
    e16 f g8\4 bf |
    c16 d e8 c' |
    a16 g\4 a bf c' a |	
    <<a4\1 f\2 d\3 a\4>> a8 |
    b! g\4 cs |
    d f16 c'? bf a |
    g8\4 ef a |
    bf d'16 a\2 g\4 f |
    e8 cs' bf |
    a g16\4 f e d |
    e16 f g e f d |
    e8 a c' |
    c'16 d' ef' c' d' a |
    <<bf8 d>> g\4 <<bf d>> |
    bf16 c' d' bf c' g\4 |
    <<a8 f>> f <<a f>> |
    b!16 c' d' b c' a\2 |
    d' e' f' d' e' c'\2 |
    b! c' d' b c' a\2 |
    <<e'4\1 gs\2 e\3 b\4>> gs8\2 |
    <<a16 c>> b! c' a d' b |
    <<a d>> b! c' a d' b |
    <<a e>> b! c' a d' b |
    <<a f>> b! c' a d' e' |	
    f'8 e'16 d' c' b! 
    c' e' d' c' b! gs |
    a f e d e cs |
    <<a4\1 e\2 cs\3 a\4>>
  }
  \pageBreak
  \repeat volta 2 {
    c'8 |
    <<a4\1 f\2 d\3 a\4>> d'8 |
    <<c'4\1 e\2 c\3 g\4>> bf8 |
    a16 g\4 a bf c'8 |
    <<a4\1 f\2 d\3 a\4>> a8 |
    d16 e f d c' b! |	
    g\4 a g\4 f\3 e d |	
    e d e f\3 g\4 e |
    <<a4\1 e\2 c\3 a\4>> e8 |
    fs16 g\4 a c' bf a |
    bf d g\4 bf a g\4 |
    fs a c ef d c |
    bf a bf d g\4 bf |
    af\4 g\4 af\4 fs g\4 ef' |
    d8 g\4 fs |
    g16\4 ef d c d c |
    <<bf4\1 g\2 d\3 g\4>> bf8\2 |
    e'16 f' g' e' f' d'\4 |
    c' d' e' c' d' bf\4 |
    a bf c' a bf g\4 |
    <<a4\1 f\2 c\3 a\4>> a8 |
    d'16 e' f' d' e' c'\4 |
    bf c' d' bf c' a |
    g\4 a bf g\4 a f |
    <<bf4\1 g\2 e\3 g\4>> g8\4 |
    a16 b! cs' d e g\4 |
    f g\4 a cs' d' f\3 |
    e f g\4 a bf d |
    cs d e a bf g\4 |	
    <<d f>> e f d g\4 e |
    <<d\3 g\4>> e f d g\4 e |
    <<d a>> e f d g\4 e |
    <<d bf>> e f d g\4 e |
    cs b a g\4 f e |
    f a g\4 f e cs |
    d bf a g\4 a f |
    d a d e f d |
    ef f g\4 e f d |
    g\4 a bf g\4 a f |
    ef f g\4 ef f d |
    <<cs'4\1 e?\2 cs\3 g\4>> d'16 c'! |
    bf a g\4 f e d |
    cs b! a g\4 f e |
    d f a d f a |
    <<d'4\1 f\2 d\3 a\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Gigue from Cello Suite No 2}
  \header {
    title = "Gigue"
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
      } \giguetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \giguetwo
    >>
  }
}

