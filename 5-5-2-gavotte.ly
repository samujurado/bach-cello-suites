\version "2.18.0"
\language "english"

gavottefivetwo = \transpose c c' {
  \key a \minor
  \time 12/8
  \tempo 2. = 84
  \partial 2.
  \repeat volta 2 {
    e'8 d'\4 e' f' e' d'\4 |
    <<e'4.~\1 a\2 c\3>> e'8 d'\4 c'\2 b\2 c'\2 d'\4 c'\2 b\2 a |
    gs a b e\3 gs b e' d'\4 e' f' e' d'\4 |
    e' d'\4 c'\2 b\2 c'\2 d'\4 c'\2 b\2 a gs a b |
    a4. <<a\1 e\2 c\3 a\4>>
  }
  \break
  \repeat volta 2 {
    c'8 b c' d' c' b |
    <<c'4.~\1 e\2 c\3 g\4>> c'8 d' e' f' e' d'\4 e' d'\4 c'\2 | \break
    b\2 c'\2 d'\4 g\4 b\2 d'\2 g' fs' g' a' g' fs' |
    g' fs' e' c'\2 b\2 a g\4 fs e ds e fs | \break
    e4. <<b\1 e\2 e\3 g\4>> e'8 d'\4 e' f' e' d'\4 |
    <<e'4.~\1 a\2 c\3>> e'8 d'\4 c'\2 b\2 c'\2 d'\4 c'\2 b\2 a | \break
    gs a b e\3 gs b e' d'\4 e' f' e' d'\4 |
    e' d'\4 c'\2 b\2 c'\2 d'\4 c'\2 b\2 a gs a b | \break
    a e c a c e a c e a b gs |
    <<a4.~\1 e\2 cs\3 a4.~\4>> a8 g\4 f\3 e f\3 g\4 f\3 e d | \break
    cs d e a b cs' d' cs' d' e' d' cs' |
    d'^. c'\4([ bf\4 a\4 bf\4 c'\4] bf^.\4) c'([ d' e' d' c'] | \break
    d'^.) a\2([ g\2 fs\2 g\2 a\2] g^.\2) cs'([ d' e' d' cs'] |
    gs^.) d'[ e' f' e' d'] a gs f e d cs | \break
    d e f e f d gs a b a b gs |
    a g?\4 f e d c f' e' d'\4 c'\2 b\2 a |
    gs a b e\3 gs b e' d'\4 e' f' e' d'\4 |
    e' d'\4 c'\2 b\2 c'\2 d'\4 c'\2 b\2 a gs a b |
    a4. <<a\1 e\2 c\3 a\4>>
  }
}

\bookpart {
  \tocItem \markup {\italic Gavotte \italic 2 from Cello Suite No 5}
  \header {
    title = "Gavotte 2"
    subtitle = "from Cello Suite No 5"
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
      } \gavottefivetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \gavottefivetwo
    >>
  }
}

