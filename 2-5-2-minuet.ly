minuettwotwo = \transpose c c' {
  \tempo 4 = 144
  \time 3/4
  \key d \major
  \repeat volta 2 {
    <<a4\1 fs\2 d\3 a\4>> d8 e fs g\4 |
    <<a4\1 fs\2 d\3 a\4>> fs <<a\1 fs\2 d\3 a\4>> |
    g8\4 b <<b4\1 e\2 d\3 g\4>> g\4 |
    d'8 cs' b cs' a g\4 |
    fs d' cs' b a g\4 |
    b a g\4 fs e d |
    cs d <<b4\1 g\2 d\3 g\4>> fs8 g16\4 a |
    <<a2.\1 e\2 cs\3 a\4>> |
  }
  \break
  \repeat volta 2 {
    <<\stemUp cs'4\1_\markup "CIV" a\2 e\3 cs'\4>> \stemNeutral e'8 d' cs' b\4 |
    <<cs'4\1 a\2 e\3 cs'\4>> g\3 <<cs'\1 a\2 e\3 cs'\4>> |
    \stemUp fs8_\markup "CII" a\4 \stemNeutral <<d'4\1 fs\2 d\3 a\4>> fs |
    b8 a g\4 fs g\4 b |
    e d' cs' b cs' as |
    d b a g\4 fs e |
    g\4 fs e d cs d |
    cs cs d e fs g\4 |
    a g\4 fs g\4 a b |
    <<c'!4\1 fs\2 ds\3 a\4>> ds <<c'!4\1 fs\2 ds\3 a\4>> |
    b8 a c'! b a g\4 |
    fs g\4 a fs g\4 e |
    <<a4\1 e\2 cs?\3 a\4>> a8 b cs' d' |
    e fs g\4 b <<a4\1 fs\2 d\3 a\4>> |
    g8\4 fs e d e cs |
    <<d'2.\1 fs\2 d\3 a\4>> |
  }
}

\bookpart {
  \tocItem \markup {\italic Minuet \italic 2 from Cello Suite No 2}
  \header {
    title = "Minuet 2"
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
      } \minuettwotwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \minuettwotwo
    >>
  }
}

