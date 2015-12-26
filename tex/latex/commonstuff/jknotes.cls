\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{jknotes}
    [2015/12/26 JKNotes]

\LoadClass[a4paper,11pt]{scrartcl}

\RequirePackage{fancyhdr} % Fancy headers
\pagestyle{fancy} % Section in header
\RequirePackage{mathtools} % Mathtools
\mathtoolsset{
    showonlyrefs=true % Only number referenced equations
}

\RequirePackage[left=2cm,right=2cm,top=3.2cm,bottom=3.2cm,footskip=1cm]{geometry}
\fancyhfoffset[E,O]{0pt}

\makeatletter
\def\notetaker#1{\gdef\@notetaker{#1}}
\def\@notetaker{\@latex@warning@no@line{No \noexpand\notetaker given.}}
\def\lecturer#1{\gdef\@lecturer{#1}}
\def\@lecturer{\@latex@warning@no@line{No \noexpand\lecturer given.}}
\def\institution#1{\gdef\@institution{#1}}
\def\@institution{\@latex@warning@no@line{No \noexpand\institution given.}}
\def\@maketitle{%
    \begin{center}
        {\bfseries\Large\@institution}
    \end{center}
    \vskip 0pt
    \begin{center}
        {\sffamily\bfseries\Huge\@title}
    \end{center}
    \vskip 0pt
    \begin{center}
        \begin{tabular}{ccc}
            based on a course given by &\quad\quad& written up by \\
            {\Large\@lecturer}&&{\Large\@notetaker}
        \end{tabular}
    \end{center}
    \vskip 0pt
    \begin{center}
        {\Large\@date}
    \end{center}
    \vskip 0pt
}
\makeatother
