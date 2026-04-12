# Presenter Guide: KI in der Lehre (Beginner)

> Notizen entlang des Workshop-Ablaufs.
> Links verweisen auf die jeweiligen Seiten/Abschnitte der Website.
<!-- TODO: Claude in Folien explizite IDs vergeben lassen für robustere Verlinkung -->
<!-- TODO: Rückwärts-Link Folienreihenfolge in Präsentation zu Reihenfolge in presenter-guide sicherstellen -->
## 1. Begrüssung & Übersicht

[→ Workshop-Übersicht](../workshop/index.qmd)

1. Begrüssung
   a. [Virtuelle Akademie](https://virtuelleakademie.ch) vorstellen
   b. Kursleitung vorstellen
   c. [Weiterbildung & CAS](https://bfh.ch/de/ueber-die-bfh/service-beratung/virtuelle-akademie/)
2. Website-Ressourcen zeigen
   a. „Workshop" in Navbar öffnet Seitenleiste links
   b. Dort: Präsentationen, unter Präsentationen: Inhalte ausformuliert
   c. Prompting Guide benötigt evtl. BFH-Login
3. [Ablauf](../workshop/index.qmd#ablauf) durchgehen
4. Zeit für Fragen
<!-- TODO: Reihenfolge der Webiste auf Präsentationsreihenfolge anpassen.-->

Notizen:

-

---

## 2. Einstieg

[→ Einstieg](../workshop/einstieg/index.qmd)

1. [Einstiegsproblem „Szenario"](../workshop/einstieg/index.qmd#was-wir-heute-klären) vorstellen
   - Auf positive Formulierung achten
2. [Lernziele](../workshop/index.qmd#lernziele): Kurzer Exkurs: Wie funktioniert Lernen?
3. [Diskussion: „Wo stehst du?"](../workshop/einstieg/index.qmd#wo-stehst-du)
   - Timer durch Klick starten
   - Selbstorganisation in 2er-/3er-Teams funktioniert üblicherweise gut

Notizen:

-

---

## 3. Frage 1: Was ist KI?

### 3a. Präsentation

[→ Webseite](../workshop/frage-1-was-ist-ki/index.qmd) |
[→ Folien](../slides/frage-1-was-ist-ki/index.qmd)

> Nach Klick auf „Präsentation": Taste `s` für Speaker View, `f` für Vollbild.

*→ Wie funktionieren Sprachmodelle?*

#### [Frage 1: Was ist KI?](../slides/frage-1-was-ist-ki/index.qmd) — *Wie funktionieren Sprachmodelle wirklich?*

- KI heute meist «Sprachmodelle» bzw. Zusammenspiel von «generativen» Modellen

<details>
<summary>Hintergrund: Generative KI</summary>

Generative AI (auf Deutsch meist generative KI) bezeichnet eine Form der künstlichen Intelligenz, die neue Inhalte erzeugen kann, anstatt nur bestehende Daten zu analysieren oder zu klassifizieren. [en.wikipedia.org], [ibm.com]

**Kurz erklärt:**
Generative KI lernt aus sehr großen Datenmengen (z. B. Texte, Bilder, Musik) typische Muster und Strukturen und nutzt dieses Wissen, um neue, originelle Inhalte zu erzeugen, die den gelernten Daten ähneln – aber keine bloßen Kopien sind. [en.wikipedia.org]
Was kann generative KI erzeugen?
Generative KI kann unter anderem:

Texte (z. B. E‑Mails, Berichte, Zusammenfassungen)
Bilder und Grafiken
Audio (z. B. Sprache, Musik)
Videos
Software‑Code
erstellen – meist als Reaktion auf eine Texteingabe (Prompt) durch Nutzer:innen. [en.wikipedia.org], [ibm.com]

Wie unterscheidet sie sich von „klassischer" KI?

Klassische (prädiktive) KI: trifft Vorhersagen oder Entscheidungen
(z. B. „Ist auf diesem Bild eine Katze?")
Generative KI: erstellt neue Daten
(z. B. „Erzeuge ein neues Bild einer Katze.") [news.mit.edu]

</details>
<br>
*→ Wie sehen typische Nutzerinterfaces solcher KI aus?*

#### [Was sind Chatbots?](../slides/frage-1-was-ist-ki/index.qmd#was-sind-chatbots)

- Wir sehen gleich noch Copilot (BFH) – aber die meisten recht ähnlich.
- Wissen über mich (je nach Einstellungen)
   - Hat Vor- und Nachteile
- Kann (nicht nur) Textkommunikation
   - Dateien als Input hochladen
      - Bilder 
      - pdf
      - Word, Excel
      - ...
   - Artefakte erstellen
      - z.B. Bilder
   - Promptvorschläge
   - weitere Spezialmodi (Anwendungseinbindungen, Agenten, Skills, ...)

*→ Dazu später mehr. Wir fokussieren erst einmal auf  das Sprachmodell. Wie funktioniert das?* 

#### [Was sind LLMs?](../slides/frage-1-was-ist-ki/index.qmd#was-sind-llms)

- Side-Note: Warum ist Autocomplete auf meinem Smartphone so schlecht? --> Weil es 5 Jahre alt ist. 

*→ Im hintergrund werden Wahrscheinlichkeiten berechnet*

#### [Die Kernidee](../slides/frage-1-was-ist-ki/index.qmd#die-kernidee)

- [Lies: "Wahrscheinlichkeit nächstes Wort *gegeben* Kontext und Modell]

*→ Wenn wir also z.B. einen Satzanfang vorgeben...*

#### [Was bedeutet das konkret?](../slides/frage-1-was-ist-ki/index.qmd#was-bedeutet-das-konkret)

- 

*→ Aufgrund der Wahrscheinlichkeit ist jede tatsächliche Generierung anders*

#### [Token-Vorhersage und Temperatur](../slides/frage-1-was-ist-ki/index.qmd#token-vorhersage-und-temperatur)

- Modell kann Wahrscheinlichkeiten unterschiedlich nutzen
- "Kreativität" des Outputs
   - Höhere Temperatur: Variablerer Output
   - aber auch: ggf. unplausibler
- [Wahrscheinlichkeiten tatsächlich nicht über nur 5, sondern alle (30-130k) tokens. Top-5 summieren also nicht zu 100%.]
- Temperatur 0 ist deterministisch (immer dasselbe nächste Wort)

<!-- TODO: Hintergrundwissen Temperature einfügen -->
<!-- TODO: LM Studio Übung Temperature einfügen-->
<!-- TODO: Hintergrundwissen Tokens, Temperature & Selection einfügen -->

*→* 

#### [Vorhersage in Aktion](../slides/frage-1-was-ist-ki/index.qmd#vorhersage-in-aktion)

- [Teilnehmende selbst überlegen lassen]
- Bei KI: "Attention"-Mechanismus 
- gewichtete Bezüge über Distanzen herstellen
- "Distanz" --> Kontextlänge (2026 bis zu ~10 Mio Tokens)
- Highlight zeigt Semantik. Tatsächlich: Unterschiedliche Blickwinkel (Multi-headed attention), wie z.B. Syntax

*→*

#### [Wie generieren LLMs ganze Sequenzen?](../slides/frage-1-was-ist-ki/index.qmd#wie-generieren-llms-ganze-sequenzen)

-

*→*

#### [Wie werden LLMs trainiert?](../slides/frage-1-was-ist-ki/index.qmd#wie-werden-llms-trainiert)

-

*→*

#### [Chain-of-Thought "Denken"](../slides/frage-1-was-ist-ki/index.qmd#chain-of-thought-denken)

-

*→*

#### [Beispiel: 9.11 vs 9.8](../slides/frage-1-was-ist-ki/index.qmd#beispiel-9.11-vs-9.8)

-

*→*

#### ["Think Deeper" in Copilot](../slides/frage-1-was-ist-ki/index.qmd#think-deeper-in-copilot)

-

*→*

#### [Warum funktioniert "Denken"?](../slides/frage-1-was-ist-ki/index.qmd#warum-funktioniert-denken)

-

*→*

#### [Takeaway](../slides/frage-1-was-ist-ki/index.qmd#takeaway)

-

### 3b. Interaktive Elemente (Webseite)

- [Token-Vorhersage](../workshop/frage-1-was-ist-ki/index.qmd#interaktiv-token-vorhersage)
- [Temperature](../workshop/frage-1-was-ist-ki/index.qmd#interaktiv-temperature)
- [Die Parallele zum Schreiben](../workshop/frage-1-was-ist-ki/index.qmd#die-parallele-zum-schreiben)
- [Kurze Reflexion (3 min)](../workshop/frage-1-was-ist-ki/index.qmd#kurze-reflexion-3-min)

Notizen:

-

---

## 4. Frage 2: Wofür kann KI verwendet werden?

### 4a. Übung: Copilot Onboarding

[→ Copilot Einstieg](../exercises/copilot-einstieg/index.qmd)

#### [Demonstration (5 min)](../exercises/copilot-einstieg/index.qmd#demonstration)

-

#### [Gemeinsam ausprobieren (5 min)](../exercises/copilot-einstieg/index.qmd#gemeinsam)

-

#### [Selbstständig erkunden (8 min)](../exercises/copilot-einstieg/index.qmd#selbststaendig)

-

#### [Kurzer Austausch (3 min)](../exercises/copilot-einstieg/index.qmd#austausch)

-

#### [Prompting-Grundlagen](../exercises/copilot-einstieg/index.qmd#teil-5-prompting-grundlagen)

-

#### [Reflektion](../exercises/copilot-einstieg/index.qmd#reflektion)

-

Referenz: [Prompting für Einsteiger](../resources/prompting-basics/index.qmd)

### 4b. Präsentation

[→ Webseite](../workshop/frage-2-wozu-kann-ki/index.qmd) |
[→ Folien](../slides/frage-2-wozu-kann-ki/index.qmd)

#### [Frage 2: Wofür kann KI verwendet werden?](../slides/frage-2-wozu-kann-ki/index.qmd) — *Möglichkeiten, Grenzen und was an der BFH gilt*

-

*→*

#### [Mehr als Textgenerierung](../slides/frage-2-wozu-kann-ki/index.qmd#mehr-als-textgenerierung)

-

*→*

#### [Fragen beantworten](../slides/frage-2-wozu-kann-ki/index.qmd#fragen-beantworten)

-

*→*

#### [Bilder analysieren](../slides/frage-2-wozu-kann-ki/index.qmd#bilder-analysieren)

-

*→*

#### [Dokumente zusammenfassen](../slides/frage-2-wozu-kann-ki/index.qmd#dokumente-zusammenfassen)

-

*→*

#### [Output strukturieren](../slides/frage-2-wozu-kann-ki/index.qmd#output-strukturieren)

-

*→*

#### [Websuche](../slides/frage-2-wozu-kann-ki/index.qmd#websuche)

-

*→*

#### [Datenanalyse](../slides/frage-2-wozu-kann-ki/index.qmd#datenanalyse)

-

*→*

#### [Custom GPTs](../slides/frage-2-wozu-kann-ki/index.qmd#custom-gpts)

-

*→*

#### [Aber: Grenzen und Gefahren](../slides/frage-2-wozu-kann-ki/index.qmd#aber-grenzen-und-gefahren)

-

*→*

#### [Keine Wissensdatenbank](../slides/frage-2-wozu-kann-ki/index.qmd#keine-wissensdatenbank)

-

*→*

#### [KI an der BFH](../slides/frage-2-wozu-kann-ki/index.qmd#ki-an-der-bfh)

-

*→*

#### [Deine Verantwortung als Lehrperson](../slides/frage-2-wozu-kann-ki/index.qmd#deine-verantwortung-als-lehrperson)

-

*→*

#### [Rechtliche Aspekte](../slides/frage-2-wozu-kann-ki/index.qmd#rechtliche-aspekte)

-

*→*

#### [Was darf in den Chatbot?](../slides/frage-2-wozu-kann-ki/index.qmd#was-darf-in-den-chatbot)

-

*→*

#### [Freigegebene Tools](../slides/frage-2-wozu-kann-ki/index.qmd#freigegebene-tools)

-

*→*

#### [Datenschutz: Copilot](../slides/frage-2-wozu-kann-ki/index.qmd#datenschutz-copilot)

-

*→*

#### [Takeaway](../slides/frage-2-wozu-kann-ki/index.qmd#takeaway)

-

### 4c. Übung: Fakten-Check

[→ Fakten-Check](../exercises/fakten-check/index.qmd)

#### [Das Problem verstehen (3 min)](../exercises/fakten-check/index.qmd#problem)

-

#### [I do (3 min)](../exercises/fakten-check/index.qmd#i-do)

-

#### [Evaluations-Checkliste](../exercises/fakten-check/index.qmd#checkliste)

-

#### [We do (5 min)](../exercises/fakten-check/index.qmd#we-do)

-

#### [You do (6 min)](../exercises/fakten-check/index.qmd#you-do)

-

#### [Austausch (3 min)](../exercises/fakten-check/index.qmd#austausch)

-

#### [Debrief im Plenum](../exercises/fakten-check/index.qmd#debrief)

-

#### [Kurze Reflexion (2 min)](../exercises/fakten-check/index.qmd#kurze-reflexion-2-min)

-

---

## 5. Frage 3: Wann hilft KI, wann schadet sie?

### 5a. Präsentation

[→ Webseite](../workshop/frage-3-wozu-soll-ich/index.qmd) |
[→ Folien](../slides/frage-3-wozu-soll-ich/index.qmd)

#### [Frage 3: Wofür sollte ich KI verwenden?](../slides/frage-3-wozu-soll-ich/index.qmd) — *Offloading vs. Outsourcing: Wann ist KI-Nutzung sinnvoll?*

-

*→*

#### [Die Konzepte](../slides/frage-3-wozu-soll-ich/index.qmd#die-konzepte)

-

*→*

#### [Die zwei Fragen](../slides/frage-3-wozu-soll-ich/index.qmd#die-zwei-fragen)

-

*→*

#### [Das Produktivitäts-Lern-Paradox](../slides/frage-3-wozu-soll-ich/index.qmd#das-produktivitäts-lern-paradox)

-

*→*

#### [Für Lehrende vs. Studierende](../slides/frage-3-wozu-soll-ich/index.qmd#für-lehrende-vs.-studierende)

-

*→*

#### [Takeaway](../slides/frage-3-wozu-soll-ich/index.qmd#takeaway)

-

### 5b. Webseite: Vertiefung

- [Die zwei Konzepte](../workshop/frage-3-wozu-soll-ich/index.qmd#die-zwei-konzepte)
- [Die entscheidende Frage](../workshop/frage-3-wozu-soll-ich/index.qmd#die-entscheidende-frage)
- [Matrix: Wer macht was?](../workshop/frage-3-wozu-soll-ich/index.qmd#matrix-wer-macht-was)
- [Der Produktivitäts-Lern-Zielkonflikt](../workshop/frage-3-wozu-soll-ich/index.qmd#der-produktivitäts-lern-zielkonflikt)
- [Leitfragen für deine Praxis](../workshop/frage-3-wozu-soll-ich/index.qmd#leitfragen-für-deine-praxis)

### 5c. Übung: Offloading vs. Outsourcing

[→ Offloading vs. Outsourcing](../exercises/offloading-outsourcing/index.qmd)

#### Szenarien diskutieren (15 min)

-

#### Debrief im Plenum (10 min)

-

---

## 6. Abschluss

[→ Abschluss](../workshop/abschluss/index.qmd)

#### [Reflektion (Teil 1)](../workshop/abschluss/index.qmd#reflektion-teil-1)

Active Retrieval

-

#### [Eine Sache, die du morgen anders machst](../workshop/abschluss/index.qmd#eine-sache-die-du-morgen-anders-machst)

a. Konkreter Vorsatz (3 min)
b. Austausch (5 min)

-

#### [Was wir heute gemacht haben](../workshop/abschluss/index.qmd#was-wir-heute-gemacht-haben)

Zusammenfassung

-

#### [Reflektion (Teil 2)](../workshop/abschluss/index.qmd#reflektion-teil-2)

Transfer

-

#### [Die nächste Frage](../workshop/abschluss/index.qmd#die-nächste-frage)

Ausblick auf Intermediate

-

#### [Ressourcen](../workshop/abschluss/index.qmd#ressourcen)

-

---

## Referenz-Links

- [Prompting für Einsteiger](../resources/prompting-basics/index.qmd)
- [Reflexionsfragen](../resources/reflexion/index.qmd)
- [Weiterführende Ressourcen](../resources/weiterfuehrende-ressourcen/index.qmd)
- [Schreiben als Sampling](../resources/schreiben-als-sampling/index.qmd)
