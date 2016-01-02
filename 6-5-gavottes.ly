gavottesixone = \transpose c c' {
  \tempo 2 = 69
  \time 2/2
  \key c \major
  \partial 2 \repeat volta 2 {
    <<e'4\1 g\2 c\3 g\4>> e' |
    <<e'\1 a\2 c\3>> d'8 c' d' e' f'4 |
    c'8 b a g\4 <<g'4\1 b\2 g\3 d'\4 >> g' |
    <<g'\1 c'\2 c\3 g\4>> a'8 g' <<f'\1 g\4>> e' d' e' |
    <<f' c>> e' d' c' <<e'4\1 g\2 c\3 g\4>> e' |
    <<e'\1 a\2 c\3>> d'8 c' d' e' f'4 |
    c'8 b a g\4 << c'4 e >> c' |
    <<c' d>> b8 c' b a d'4 |
    <<d'2\1 g\2 d\3 g\4>>
  }
  \break
  \repeat volta 2 {
    <<g'4\1 b\2 g\3 d'\4 >> g' |
    <<g'\1 cs'\2 a\3 e'\4 >> a'8 g' f' e' a'4 |
    g'8 f' e' d' g\4 f' e' d' |
    f\3 cs' d' f' g\4 e' a\2 cs' |
    d a d' e' <<f'4\1 d'\4>> <<f'4\1 c'\4>> |
    b8\4 d' g\4 a b c' d' e' |
    f' e' d' c' b c' d' a |
    gs d' a c' d b e gs |
    <<a2\1 e\2 c\3 a\4>> <<c'4\1 e\2 c\3 a\4>> <<c'\1 e\2 c\3 g\4>> |
    <<c'\1_\markup "CII" fs\2 d\3 a\4>> b8 a\4 b c' d'4 |
    c'8 b a g\4 a b c' b |
    d' c'\4 e' d'\4 f' e'\4 g'4 |
    <<g'2\1 b\2 g\3 d'\4>> <<e'4\1 g\2 c\3 g\4>> e' |
    <<e'\1 a\2 c\3>> d'8 c' d' e' f'4 |
    c'8 b a g\4 <<g'4\1 b\2 g\3 d'\4 >> g' |
    <<g'\1 c'\2 c\3 g\4>> a'8 g' <<f'\1 g\4>> e' d' e' |
    <<f' c>> e' d' c' <<e'4\1 g\2 c\3 g\4>> e' |
    <<e'8\1 a\2 c\3>> g' f' e' d' c'\2 b\2 a\2 |
    b\2 a' g' f' e' d' c'\2 b\2 |
    a\2 g\4 <<g'4\1 e\2 c\3 g\4>> <<e'\1 g\4>> d'8 c' |
    <<c'2\1 e\2 c\3 g\4>>
  }
}

gavotteSixTwoFirstLine = {
  <<e'8 c>> d' e'4 |
  g\4 <<e\2 g\4>> <<a f>> <<b d>> |
  <<c'8 c>> b c' d' <<c' e>> d' e'4 |
  g\4 <<e\2 g\4>> <<a f>> <<b d>> |
  <<c'2\1 e\2 c\3 g\4>>
}

gavottesixtwo = \transpose c c' {
  \tempo 2 = 88
  \time 2/2
  \key c \major
  \partial 2 \repeat volta 2 {
    \gavotteSixTwoFirstLine
  }
  \break
  \repeat volta 2 {
    <<e8\2 g\4>> f <<c4\3 g\4>> |
    <<a f>> <<c' c>> <<c'8 e>> bf! <<a c>> g\4 |
    <<a4 f>> c <<e\2 g\4>> <<c' c>> |
    <<a f>> <<c' e>> <<b8 d>> a <<b c>> c' |
    <<d'2\1 g\2 d\3 g\4>>
    \gavotteSixTwoFirstLine
    << c'8 c >> g\4 c' d' |
    e' g\4 f' g\4 e' g\4 d' g\4 | \break
    e' g\4 g' g\4 f' g\4 d' g\4 |
    e' g\4 d' c' b c' d' b |
    c' g\4 a g\4 c' g\4 c' d' | \break
    e' g\4 f' g\4 e' g\4 d' g\4 |
    e' g\4 g' g\4 f' g\4 e' g\4 |
    f' g\4 d' c' b c' d' b | \break
    <<c'2\1 g\2 c\3 g\4>>
    \gavotteSixTwoFirstLine
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup { \small "Gavotte 1 D.C." }
  }
}

\bookpart {
  \tocItem \markup {\italic Gavottes from Cello Suite No 6}
  \header {
    title = "Gavottes"
    subtitle = "from Cello Suite No 6"
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
      } \gavottesixone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \gavottesixone
    >>
    \header { piece = "Gavotte 1"}
  }
  \pageBreak
  \score {
    \new StaffGroup <<
      \new Staff \with {
      } \new Voice \with {
        \remove New_fingering_engraver
        \remove Dynamic_engraver
        \remove Text_engraver
      } \gavottesixtwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \gavottesixtwo
    >>
    \header { piece = "Gavotte 2"}
  }
}
