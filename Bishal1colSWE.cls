% Intro Options
\ProvidesClass{Bishal1col}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, top=0.75cm, bottom=0.75cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec}
\usepackage{fontawesome}
\pagenumbering{gobble}
\usepackage{datetime2}
\usepackage{enumitem}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{url}{HTML}{453265}
\definecolor{light}{HTML}{6A6A6A}
\definecolor{extra}{HTML}{494646}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{363F43}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}\fontsize{11pt}{13pt}

%Justify
\newcommand{\justified}{%
  \rightskip\z@skip%
  \leftskip\z@skip}

%Bullet List
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

%Bullet List
\newenvironment{vtightemize}{\vspace{-\topsep}\begin{itemize}[leftmargin=*]\itemsep0pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% Name command
\newcommand{\namesection}[2]{
	\hspace{-1.7em}\raggedright{\parbox[b]{32em}{\vspace*{\fill}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{30pt}{0cm}\selectfont #1 \vspace*{\fill}}}
    \hfill
    \raggedleft{\parbox[b]{16em}{\color{headings}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{10pt}{14pt}\selectfont #2}
    }
    \noindent\makebox[\linewidth]{\color{headings}
\rule{\paperwidth}{0.2pt}}
   	\vspace{-2em} 
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{darkgray}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{15pt}{20pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\raggedright}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\raggedright {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

%Bold
\newcommand{\bold}[1]
{\color{primary}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont #1 \normalfont}
\linespread{1.1}

%Timeplace
\newcommand{\timeplace}[1]
{\color{light}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont #1 \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{6pt}}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Jobtitle command
\newcommand{\organization}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

%College
\newcommand{\college}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

%Workplace
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\color{subheadings}\raggedleft
\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

%Regular
\newcommand{\regular}[1]{\color{black}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{12pt}\selectfont {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

%Regular Lato
\newcommand{\regularlat}[1]{\color{darkgray}\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

%RegularGray
\newcommand{\regulargray}[1]{\color{darkgray}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{12pt}\selectfont {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

%RegularBlack
\newcommand{\regularblack}[1]{\color{black}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{12pt}\selectfont {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Project command
\newcommand{\project}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{headings}\raggedleft
\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Extra command
\newcommand{\extra}[1]{\color{extra}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-LigIta}\fontsize{10.5pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}