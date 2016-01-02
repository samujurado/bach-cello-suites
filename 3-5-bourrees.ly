boureethreeone = \transpose c c' {
  \tempo 2 = 84
  \time 4/4
  \key f \major
  \partial 4
  \repeat volta 2 {
    a8 bf |
    <<c'4\1 f\2 c\3 a\4>> f8 e f4 f' |
    <<e'\1 e\2 c\3 g\4>> d'8 e' c'4\2 g8\4 a |
    <<bf4\1 e\2 c\3 g\4>> e8 d e4 c' |
    <<bf8\1 e\2 c\3 g\4>> a g\4 a <<f4\2 c\3 a\4>> f'8 e' |
    d' e' f' c'\2 b!\2 e' f' a\2 |
    g\4 e' f' f\3 e g\4 b! d' |
    <<g'4\1 e\2 c\3 g\4>> e'8 c'\2 g4\4 b! |
    <<c'\1 e\2 c\3 g\4>> g\4 c
  }
  \break
  \repeat volta 2 {
    e'8 f' |
    <<g'4\1 e\2 c\3 g\4>> e'8 c'\4 bf4\2 e' |
    a8\2 c'\2 f' g' <<a'4\1 f'\2 c'\3>> f'8\2 cs'\3 |
    d'4\2 bf8\3 d'\2 g\4 f' e' d' |
    a\2 d' cs' b! a4 e'8 a\2 |
    f' d'\4 cs'\4 d'\4 e' a\2 f' a\2 |
    g' e'\4 d'\4 e'\4 f' a\2 g' a\2 |
    f\3 a' e'\2 f'\2 a4 d'8 cs' |
    <<d'4\1 fs\2 d\3 a\4>> a\4 d
    d'8 e' |
    f'4 b!8\2 a\2 b4\2 g\4 |
    c8 g\4 e' c'\2 d'4\2 c'8\2 bf?\2 |
    a\2 c'\2 f' a\2 g\4 bf' a' f'\2 |
    g'\2 f'\2 e'\2  d'\2 c'4\2 e'8 f' |
    g' e'\4 c'\2 d'\2 e' c'\2 g\4 a |
    bf g\4 e f g\4 e c bf |
    a f c c' a f c f'
    c'\2 a\3 bf\3 g\4 a f c a |
    g\4 a bf f e a bf d |
    c a bf bf\4 a\4 c e g\4 |
    c'4 a8 f c4 e |
    <<a2.\1 f\2 c\3 a\4>>
  }
}

bourreethreetwo = \transpose c c' {
  \tempo 2 = 84
  \time 4/4
  \key f \minor
  \partial 4
  \repeat volta 2 {
    f'8\4_ \markup "CX" g' |
    af'4 g'8 f'\4 e'!4\2 f'\2 |
    g'8 f'\4 e'!\2 d'!\2 c'\3 bf\3 af\3 g\3 |
    af\3 c'\2 bf\2 af\3 g\3 bf\2 af\3 g\3 |
    f\3 e! f\3 g af bf\2 c' d'! |
    ef'4 df'?8 c' bf4 af |
    g8 af bf c' df' ef' f' g' |
    af'4 g'8 f' ef' df' c'_\markup "CIII" bf\4 |
    <<af2.\2 ef\3 c'\4>>
  }
  \break
  \repeat volta 2 {
    af8 bf\4 |
    <<c'4\1 af\2 ef\3 c'\4>> c'8 bf\4 c'4 d'! |
    ef'8 d'! ef' f' ef' f' g' ef'\4 |
    c'\2 ef'\4 d'!\2 ef'\4 f' ef'\4 d'\2 c'\2 |
    b!4\2 a!8 b g4\4 g'8 f' |
    g'4 af?8\3 g\3 af4\3 c'\2 |
    f'8 e'! f' g' af'4 g' |
    f'8 ef' d'! c' ef' d' c' b! |
    <<c'4\1 g\2 ef\3 g\4>> g ef
    c'8 df'! |
    ef'4 df'8 c' bf a! bf c' |
                ef' df' c' bf g\4 df' c' bf |
    g'8 e'!\2 f'\2 g' af' g' f'\4 af' |
    g' f' e'! d'! c' bf af g |
    af g bf af c' bf d' c' |
    c d! e! f g af bf g |
    bf af g f af g f e! |
    <<f2.\2 c\3 af\4>>
                \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup { \small "Bourrée 1 D.C." }
  }
}

\bookpart {
  \tocItem \markup {\italic Bourrées from Cello Suite No 3}
  \header {
    title = "Bourrées"
    subtitle = "from Cello Suite No 3"
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
      } \boureethreeone
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \boureethreeone
    >>
    \header { piece = "Bourrée 1"}
  }
  
  \score {
    \new StaffGroup <<
      \new Staff \with {
      } \new Voice \with {
        \remove New_fingering_engraver
        \remove Dynamic_engraver
        \remove Text_engraver
      } \bourreethreetwo
      \new TabStaff \with {
        stringTunings = #ukulele-tuning
        \tabFullNotation
      } \bourreethreetwo
    >>
    \header { piece = "Bourée 2"}
  }
}
