\version "2.18.2"
\language "english"

sarabandeone = \transpose c c' {
  \tempo 8 = 80
  \time 3/4
  \key g \major
  \repeat volta 2 {
    <<b4\1 g\2 d\3 g\4>> <<c'4.\1 e\2 c\3 g\4>> b8 |
    fs16 a b c' <<b4\1 g\2 d\3 g\4>> a8 g\4 |
    d' f! <<e8.\2 c\3 g\4>> \times 2/3 {d'32 c' b} c'8 e |
    fs16 c' b g\4 <<a4\1 fs\2 d\3 a\4>> e8 d |
    a16 fs d c <<b8.\1 g\2 d\3 g\4>> g16\4 b d' g\4 a |
    b g\4 e d <<a8.\1 e\2 cs\3 a\4>> a32 b cs'16 d e fs |
    g\4 cs' d' cs' d' a g\4 fs e g\4 fs d |
    a d e cs d4 <<d'\1 fs\2 d\3 a\4>> |
  }
  \repeat volta 2 {
    <<a8\1 fs\2 d\3 a\4>> e16 d
    <<c'4.\1 fs\2 d\3 a\4>> b16 a |
    <<b16\1 g\2 d\3 g\4>> fs g\4 e  <<a8.\1 fs\2 ds\3 a\4>> e16 fs g\4 a b |
    ds a b c' b8 a16 g\4 fs e a fs |
    g\4 e fs ds e4 <<b\1 g\2 e\3 g\4>> |
    <<b8.\1 g\2 d\3 g\4>> e32 f! <<e8.\2 c\3 g\4>> fs16 g\4 a b c' |
    gs d' c' b <<c'8.\1 e\2 c\3 a\4>> b16 a g!\4 fs e |
    d b c' a b e fs g\4 a c' b g\4 |
    d g\4 a fs g4\4 <<g\2 d\3 g\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Sarabande from Cello Suite No 1}
  \header {
    title = "Sarabande"
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
      } \sarabandeone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \sarabandeone
    >>
  }
}