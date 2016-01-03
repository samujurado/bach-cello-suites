\version "2.18.2"
\language "english"

allemandeone = \transpose c c' {
  \tempo 4 = 104
  \key g \major
  \partial 16
  \repeat volta 2 {
    b16 |
    <<b4\1~ g\2~ d\3~ g\4~>> <<b16\1 g\2 d\3 g\4>> a g\4 fs g\4 d e fs g\4 a b c' |
    d' b g\4 fs g\4 e d c d c d e fs g\4 a b |
    c' a g\4 fs g\4 e fs g\4 a d fs g\4 a b c' a |
    b g\4 g\4 d d b b g\4 <<b8.\1 g\2 d\3 g\4>> b16 c' b a g\4 |
    a b c' a g\4 fs g\4 a <<a8.\1 fs\2 ds\3 a\4>> c'16 b a g\4 fs |
    g\4 e e b b g\4 g\4 e <<b8.\1 e\2 e\3 g\4>> b16 e g\4 fs a |
    g\4 fs e fs g\4 cs' g\4 fs g\4 cs' e fs g\4 e a g\4 |
    <<a8\1 fs\2 d\3 a\4>> d16 e fs d g\4 e fs d fs g\4 a b c' a |
    b d g\4 d b g\4 a fs g\4 e g\4 a b cs' d' b |
    cs' e g\4 e cs'_\markup "CIV" a\2 b\4 d' cs' a\2 d' b\4 cs' a\2 e' g\4 |
    <<a8.\1 fs\2 d\3 a\4>> d'16 a g\4 fs e d a g\4 e fs d a c? |
    <<b8.\1 g\2 d\3 g\4>> g16\4 d' c' b a g\4 d' c' a b g\4 d fs | \break
    e g\4 a b cs d e fs g\4 a cs' d' e' a\2 g'8 |
    d'16\2 g' fs' e'\4 fs' d'\4 a d'\4 d fs a c? <<b8.\1 fs\2 d\3 b\4>> a16 |
    <<b8.\1 g\2 d\3 g\4>> a16 g\4 fs e d' cs' e' a g\4 fs e a cs |
    <<a8.\1 fs\2 d\3 a\4>> a16 d fs a cs' d'_\markup "CII" a\4 fs d <<d'8.\1 fs\2 d\3 a\4>>
  }
  \break
  \repeat volta 2 {
    a16 |
    <<a4~\1 fs~\2 d~\3 a~\4>> <<a16\1 fs\2 d\3 a\4>> fs g\4 a d e fs g\4 a fs d c' |
    b d' g\4 fs g\4 a b c' d' b a g\4 f! e f d' |
    <<e16.\2 c\3>> d32( c8) c'16 a b c' d' c' b c' d' b c' a |
    <<gs16.\4 d\3>> fs32( e8) b16 d' c' b c' e fs gs a c' b a |
    <<d'8\1 g\4>> b16 c' d e f! a <<b8.\1 e\2 d\3 gs\4>> e16 b d c b |
    <<c'8.\1 e\2 c\3 a\4>> b16 e g?\4 f! e f d bf a bf c' d' a |
    gs\4 a b? e f! d c' b c' e a b <<b8.\1 e\2 d\3 gs\4>> a16 |
    <<a8.\1 e\2 c\3 a\4>> b16 c' b c' g\4 fs g\4 a e d c b a |
    g\4 d fs c' b a g\4 a b c' d' e' d' e' f'! d' |
    <<e'8\1 c\3>> <<e\2 g\4>> c16 d' c' b a b c' e' d'8.\1 c'16 |
    <<d'8\1 fs\2>> <<a\2 d\3>> b16 c' b a g\4 fs e g\4 b d' c' b |
    <<c'8\1 e\2>> <<c\3 g\4>> a16 e fs g\4 fs a b c' d' c' b a |
    g\4 d fs a c' a fs d <<b8.\1 g\2 d\3 g\4>> d16 e g\4 a cs' | 
    d' a fs e d f! g\4 b c' g\4 e d c e a c' |
    fs a c' e' <<d'8.\1 fs\2 d\3 a\4>> c'16 b g\4 a g\4 d a g\4 fs |
    g\4 g b d g\4 b d' fs' g'_\markup "CVII" d'\4 b\2 g\3 <<g8.\3 d'\4 b\2 g'\1>>
  }
}

\bookpart {
  \tocItem \markup {\italic Allemande from Cello Suite No 1}
  \header {
    title = "Allemande"
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
      } \allemandeone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \allemandeone
    >>
  }
}
