minuetoneone = \transpose c c' {
  \tempo 4 = 104
  \time 3/4
  \key g \major
  \repeat volta 2 {
    g8\4 d <<b4\1 g\2 d\3 g\4>> a8 b16 c' |
    b8 a g\4 fs g\4 d |
    e g\4 c' a fs d' |
    <<b2\1 g\2 d\3 g\4>> <<a4\1 fs\2 d\3 a\4>>
    a8 fs <<c'4\1 fs\2 d\3 a\4>> b8 c'16 d' |
    c'8 b a g\4 fs e |
    fs g16\4 a g8\4 fs e fs |
    d4 a <<d'\1 fs\2 d\3 a\4>>
  }
  \break
  \repeat volta 2 {
    fs8 d <<a4\1 fs\2 d\3 a\4>> g8\4 a16 b |
    a8 g\4 fs e d fs |
    b d gs\4 a b d' |
    a d' c' b <<c'4\1 e\2 c\3 a\4>> |
    ds8 fs a c' b a |
    b e g\4 a c' b |
    a g\4 fs e b ds |
    <<b4.\1 e\2 e\3 g\4>> e'8 d' c' |
    b d <<b4\1 g\2 d\3 g\4>> d8 e16 f! |
    f!8 d e c c' b |
    cs' e <<a4\1 fs\2 d\3 a\4>> e8 fs16 g\2 |
    g8\4 a fs d d a |
    d fs a c' b d' |
    e g\4 b d' c' e' |
    d' fs\3 g\4 b d fs |
    <<b2.\1 g\2 d\3 g\4>>	
  }
}

minuetonetwo = \transpose c c' {
  \tempo 4 = 112
  \time 3/4
  \key g \minor
  \repeat volta 2 {
    bf8 a bf d ef g\4 |
    <<f4\2 d\3 a\4>> a d |
    g8\4 fs g\4 bf c' ef |
    d a d g\4 fs a |
    bf a bf d ef g\4 |
    <<f4\2 d\3 a\4>> a d |
    g8\4 fs g\4 bf c e! |	
    d g\4 <<a2\1 fs\2 d\3 a\4>> |
  }
  \break
  \repeat volta 2 {
    d8 fs a c' ef'! d' |
    c' b a b <<g4\4 b\1>> |
    c8 e! g\4 bf d' c' |
    b a g\4 a f ef |
    d f bf a bf d |
    ef g\4 bf a bf d' |
    c' ef' d' bf f a |
    bf f d f <<bf4\1 f\2 d\3 bf\4>> |
    b!8 d f af\4 g\4 f |
    ef g\4 c' d' <<ef'4\1 c'\4>> |
    a8 c ef g\4 f ef |
    d f bf c' <<d'4\1 bf\2>> |
    fs8 a c ef d c |
    bf d' g\4 a bf g\4 |
    c bf a g\4 d fs |
    <<g2.\2 d\3 g\4>>
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup { \small "Minuet 1 D.C." }
  }
}

\bookpart {
  \tocItem \markup {\italic Minuets from Cello Suite No 1}
  \header {
    title = "Minuets"
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
      } \minuetoneone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \minuetoneone
    >>
    \header { piece = "Minuet 1"}
  }
  
  \pageBreak
  
  \score {
    \new StaffGroup <<
      \new Staff \with {
      } \new Voice \with {
        \remove New_fingering_engraver
        \remove Dynamic_engraver
        \remove Text_engraver
      } \minuetonetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \minuetonetwo
    >>
    \header { piece = "Minuet 2"}
  }
}
