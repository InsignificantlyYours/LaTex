\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathematics}
\LoadClass[]{scrartcl}

\pagenumbering{gobble} %removing pagenumbers

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{booktabs}
\RequirePackage{csquotes}
\RequirePackage{fullpage}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage[parfill]{parskip}
\RequirePackage{pgfplots} \pgfplotsset{compat=1.16}
\RequirePackage{tikz} \usetikzlibrary{cd}

\ProcessOptions\relax

%environments
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corrolary}{Corrolary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem*{prob}{Problem}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\newtheorem*{eg}{Example}
\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]

%abs and norm that are self-adjusting
\DeclarePairedDelimiter\abs{\lvert}{\rvert}
\DeclarePairedDelimiter\norm{\lVert}{\rVert}
\makeatletter
\let\oldabs\abs
\def\abs{\@ifstar{\oldabs}{\oldabs*}}
\let\oldnorm\norm
\def\norm{\@ifstar{\oldnorm}{\oldnorm*}}
\makeatother

%Commands
\newcommand{\ang}[1]{\left\langle#1\right\rangle} %self-adjusting angled braces
\newcommand{\bra}[1]{\left(#1\right)} %self-adjusting parenthesis
\newcommand{\ceq}{\coloneqq} %collon equal to
\newcommand{\contra}{\longrightarrow\longleftarrow} %contradiction
\renewcommand{\d}{\mathrm{d}} %roman d
\newcommand{\dd}[2]{\frac{\mathrm{d}#1}{\mathrm{d}#2}} %derivative
\newcommand{\ex}[1]{ \textit{Examples: #1, etc.} } %examples
\newcommand{\fe}[1]{ \textit{For example, #1.} } %for example
\newcommand{\ie}{ \textit{ie} } %italicized ie
\renewcommand{\mod}[2]{\equiv#1 (\mathrm{mod}\ #2)} %modular arithmetic
\newcommand{\p}{^\prime} %prime
%\newcommand{\par}[1]{\left(#1\right)} %self-adjusting parenthesis
\newcommand{\pp}[2]{\frac{\partial#1}{\partial#2}} %partial derivative
\renewcommand\qedsymbol{\textbf{QED}} %qed symbol
\newcommand{\set}[1]{\left\{#1\right\}} %set with self-adjusting curly braces
\newcommand{\sq}[1]{\left[#1\right]} %self-adjusting sqaure braces
