\version "2.18.0"
\language "english"

\header {
  title = "Selections from the Bach Cello Suites"
  subtitle = "arranged for Ukulele by Thomas Preece"
  tagline = ##f
}

#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\paper {
  first-page-number = 1
  print-first-page-number = ##f
  top-margin = 15 \mm
  bottom-margin = 15 \mm
  two-sided = ##t
  inner-margin = 20 \mm
  outer-margin = 10 \mm
  ragged-bottom = ##t
  
  tocTitleMarkup = \markup \vspace #2.0
  tocItemMarkup = \markup { \large \fill-with-pattern #1 #RIGHT .
    \fromproperty #'toc:text \fromproperty #'toc:page
    \vspace #1.0
  }
}

#(define-markup-list-command (paragraphnoindent layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist { \vspace #0.5 \larger \justified-lines { #args }} #}))

#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist { \vspace #0.5 \larger \justified-lines { \hspace #par-indent #args }} #}))

#(define-markup-list-command (heading layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist \bold \huge { \vspace #1 #args \vspace #0.1 } #}))

rit = \mark \markup { \small \italic "rit."}
atempo = \mark \markup { \small \italic "a tempo"}

\include "0-introduction.ly"
\include "1-1-prelude.ly"
\include "1-2-allemande.ly"
\include "1-3-courante.ly"
\include "1-4-sarabande.ly"
\include "blankpage.ly"
\include "1-5-minuets.ly"
\include "1-6-gigue.ly"
\include "2-1-prelude.ly"
\include "2-2-allemande.ly"
\include "2-5-2-minuet.ly"
\include "blankpage.ly"
\include "2-6-gigue.ly"
\include "3-5-bourrees.ly"
\include "3-6-gigue.ly"
\include "4-5-2-bourree.ly"
\include "4-6-gigue.ly"
\include "5-5-2-gavotte.ly"
\include "6-5-gavottes.ly"
\include "7-prelude-lowg.ly"