# Presenter Guide: KI in der Lehre (Beginner)

## 0. Vorab
Es sollte geklärt/verfügbar sein:

- TN-Liste
- Evaluationslink
- Raum (VA-Kalender)
- eigener Laptop für Präsentation

> Notizen entlang des Workshop-Ablaufs.
> Links verweisen auf die jeweiligen Seiten/Abschnitte der Website.
## 1. Begrüssung & Übersicht

[→ Workshop-Übersicht](../workshop/index.qmd)

1. Begrüssung
   a. [Virtuelle Akademie](https://virtuelleakademie.ch) vorstellen
   b. Kursleitung vorstellen
   c. [Weiterbildung & CAS](https://bfh.ch/de/ueber-die-bfh/service-beratung/virtuelle-akademie/)
2. Website-Ressourcen zeigen
   a. „Workshop" in Navbar öffnet Seitenleiste links - diese durchgehen
      - "Präsentation" --> unterhalb des Slide-Decks sind Inhalte ausformuliert
3. Unter "Übersicht" 
   a. [Lernziele](../workshop/index.qmd#lernziele) 
      - dazu kurzer Exkurs: Wie funktioniert Lernen?
   a. [Ablauf](../workshop/index.qmd#ablauf) durchgehen
   a. Hinweis: Prompting Guide (ganz unten) benötigt evtl. BFH-Login
4. Zeit für Fragen
<!-- TODO: Reihenfolge der Webiste auf Präsentationsreihenfolge anpassen.-->

Notizen:

-

---

## 2. Einstieg

[→ Einstieg](../workshop/einstieg/index.qmd)

1. [Einstiegsproblem „Szenario"](../workshop/einstieg/index.qmd#was-wir-heute-klären) vorstellen
   - Auf positive Formulierung achten

3. [Diskussion: „Wo stehst du?"](../workshop/einstieg/index.qmd#wo-stehst-du)
   - Timer durch Klick starten
   - Selbstorganisation in 2er-/3er-Teams funktioniert üblicherweise gut

**Während TN Übung machen, TN-Liste ausfüllen**

Notizen:

-

---

## 3. Frage 1: Was ist KI?

### 3a. Präsentation

[→ Webseite](../workshop/frage-1-was-ist-ki/index.qmd) |
[→ Folien](../slides/frage-1-was-ist-ki/index.qmd)

> Nach Klick auf „Präsentation": Taste `s` für Speaker View, `f` für Vollbild.

*→ Wie funktioniert KI?*

#### [01 - Frage 1: Was ist KI?](../slides/frage-1-was-ist-ki/index.qmd) — *Wie funktionieren Sprachmodelle wirklich?*

- KI heute meist «Sprachmodelle» / Large Language Models (LLMs)
- bzw. Zusammenspiel von «generativen» Modellen

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

#### [02 - Was sind Chatbots?](../slides/frage-1-was-ist-ki/index.qmd#p1-f02-was-sind-chatbots)

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

#### [03 - Was sind LLMs?](../slides/frage-1-was-ist-ki/index.qmd#p1-f03-was-sind-llms)

- Side-Note: Warum ist Autocomplete auf meinem Smartphone so schlecht? --> Weil es 5 Jahre alt ist.

*→ Im hintergrund werden Wahrscheinlichkeiten berechnet*

#### [04 - Die Kernidee](../slides/frage-1-was-ist-ki/index.qmd#p1-f04-kernidee)

- [Lies: "Wahrscheinlichkeit nächstes Wort *gegeben* Kontext und Modell]

*→ Wenn wir also z.B. einen Satzanfang vorgeben...*

#### [05 - Was bedeutet das konkret?](../slides/frage-1-was-ist-ki/index.qmd#p1-f05-was-bedeutet-das-konkret)

-

*→ Aufgrund der Wahrscheinlichkeit ist jede tatsächliche Generierung anders*

#### [06 - Token-Vorhersage und Temperatur](../slides/frage-1-was-ist-ki/index.qmd#p1-f06-token-vorhersage-temperatur)

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

#### [07 - Vorhersage in Aktion](../slides/frage-1-was-ist-ki/index.qmd#p1-f07-vorhersage-in-aktion)

- [Teilnehmende selbst überlegen lassen]
- Bei KI: "Attention"-Mechanismus
- gewichtete Bezüge über Distanzen herstellen
- "Distanz" --> Kontextlänge (2026 bis zu ~10 Mio Tokens)
- Highlight zeigt Semantik. Tatsächlich: Unterschiedliche Blickwinkel (Multi-headed attention), wie z.B. Syntax

<!-- NOTE: Kann ggf. gekürzt werden -->

*→*

#### [08 - Wie generieren LLMs ganze Sequenzen?](../slides/frage-1-was-ist-ki/index.qmd#p1-f08-sequenzen-generieren)

- Generierung ist "autoregressiv"
   - nächstes Wort = alles bisherige neu in Kontext
- auch bei vermeintlich "geplanten" Texten wie Gedichten

<!-- NOTE: Kann ggf. gekürzt werden -->

*→ Woher können LLMs dies?*

#### [09 - Wie werden LLMs trainiert?](../slides/frage-1-was-ist-ki/index.qmd#p1-f09-training)

- Links: Pretraining
   - Textproduktion und Inhalte
   - Datenbasis: grosse Mengen unkuratierter Text (von Wissenschaft bis Internetforen)
   - Kann so nicht viel:
      - z.B. Antwort auf Frage eher ähnliche Frage
      - weiss nicht, welche Antwort gut/schlecht
- Mitte: Supervised Fine-Tuning (SFT)
   - Anleitungen befolgen, sinnvoll strukturieren
   - Datenbasis: "qualitativ hochwertige" Konversationen (z.B. Prompt-Antwort paare)
- Rechts: Reinforcement Learning from Human Feedback (RLHF), Direct Preference Optimization (DPO), und andere...
   - besser/schlechter, menschliche Präferenzen
      - z.B. nicht beleidigen, Sycophancy
   - Datenbasis: Ranking von Antworten durch Menschen

<!-- TODO: Hintergrundwissen "Sycophancy" hinzufügen -->

*→*

#### [10 - Chain-of-Thought "Denken"](../slides/frage-1-was-ist-ki/index.qmd#p1-f10-chain-of-thought)

- Analogie: Mensch bei schwieriger (Rechen-)aufgabe
   - nicht sofort Lösung,
   - sondern Notizen, Planung, (schriftl. Rechenweg)

*→ Ein Beispiel..*

#### [11 - Beispiel: 9.11 vs 9.8](../slides/frage-1-was-ist-ki/index.qmd#p1-f11-beispiel-9-11)

- 9.8 ist grösser, da 9.80
<!-- TODO: ggf. Übung LM Studio mit/ohne Thinking zeigen, z.b. mit 9.11 vs. 9.8 aufgabe.-->

*→*

#### [12 - "Think Deeper" in Copilot](../slides/frage-1-was-ist-ki/index.qmd#p1-f12-think-deeper)

-

*→*

#### [13 - Warum funktioniert "Denken"?](../slides/frage-1-was-ist-ki/index.qmd#p1-f13-warum-denken)

-

*→*

#### [14 - Takeaway](../slides/frage-1-was-ist-ki/index.qmd#p1-f14-takeaway)

-

#### [Reflexion (auf Präsentationsseite ganz nach unten scrollen)](../workshop/frage-1-was-ist-ki/index.qmd#kurze-reflexion-3-min)

Notizen:

-

---

## 4. Frage 2: Wofür kann KI verwendet werden?

### 4a. Übung: Copilot Onboarding

[→ Copilot Einstieg](../exercises/copilot-einstieg/index.qmd)

- erste Übung: Demo; zweite stark geleitet, dritte selbstständig (folgt didakt. Scaffolding/Fading-Prinzip)
- jeweils Timer durch Klick starten
- Hinweis (Vorgriff auf später): Eure Eingaben unterliegen den Datenschutzvereinbarungen zwischen BFH und Microsoft
   - schweizer Server
   - kein Modelltraining
   - dürfen es nutzen, aber nicht mit vertraulichen Daten

#### [Demonstration (5 min)](../exercises/copilot-einstieg/index.qmd#demonstration)

- auch Edit-Funktion demonstrieren
- [Hinweis: Copilot mach bei Edit im Frontend keinen neuen Konversationszweig auf, sondern führt die Konversation linear fort. Evtl. nach dem "editierten" Prompt geführte dialoge bleiben im Frontend in der Konversation. Im hintergrund wird aber die Konversation aufgesplittet und nur dialoge vor dem "edit" bleiben im Kontext.]

#### [Gemeinsam ausprobieren (5 min)](../exercises/copilot-einstieg/index.qmd#gemeinsam)

-

#### [Selbstständig erkunden (8 min)](../exercises/copilot-einstieg/index.qmd#selbststaendig)

-

#### [Kurzer Austausch (3 min)](../exercises/copilot-einstieg/index.qmd#austausch)

-


Spätestens hier: PAUSE! 

#### [Prompting-Grundlagen](../exercises/copilot-einstieg/index.qmd#teil-5-prompting-grundlagen)

-

<!-- TODO: ggf. Reihenfolge anpassen! -->

#### [Reflektion](../exercises/copilot-einstieg/index.qmd#reflektion)

-

Referenz: [Prompting für Einsteiger](../resources/prompting-basics/index.qmd)

### 4b. Präsentation

[→ Webseite](../workshop/frage-2-wozu-kann-ki/index.qmd) |
[→ Folien](../slides/frage-2-wozu-kann-ki/index.qmd)

#### [01 - Frage 2: Wofür kann KI verwendet werden?](../slides/frage-2-wozu-kann-ki/index.qmd) — *Möglichkeiten, Grenzen und was an der BFH gilt*

-

*→ Sprachmodelle noch die Grundlage, aber*

#### [02 - Mehr als Textgenerierung](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f02-mehr-als-textgenerierung)

- noch zur Hälfte Teil 1.
- Wie schon erwähnt: häufig "Agenten", bzw. "Multi-Agent-Frameworks"
   - spezialisierte Sprachmodelle, die Werkzeuge benutzen und miteinander kollaborieren können
*→ Was also kann moderne KI? (Nicht unbedingt "was sollte"!)*

#### [03 - Fragen beantworten](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f03-fragen-beantworten)

-

*→*

#### [04 - Bilder analysieren](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f04-bilder-analysieren)

- Sogenannte Vision Language Models (VLMs)

*→*

#### [05 - Dokumente zusammenfassen](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f05-dokumente-zusammenfassen)

-

*→*

#### [06 - Output strukturieren](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f06-output-strukturieren)

- auch word, ppt erstellen

*→*

#### [07 - Websuche](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f07-websuche)

- Aktuelle Chatbots finden zumeist automatisch heraus, was von ihnen verlangt wird

*→*

#### [08 - Datenanalyse](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f08-datenanalyse)

-

*→ Darüber hinaus, viele spezialisierte Anwendungen*

#### [09 - Custom GPTs](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f09-custom-gpts)

- Selbst (oder durch andere Nutzende) erstellte Agenten
- Copilot: Agenten
- Wer mehr erfahren will: KI in der Lehre: KI-Tools bauen.

*→ Wie ihr vermutlich gehört habt, ist das ganze nicht problemfrei*

#### [10 - Aber: Grenzen und Gefahren](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f10-grenzen-gefahren)

- Urheberrecht:
   - Wurde auf "dem Internet" trainiert
   - war für wissenschaftliche Zwecke legal
   - jetzt aber kommerzielle Vermarktung
- Bias
   - lernt so, wie im Internet repräsentiert
   - moderne tools haben "anti-bias-training"
<!-- TODO: Demo tool ohne anti-bias-training in LM Studio zeigen -->
- Energieverbrauch 
   - Training extrem aufwendig, aber Gesamtimpact der Generierung inzwischen höher (wg. viel Nutzung)
   - Hauptrechenleistung remote, nicht auf persönlichen Devices.
   - KI-App nicht gleich Wetter-App
      - Wetter-App: Modell einmal berechnet, Nutzende rufen aus Datenbank ab. 
      - KI-App: Individuelle Berechnungen pro Nutzeranfrage. "Etwa so, als würde man die Wettermodelle mit jedem Nutzeraufruf neu rechnen."
   - Relation zu anderen Aktivitäten wie Suchmaschinennutzung, Videostreams?
      - CAVEAT: Quellen nicht einheitlich - deshalb im Moment keine Antwort
      <!-- TODO: besser recherchieren! Selbst Elicit-Suche war nicht sehr hilfreich. Evtl. umkämpfte Meinungshohheit? -->

*→*

#### [11 - Keine Wissensdatenbank](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f11-keine-wissensdatenbank)

- LLMs können per Design nicht konzeptionell denken 
- auch wenn sie z.T. erstaunlich gute Ergebnisse in konzeptionellen Tasks liefern

*→*

#### [12 - KI an der BFH](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f12-ki-an-der-bfh)

- Die Policy gilt für alle Bereiche: Lehre, Forschung, Hochschulbetrieb.

*→*

#### [13 - Deine Verantwortung als Lehrperson](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f13-verantwortung-lehrperson)

- Wer hilft?
   - CISO (Datenschautzbeauftragte)
   - Fachstelle Datenschutz
   - Virtuelle Akademie

*→*

#### [14 - Rechtliche Aspekte](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f14-rechtliche-aspekte)

-

*→ Was bedeutet das für die Praxis?*

#### [15 - Was darf in den Chatbot?](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f15-was-darf-in-chatbot)

- Unterrichtsskripte und Bücher: 
   - eigenes Thema, derzeit keine klare Antwort
   <!-- TODO: rechtlich abklären -->
   - z.B. dieser Kurs (CC-BY-4.0) wäre in BFH-Copilot okay.
   - in anderer KI evtl. problematisch --> Verwendung zum Training verletzt evtl. Attribuierung?
   - Lehrbuchausschnitte dürfen z.B. nicht auf Dropbox
*→*

#### [16 - Freigegebene Tools](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f16-freigegebene-tools)

-

*→*

#### [17 - Datenschutz: Copilot](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f17-datenschutz-copilot)

-

*→*

#### [18 - Takeaway](../slides/frage-2-wozu-kann-ki/index.qmd#p2-f18-takeaway)

-

### 4c. Übung: Fakten-Check

[→ Fakten-Check](../exercises/fakten-check/index.qmd)

#### [Das Problem verstehen (3 min)](../exercises/fakten-check/index.qmd#problem)

- erstens: TN lesen "Das Problem verstehen" (Timer starten)
- zweitens: Kursleitung demonstriert (vorbereiten!)
   - Prüffragen & Bewertungskategorien
- drittens: TN probieren stark geleitet
   - gemeinsame Diskussion (timen)
   <!-- TODO: Timer ist falsch (5 min für 8 min Inhalt) -->
- viertens: TN probieren frei
- fünftens: wieder gemeinsame Diskussion & Debrief
- sechstens: Reflektion

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

#### [01 - Frage 3: Wofür sollte ich KI verwenden?](../slides/frage-3-wozu-soll-ich/index.qmd) — *Offloading vs. Outsourcing: Wann ist KI-Nutzung sinnvoll?*

- Verweis auf Kurs: KI in der Lehre: Lernen mit KI gestalten
- dort detaillierter lernpsychologische Grundlagen & Konsequenzen

*→*

#### [02 - Die Konzepte](../slides/frage-3-wozu-soll-ich/index.qmd#p3-f02-konzepte)

- Nuancen bei Beispielen: Kommt auf Art der Verwendung an.
<!-- TODO: Info Offloading vs. Outsourcing einfügen -->

*→*

#### [03 - Die zwei Fragen](../slides/frage-3-wozu-soll-ich/index.qmd#p3-f03-zwei-fragen)

-

*→*

#### [04 - Das Produktivitäts-Lern-Paradox](../slides/frage-3-wozu-soll-ich/index.qmd#p3-f04-produktivitaets-lern-paradox)

-

*→*

#### [05 - Für Lehrende vs. Studierende](../slides/frage-3-wozu-soll-ich/index.qmd#p3-f05-lehrende-vs-studierende)

-

*→*

#### [06 - Takeaway](../slides/frage-3-wozu-soll-ich/index.qmd#p3-f06-takeaway)

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

**Evaluationslink verfügbar machen **(als QR-Code funktioniert nicht gut)

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
