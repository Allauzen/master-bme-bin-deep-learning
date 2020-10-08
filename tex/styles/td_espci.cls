% Documentclass exercice.cls
% A. Allauzen 2007, modified in January 2020 for IDL@ESPCI 2020
% Don't use title and date, only myheader macro 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{td_espci}[2020]
\LoadClass[10pt]{article}

\DeclareOption{correction}{\@correctiontrue}
\newif\if@correction
\@correctionfalse
\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}
\RequirePackage{verbatim}
\RequirePackage{fancyvrb}
\RequirePackage{url,xcolor}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
% \RequirePackage[french]{babel}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Correction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\if@correction
\newenvironment{correction}%
                {\par\noindent\begin{small} ~\\ \textbf{\color{red}Correction :}}%
                {\end{small}\par\smallskip}

\else
        \let\correction\comment
        \let\endcorrection\endcomment
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% myheader
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% numero of exercise 
% course title 
% title 
% date 
% url in \url 
\newcommand{\myheader}[5]{
  \large
  \begin{flushright}
    Homework~#1~|~\textbf{#2}\\
    \textbf{#3}\\
    #5\\
    E.S.P.C.I $|$ P.S.L \\
    #4 \\[1.5ex]
    \rule{0.75\textwidth}{0.01cm}
    \if@correction {\color{red}  \\ \rule{\textwidth}{0.05cm} \\ \centering  \bf Correction\\ \rule{\textwidth}{0.05cm}}\fi
    \\[6ex]
  \end{flushright}

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\thesection}{\Roman{section})}
\renewcommand{\thesubsection}{\alph{subsection})}


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % Environnement exercice
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% \newtheorem{exo}{Exercice}
%% \newenvironment{exercice}{\begin{exo}\upshape\par}{\end{exo}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Details...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Macros pour numeroter les exos automatiquement
\newcounter{exi}
\newcounter{parti}
%\def\exo{\stepcounter{exi}\section*{Exercice \theexi.}}
\newcommand{\exo}[1][]{\section*{\stepcounter{exi} Exercise \theexi.~~#1}}

\newcommand{\partie}[1][]{
  \stepcounter{parti}
  \begin{flushright}
    \vspace{3ex}
    \Large{\textbf{Part \theparti~$|$~#1}}\\[2ex]
  \end{flushright}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% PAGE LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\textwidth}{16cm}
\setlength{\hoffset}{-2cm}
\setlength{\textheight}{23cm}
\setlength{\topmargin}{-1cm}
\setlength{\evensidemargin}{0cm}
% pas d'indentation de paragraphe
\setlength{\parindent}{0pt}


\newcommand{\topic}[1]{\begin{center}{{\bf #1}}\end{center}\bigskip}



