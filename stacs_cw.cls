% Style file for producing University of St Andrew's Computer Science report - 2018
% Work-in-Progress [Last Updated: 2018-11-05]

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stacs_cw}[St Andrews' Computer Science coursework template]

%% Load article as base class
\LoadClass[a4paper,11pt]{article}
%% Layout
\RequirePackage[a4paper,headheight=14pt,width=150mm,top=25mm,bottom=25mm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{float}
%Font
\RequirePackage{libertine}
\RequirePackage{libertinust1math}
\RequirePackage{inconsolata}
%% Language and Encoding
\RequirePackage[UKenglish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
%% Formatting
\RequirePackage{microtype}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{parskip}
%% Feature inclusion
\RequirePackage{listings}
\RequirePackage{fancyhdr}
% Title
\RequirePackage{titletoc}
\RequirePackage{titlesec}
%% Maths
\RequirePackage{amsmath}
\RequirePackage{amssymb}
% Bibliography
\RequirePackage{natbib}
%% Colours
\definecolor{st-a-gray}{gray}{0.95}
\definecolor{st-a-blue}{HTML}{00539b}
\definecolor{st-a-red}{HTML}{ee312a}
\definecolor{st-a-yellow}{HTML}{ffdf00}
\definecolor{st-a-black}{HTML}{231f20}
\definecolor{st-a-light-blue}{HTML}{00aeef}
\definecolor{st-a-mid-blue}{HTML}{007dc5}
\definecolor{st-a-burgundy}{HTML}{c60c46}
\definecolor{st-a-purple}{HTML}{7b439a}
\definecolor{st-a-orange}{HTML}{f5842b}
\definecolor{st-a-green}{HTML}{54b948}
\definecolor{st-a-mid-green}{HTML}{00853f}
\definecolor{st-a-dark-green}{HTML}{005953}
%% Hyperlink colouring
\hypersetup{
    colorlinks=true,
    linkcolor=st-a-blue,
    filecolor=st-a-burgundy,
    urlcolor=cyan,
}
%% Code Listing style
\lstset{
    basicstyle=\small\ttfamily,
    columns=flexible,
    breaklines=true,
    backgroundcolor=\color{st-a-gray},
    numbers=left,
    numberstyle=\ttfamily,
    frame=tb
}
%% Matriculation Number
\def\matrno#1{\def\@matrno{#1}}
\newcommand{\printmatrno}{\@matrno}
%% Code command listing
\def\code#1{\colorbox{st-a-gray}{\texttt{#1}}}
%% File listing
\def\file#1{\textcolor{st-a-burgundy}{\texttt{#1}}}
%% Main matter header style
\pagestyle{fancy}
\rhead{\printmatrno}
\renewcommand{\sectionmark}[1]{\markright{#1}} %% Suppress section numbering in lhead
%% Define default document text colour
\color{st-a-black}
%% Title page
\def\@maketitle{
    \pagestyle{empty}
    \null
    \vspace{0.3\textheight}
    \begin{center}
        {\LARGE\bfseries \@title \par}
        \vskip 1.5em
        {\Large \@matrno}
        \vskip 1.em
        {\Large \@date}
    \end{center}
    \newpage
    \clearpage
    \pagenumbering{arabic} 
}
% Table of Contents
\renewcommand\tableofcontents{
    \null\hfill\textbf{\Large\contentsname}\hfill\null\par
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \thispagestyle{empty}
    \@starttoc{toc}%
    \newpage
    \clearpage
    \pagenumbering{arabic}
}