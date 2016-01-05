\version "2.18.2"
\language "english"

gigueone = \transpose c c' {
  \key g \major
  \time 6/8
  \tempo 4. = 100
  \partial 8
  \repeat volta 2 {
    d8 |
    g\4 d e e c d |
    d g\4 d b g\4 d |
    g16\4 a b8 a a16 b c'8 b |
    <<b4.\1 g\2 d\3 g\4>> <<a4\1 fs\2 d\3 a\4>> a8 |
    b fs g\4 g\4 e g\4 |
    a e fs fs d fs |
    g\4 b g\4 e b d |
    cs e a <<a4\1 e\2 cs\3 a\4>> e8 |
    f! e g\4 g\4 f a |
    a g\4 bf bf a g\4 |
    f! e d a d cs |
    d_\markup "CII" a\4 fs <<d'4\1 fs\2 d\3 a\4>>
  }
  \break
  \repeat volta 2 {
    a8 |
    a fs g\4 g\4 e fs |
    fs16 g\4 a8 fs d c' b |
    b g\4 a a fs g\4 |
    g16\4 a b8 g\4 e d' c' |
    a d' c' d c' b |
    g\4 c' b c b a |
    g\4 fs e b e ds |
    e b g\4 <<b4\1 e\2 e\3 g\4>> g8\4 |
    a fs g\4 cs'16 d' e'8 fs\3 |
    g\4 e f! b16 c' d'8 e |
    f! d e a16 b c'8 a |
    fs16 g\4 a8 fs <<a4\1 fs\2 d\3 a\4>> a8 |
    bf a c' c' bf d' |
    d' c' ef' ef' d' c' |	
    bf a g\4 d g\4 fs |
    g\4 b!16 c' d'8 g\4 b d |
    g\4 e16 f! g8\4 b c' e |
    a fs16 g\4 a8 cs d fs |
    d g16\4 a b8 ds e c' |
    e fs d' fs g\4 e' |
    d e16 fs g\4 a b8 g\4 fs |
    g\4 d b <<b4\1 g\2 d\3 g\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Gigue from Cello Suite No 1}
  \header {
    title = "Gigue"
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
      } \gigueone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \gigueone
    >>
  }
}