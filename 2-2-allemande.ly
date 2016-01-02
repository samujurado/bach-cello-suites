allemandetwo = \transpose c c' {
  \tempo 4 = 88
  \key d \minor
  \partial 16
  \repeat volta 2 {
    a16 |
    <<a8\1 f\2 d\3 a\4>> bf16 a g\4 f e d d cs d e a8 bf16 g\4 |
    f a d f e8 cs <<a8.\1 f\2 d\3 a\4>> e16 f g\4 a bf |
    c'8 d'16 ef' d' c' bf a c' bf a g\4 d'8. f!16\3 |
    e g\4 bf\2 d' c' bf\2 a g\4 bf\2 a g\4 f <<f8. a>> a16 |
    b! f e d e cs' d' cs' d'8. e'16 f' e' d' e' |
    d' c' b! c' b a gs a gs8 fs16 e e' c'\4 b\4 g!\4 |
    f a f d d f d b gs\4 b e gs\4 b! d' c' b |
    c' a f e d f e d gs8. a16 b! d' e d |
    c e a d' <<b!8. e>> a16 <<ds8~ a>> ds32 e fs gs a b c' d' c' b c' a |
    d?16 gs\4 a b! a gs\4 fs e <<a8\1 e\2 c\3 a\4>> f?16 e d c b! a |
    <<b!8\1 d\3>> e16 f e d c' b! d' b c b e8 gs |
    a8. cs16 e g?\4 f e f a d' gs <<a8.\1 e\2 cs\3 a\4>>
  }
  \break
  \repeat volta 2 {
    e16 |
    <<cs'8.\1 e\2 cs\3 a\4>> f16 g\4 e f a cs d e bf a8. g16\4 |
    f a f d g\4 b! cs a g\4 f e d fs d ef c! |
    bf g\4 a g\4 fs a d c' bf fs g\4 bf d' a bf g\4 |
    ef d ef g\4 c' a bf g\4 d c d g\4 bf fs g\4 ef |
    c' bf c' bf a c' ef' g\4 <<fs8 c>> g16\4 a d8 ef16 c |
    bf d' g\4 bf d8 fs <<bf8.\1 g\2 d\3 g\4>> a16 bf d' g\4 f! |
    <<bf8. e>> f16 g\4 e c bf a f g\4 f c g\4 a bf |
    bf a g\4 f a e f d bf d f a d' a bf g\4 |
    a g\4 cs' d' e' g\4 a e f d bf d gs f e d |
    d cs b! a c'! a fs d c' a b d f d gs d |
    cs e g\4 bf e' a\2 bf\2 g\4 f c d gs\4 a8 cs |
    d16 d' c' a bf g\4 e cs' d' a f d <<d'8.\1 f\2 d\3 a\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Allemande from Cello Suite No 2}
  \header {
    title = "Allemande"
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
      } \allemandetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \allemandetwo
    >>
  }
}

