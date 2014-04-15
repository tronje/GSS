% FBI-Aufgabenblatt
%
% LaTeX-Klasse zur Erstellung von Aufgabenblaettern inkl. optionaler Musterloesung in einem Stil mit FBI-Logo.
%
% Entworfen von Kristof Hamann auf Grundlage von vsis-aufgabenblatt.cls.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fbi-aufgabenblatt}[2010/03/25 v1.0 FBI-Aufgabenblaetter]

\LoadClass[a4paper,parskip=half-,DIV=11]{scrartcl}

% Silbentrennung
\RequirePackage{babel}
% Kodierung der Schriftarten wegen Umlauten
\RequirePackage[T1]{fontenc}


% Einbinden von Grafiken (z.B. FBI-Logo)
\RequirePackage{graphicx}

% Definieren von Farben
\RequirePackage{xcolor}	
\definecolor{shadecolor}{gray}{0.9}

% Rahmen (z.B. fuer Musterloesungen)
\RequirePackage{framed}

% Erweiterte Tabellen (z.B. fuer Kopfzile)
\RequirePackage{tabularx}

\renewcommand{\familydefault}{\sfdefault} 
\RequirePackage{sfmath}


% Seitenlayout
\RequirePackage[headsepline]{scrpage2}
\setlength{\headsep}{2cm}
%\setlength{\oddsidemargin}{-1cm}
%\setlength{\textwidth}{17cm}
\setkomafont{pageheadfoot}{\small}


% Kopfzeile mit VSIS-Logo und Vorlesungsdaten
\pagestyle{scrheadings}
\ihead{%
{\Huge \Vorlesung}\\
\AufgabenblattTitel{} \Aufgabenblatt{} $\cdot$ \GruppeTitel{} \Gruppe{}-\KleinGruppe{} $\cdot$ \Teilnehmer{} $\cdot$ \Semester{}
%\end{minipage}
}
\ohead{\includegraphics[width=1.5cm]{fbi.pdf}}

\ifoot{%
Seite \thepage $\cdot$ \AufgabenblattTitel{} \Aufgabenblatt{} $\cdot$ \GruppeTitel{} \Gruppe{}-\KleinGruppe{} $\cdot$ \Teilnehmer{}
%\end{minipage}
}

\cfoot{}

\usepackage[latin1]{inputenc}

% Section = Aufgabe
% \othersectionlevelsformat{Gliederungsname}{}{Zaehlerausgabe}
\renewcommand*{\othersectionlevelsformat}[3]{\AufgabeTitel~#3:\enskip}
% Aufzaehlungen fuer Teilaufgaben
\renewcommand{\labelenumi}{\alph{enumi})}
\renewcommand{\theenumi}{\thesection\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii})}
\renewcommand{\labelenumii}{\theenumii}


% Etwas rechtsbündig in der selben Zeile schreiben
\newcommand\ontheright[1]{{\unskip\nobreak\hfill\penalty50\ 
  \mbox{\quad}\nobreak\hfill#1\parfillskip=0pt \finalhyphendemerits=0\par}}

  
% Optionales Einblenden von Musterloesungen, Layout von Musterloesungen
\newif\ifmusterloesung
\musterloesungfalse
\newcommand{\aufgabe}[2]{\section{#1\ontheright{\normalfont}}}
\newenvironment{musterloesung}{\begin{shaded}\textbf{\MusterloesungTitel:}\\*[0.5em]\nopagebreak}{\end{shaded}}



% Variablen fuer Seitenkopf: Setzen mit \renewcommand{\Variable}{Wert}
\newcommand{\Vorlesung}{Grundlagen der Systemsoftware}
\newcommand{\Vkurz}{GSS}
\newcommand{\Semester}{SoSe 2011}
\newcommand{\Ausgabedatum}{}
\newcommand{\Abgabedatum}{}
\newcommand{\Aufgabenblatt}{}
\newcommand{\Punktezahl}{}
\newcommand{\MusterloesungTitel}{L\"osungsvorschlag}
\newcommand{\MusterloesungTitelblatt}{L\"osungsvorschl\"age}
\newcommand{\VorlesungTitel}{Lehrveranstaltung}
\newcommand{\AufgabenblattTitel}{Übungsblatt}
\newcommand{\PunktezahlTitel}{Gesamtpunktzahl}
\newcommand{\AusgabedatumTitel}{Ausgabe}
\newcommand{\AbgabedatumTitel}{Abgabe}
\newcommand{\AufgabeTitel}{Aufgabe}
\newcommand{\Teilnehmer}{}
\newcommand{\GruppeTitel}{Gruppe}
\newcommand{\Gruppe}{}
\newcommand{\KleinGruppe}{}
