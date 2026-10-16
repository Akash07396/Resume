\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/10/16 shared resume template 1]
\LoadClass[10pt,a4paper]{article}

\RequirePackage[a4paper,top=1.55cm,bottom=1.55cm,left=1.65cm,right=1.65cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{microtype}
\RequirePackage{needspace}
\RequirePackage{iftex}
\RequirePackage{etoolbox}
\RequirePackage{charter}

\hypersetup{colorlinks=true,urlcolor=black,linkcolor=black}
\urlstyle{same}
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\raggedbottom
\raggedright
\tolerance=1800
\emergencystretch=1.5em
\hyphenpenalty=10000

\definecolor{ResumeGray}{HTML}{626B73}
\definecolor{ResumeBlack}{HTML}{17212B}

\titleformat{\section}
  {\needspace{3\baselineskip}\color{ResumeBlack}\large\bfseries\scshape}
  {}{0pt}{}
\titlespacing*{\section}{0pt}{7pt}{2pt}

\newenvironment{resumeitemize}
  {\begin{itemize}[leftmargin=14pt,itemsep=1.4pt,topsep=2pt,parsep=0pt,partopsep=0pt]}
  {\end{itemize}}

\newcommand{\resumeHeader}[4]{%
  \begin{center}
    {\fontsize{24}{26}\selectfont\bfseries #1}\\[1pt]
    {\small\color{ResumeGray}#2}\\[2pt]
    {\footnotesize #3}\\[1pt]
    {\footnotesize #4}
  \end{center}
  \vspace{-3pt}}

\newcommand{\resumeRole}[4]{%
  \begin{tabularx}{\textwidth}{@{}X r@{}}
    \textbf{#1} \textnormal{\,|\,#2} & \textbf{#3}\\[-1pt]
    \multicolumn{2}{@{}l@{}}{\footnotesize\color{ResumeGray}#4}
  \end{tabularx}
  \vspace{1pt}}

\newcommand{\resumeProject}[3]{%
  \begin{tabularx}{\textwidth}{@{}X r@{}}
    \textbf{#1} & {\footnotesize #2}\\[-1pt]
    \multicolumn{2}{@{}l@{}}{\footnotesize\color{ResumeGray}#3}
  \end{tabularx}
  \vspace{0.5pt}}

\newcommand{\resumeSkills}[2]{\textbf{#1} #2\par\vspace{1pt}}
\newcommand{\tightpar}[1]{{\small #1}}

\newcommand{\resumeEducation}[3]{%
  \begin{tabularx}{\textwidth}{@{}X r@{}}
    \textbf{#1} & \textbf{#2}\\[-1pt]
    \multicolumn{2}{@{}l@{}}{\small #3}
  \end{tabularx}}

\endinput
