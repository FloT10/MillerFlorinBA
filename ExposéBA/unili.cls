\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unili}[2021/12/20 Class for UniLi's documents (v1)]

\documentclass[twoside, 11pt]{article}

\usepackage{hyperref}

\usepackage[utf8]{inputenc}
\usepackage{mathptmx}
\usepackage{xcolor}
\usepackage{eso-pic}
\usepackage{soul}

\usepackage[immediate]{silence}

\usepackage[T1]{fontenc}
\usepackage[german]{babel}
\usepackage[titles]{tocloft}
\usepackage{enumitem}
\WarningFilter[temp]{latex}{Command} % silence the warning
\usepackage{sectsty}
\DeactivateWarningFilters[temp] % So nothing unrelated gets silenced

\usepackage{chngpage}
\usepackage{calc}

\usepackage[a4paper, left=2.5cm, right=2.5cm, top=2.1cm, bottom=1.5cm, headsep=5mm, includeheadfoot]{geometry}
\sectionfont{\fontsize{12}{15}\selectfont}

%\usepackage[style=apa,
%citestyle=authoryear
%]{biblatex}

\usepackage[style=authoryear, backend=biber]{biblatex}
%\usepackage[style=authoryear, backend=biber]{natbib}

\renewcommand{\labelenumii}{\theenumii}
\renewcommand{\theenumii}{\theenumi.\arabic{enumii}}



\setlength{\parskip}{0.5em} 


\usepackage{hyperref}
\hypersetup{
  colorlinks   = true,    % Colours links instead of ugly boxes
  urlcolor     = black,    % Colour for external hyperlinks
  linkcolor    = black,    % Colour of internal links
  citecolor    = black      % Colour of citations
}


\usepackage{fancyhdr}
\pagestyle{fancy}
\headheight=14pt
\renewcommand\headrule{}
\renewcommand{\headrulewidth}{50pt}
\fancyhf{} % Alle Kopf- und Fußzeilenfelder löschen
\fancyhead[L]{\textcolor{black!50}{\footnotesize{\papertitle}}} % Titel links
\fancyhead[R]{\textcolor{black!50}{\footnotesize{\authorname}}} % Autorname rechts
\fancyfoot[RE,RO]{\thepage} % Seitenzahl auf geraden (E) und ungeraden (O) Seiten rechts unten
\renewcommand{\headrulewidth}{0.4pt} % Horizontale Linie unter der Kopfzeile




\usepackage{csquotes}
\usepackage[onehalfspacing]{setspace}






\renewcommand*{\nameyeardelim}{\addcomma\space}

\renewcommand{\baselinestretch}{1.2}


\usepackage{graphicx}





%%% You can modify the numbers to regulate the spacing between dots
\renewcommand{\cftsecdotsep}{1}
\renewcommand\cftsecleader{\bfseries\large\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsecdotsep}{1}
\renewcommand\cftsubsecleader{\normalsize\cftdotfill{\cftsubsecdotsep}}
\renewcommand{\cftsubsubsecdotsep}{1}
\renewcommand\cftsubsubsecleader{\small\cftdotfill{\cftsubsubsecdotsep}}

\newcommand\secdotfill{\textbf{\cftdotfill{\cftsecdotsep}}}
\newcommand\subsecdotfill{\cftdotfill{\cftsubsecdotsep}}


\author{\authorname} % This is the author of the document

\renewcommand*\contentsname{Inhaltsverzeichnis}


\newcommand{\preliminaryTOCbox}[1]{
    \vspace{1em}
    \noindent\fbox{%
        \parbox{\columnwidth}{%
            {#1}
        }%
    }
}

\newcommand\preliminaryTOCend{
\item \textbf{Zusammenfassung} \secdotfill tbd
    
    \item[] \hspace{-1cm} \textbf{Literaturverzeichnis} \secdotfill tbd
    \item[] \hspace{-1cm} \textbf{Abbildungsverzeichnis} \secdotfill tbd
    \item[] \hspace{-1cm} \textbf{Tabellenverzeichnis} \secdotfill tbd
    \item[] \hspace{-1cm} \textbf{Abkürzungsverzeichnis} \secdotfill tbd
    \item[] \hspace{-1cm} \textbf{Anhang} \secdotfill tbd
    \item[] \hspace{-1cm} \textbf{Erklärung zur Arbeit} \secdotfill tbd
    }
    
   