---
bibliography: "metadaten.json"
link-citations: true
---

# 2 Inhaltliche Grundlagen: Was sind Metadaten und Standards?

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>🏅</td>
<td><strong>Lernziele des Kapitels</strong></td>
</tr>
<tr class="even">
<td></td>
<td><p>Sie kennen …</p>
<ul>
<li><p>… Grundlagen und Funktionen von Metadaten</p></li>
<li><p>… Charakteristiken von Metadatenstandards</p></li>
<li><p>… Vorteile von offenen Standards im öffentlichen Raum</p></li>
</ul></td>
</tr>
</tbody>
</table>

## 2.1 Was sind Metadaten?

Metadaten sind strukturierte Informationen über andere Daten in einem
beliebigen Format [@bacaimpdi1998, S.1], [@caplanmfal2003, S.1-3], [@gillilandss2016], die sich durch die Möglichkeit zur maschinellen Verarbeitung,
einschließlich der kontextuellen Interpretierbarkeit, auszeichnen
[@caplanmfal2003, S. 2].
Neben der Nützlichkeit für Menschen ist ein entscheidendes Kriterium von Metadaten dabei gemäß dem World Wide Web
Consortium (W3C) die Verständlichkeit von Metadaten für Maschinen, die
durch eine wohldefinierte Struktur und Semantik erreicht werden kann
[@berners-leewam1997], [@swickmrd2001].
So gewährleisten strukturierte
Metadaten die Möglichkeit zur unmittelbaren maschinellen Verarbeitung,
die keine zusätzlichen semantischen Analyseverfahren (z. B. Text Mining)
benötigt [@barkermlmoescd2010].
Metadaten müssen dafür mit einem dokumentierten Schema eines Metadatenstandards übereinstimmen [@caplanmfal2003, S. 3], welches sodann als übergeordnetes Regelwerk fungiert, um
Metadaten mit einem gemeinsamen Verständnis nutzbar zu machen [@arnoldpmieapuefbvf2003, S. 379]. Grundsätzlich lassen sich folgende Begrifflichkeiten im Kontext von Metadatenschemata unterscheiden:

- Metadatenfelder[^1] (definierte Eigenschaften oder Charakteristiken des
  Objekts)
- Werte (inhaltliche Ausprägung eines Metadatenfeldes)
- Wertebereich (kontrolliertes Vokabular)

Metadaten können daher auch als informative Aussagen [^2] über Ressourcen
verstanden werden (Pomerantz, 2015, S. 26). Formale Repräsentationen
solcher Aussagen werden in den technischen Grundlagen erläutert.
Beispiel einer Aussage über ein konkretes Lernmaterial als Ressource als
Tripel (Subjekt, Prädikat, Objekt):

Ressource (Subjekt) Metadatenfeld (Prädikat) Wert (Objekt)  
{Erklärvideo} {erstellt von} {Person}

**Metadatensatz**

Ein Metadatensatz ist die Bündelung einzelner Metadaten für das
betreffende Objekt. Distinkte, konzeptionell unterscheidbare Objekte
sollten dabei jeweils einen eigenen, separaten Metadatensatz besitzen
(1:1-Prinzip) [@pomerantzm2015, S. 55] [@stevenopccp2010], während Relationen
mögliche Verwandtschaften zwischen Objekten kennzeichnen können. Das
Prinzip wird in der Praxis aus verschiedenen Gründen nicht immer erfüllt
[@stevenopccp2010].
Einzelnen Objekten können dabei auch mehrere Metadatensätze zugewiesen werden, zum Beispiel basierend auf verschiedenen Metadatenschemata. Weiterhin werden im Rahmen einer KI- oder crowd-basierten Metadatenannotierung verschiedene Verfahren mit multiplen Metadatensätzen zu Objekten erprobt.
Die Herausforderung für Dienste, die Metadatensätze über verschiedene Plattformen hinweg
aggregieren, besteht darin, dass durch die Distribution von Objekten in
verschiedene Systeme mehrere Metadatensätze zu den Objekten vorliegen
können, die untereinander inkonsistent sein können. Dies kann zu einer
unerwünschten Mehrdeutigkeit der Metadaten führen (vgl. [Kapitel zur
Datenqualität](#welche-qualitätskriterien-sind-für-metadaten-relevant)).

**Metadatenschema**

Ein Metadatenschema definiert sowohl die Elemente von Objekten als auch
deren Zusammenhänge. Es liefert damit einen prototypischen Rahmen, wie
und welche Aussagen über Objekte formuliert werden können [@pomerantzm2015, S. 28].
Dabei beschränkt ein kontrolliertes Vokabular als
Wertebereich die Werte, die in den jeweiligen Aussagen über ein Objekt
verwendet werden können, und standardisiert somit die inhaltlichen
Aspekte der Aussagen. Anforderungen, die in einem Metadatenschema
definiert werden können:

- Verpflichtung (z. B. fakultative oder obligatorische Metadatenfelder)
- Wiederholbarkeit (z. B. mehrfache Verwendung von Metadatenfeldern)
- Formatvorgabe und Kodierungsschema (z. B. Syntax von Ort-/Datumsangaben)
- Kontrolliertes Vokabular (z. B. vorgegebene Werte für Metadatenfelder)

Durch die einheitliche Verwendung von Metadatenschemata können Metadaten
aus unterschiedlichen Quellen aggregiert und indexiert werden, ohne dass
komplizierte Mappings zwischen Wertebereichen und Metadatenfeldern
erforderlich sind [@barkermlmoescd2010] [@wuacrdsso2023], die im
[ETL-Prozess](#wie-werden-metadaten-ausgetauscht---der-etl-prozess)
andernfalls häufig zu einem Informationsverlust führen würden. Damit ein
Metadatenschema Anforderungen an Interoperabilität erfüllen kann, sind
verschiedene Eigenschaften wünschenswert: Erweiterbarkeit, Flexibilität,
Modularität, Ausführlichkeit, Hinlänglichkeit, Einfachheit sowie
Unterstützung des Datenaustauschs, Datenabrufs, der Datenarchivierung
und Datenveröffentlichung [@wuacrdsso2023]. Metadatenschemata sind
häufig zunächst recht generisch gehalten, um eine breite Anwendbarkeit
zu erzielen. Konkretisierungen und Erweiterungen erfolgen dann in
Metadatenprofilen.

Beispiele für Metadatenschemata:

- DublinCore Terms ([DCMI Metadata
  Terms](http://dublincore.org/specifications/dublin-core/dcmi-terms/2020-01-20/))
- [Schema.org](https://schema.org/)
- [OERSchema](https://oerschema.org/docs/)
- [DataCite Metadata
  Schema](https://web.archive.org/web/20231227020750/https://schema.datacite.org/meta/kernel-4.4/doc/DataCite-MetadataKernel_v4.4.pdf)
- [ARIADNE](https://web.archive.org/web/20030203003051/http://ariadne.unil.ch/Metadata/ariadne_metadata_v3final1.htm)

**Metadatenprofile**

Während Metadatenschemata häufig allgemeiner gehalten sind, um eine
breite Verwendbarkeit zu gewährleisten, ermöglichen Metadatenprofile[^3]
anwendungs- oder domänenspezifische Konkretisierungen und Erweiterungen
zu standardisieren oder Schemata miteinander zu kombinieren [@haynesmimrumiu2018, S. 170] [@najjarilorcg2004].
In einem Metadatenprofil werden Metadatenfelder selektiert, syntaktisch und semantisch definiert [@dinieapmfelul2005] sowie Wertebereiche spezifiziert.
Im Vergleich dazu enthalten Metadatenschemata häufig keine Vorgaben für Werte.
Aufgrund des eher allgemeinen Charakters der Metadatenschemata werden Standards daher häufig erst über konkrete Ausprägungen in Metadatenprofilen angewendet [@menzeldmpheor2023].
Welche kontrollierten Vokabulare zu verwenden und wie einzelne Werte daraus zu interpretieren sind, sollte dabei von spezialisierten Communitys gemeinschaftlich festgelegt werden [@robsonpm2001, S. 216].

Beispiele für Metadatenprofile:

- ELIXIER ([Metadatenprofil](https://www.bildungsserver.de/elixier/elixier.pdf),
  [Suchmaschinen-Dienst](https://www.bildungsserver.de/elixier/))
- [Allgemeines Metadatenprofil für Bildungsressourcen](https://w3id.org/kim/amb/latest/) (AMB)

## 2.2 Wozu werden Metadaten genutzt?

Eine ganzheitliche Konzeptualisierung von Metadaten geht über
Beschreibungen hinaus [@bacaimpdi1998]. Metadaten werden seit jeher zu
unterschiedlichen Zwecken verwendet, beispielsweise um Objekte zu
identifizieren, zu beschreiben oder zu dokumentieren, wie und wofür das
Objekt verwendet wird und in welchen Beziehungen es mit anderen Objekten
steht [@bacaimpdi1998] [@rileyumwmwi2017].
Über Metadaten werden somit Inhalt,
Format, Zweck und Struktur der referenzierten Daten erfasst [@al-khalifaemssea2006].
Metadaten tragen dazu bei, die Authentizität und den
Kontext von Inhalten zu prüfen und eine verbesserte Abrufbarkeit der
referenzierten Daten zu gewährleisten [@bacaimpdi1998, S. 2].
Die Zuweisung von Metadaten zu Objekten erleichtert somit die Organisation, Verwaltung
und Auffindbarkeit von Ressourcen [@al-khalifaemssea2006].
Sie helfen bei der effizienten Kategorisierung, Sortierung, Identifikation und
Suche von Daten [@duvalmswww2001, S.591f].
Damit Objekte kontextualisiert und besser nachnutzbar werden, sind detaillierte und umfangreiche
Metadaten nützlich [@ziedornmfoerohfoehetit2013, S. 8].
Metadaten ermöglichen es, insbesondere komplexe Objekte in einer einfacheren und
zugänglicheren Form zu repräsentieren [@stumppesulopb2003, S. 148].
Auf diese Weise kann ein verständlicher Zugang für komplexe Ressourcen angeboten
werden, wie für audiovisuelle Inhalte (z. B. 360° Videos, VR),
Simulationen, 3D-Modelle und vieles mehr.

## 2.3 Was sind Typen von Metadaten?

Obwohl in der Forschung weitere (Sub-)Typen von Metadaten identifiziert
wurden, lassen sich im Wesentlichen drei Typen von Metadaten
unterscheiden: Deskriptive Metadaten, Administrative Metadaten und
Strukturelle Metadaten [@rileyumwmwi2017].

**Deskriptive Metadaten**

Deskriptive Metadaten werden zur Beschreibung oder Identifikation von
Ressourcen genutzt [@bacaimpdi1998, S. 3] und sind für die Dokumentation und
die Nachnutzung durch Dritte hilfreich, da sie inhaltliche Aspekte der
Ressource repräsentieren [@gillilandss2016].
Sie unterstützen die Identifikation und Auffindbarkeit relevanter Ressourcen [@pomerantzm2015] [@rileyumwmwi2017, S. 1] [@ruehlekhmm2012, S. 2], sowie die Darstellung der Ressourcen, beispielsweise als Suchergebnis. Ebenso können Nutzende
anhand deskriptiver Metadaten prüfen, ob die jeweilige Ressource für den
geplanten Einsatzzweck geeignet ist, was eine erwünschte Nachnutzung
begünstigt. Auch Nutzungs- und Interaktionsmetadaten zu digitalen
Objekten können den deskriptiven Metadaten zugeordnet werden. Diese
Metriken bieten wertvolle Indikatoren, die als Evaluation von den
Ressourcenersteller\*innen herangezogen werden und darüber hinaus auch
Nachnutzenden implizite Eindrücke zur Popularität und Qualität von
Ressourcen vermitteln können. Deskriptive Metadaten sind für komplexere
oder multimediale Ressourcentypen unerlässlich, da diese nicht ohne
Weiteres erschlossen werden können (Steiner, 2018). Auf diese Weise
abstrahieren Metadaten systematisch die Komplexität dieser Ressourcen
[@steinermuogb2018]. Durch den Einsatz künstlicher Intelligenz kann die
vereinfachte Erschließung von Metadaten perspektivisch gelingen und
optimiert werden, beispielsweise durch eine automatische Transkription
von audiovisuellen Medien, um deren Inhalte für eine textbasierte Suche
zugänglich zu machen (z. B. mittels
[Whisper](https://openai.com/research/whisper),
[SpeechBrain](https://speechbrain.github.io/)), wie auch im [TIB
AV-Portal](https://av.tib.eu/)
([Blogpost)](https://web.archive.org/web/20240228155936/https://blog.tib.eu/2023/12/19/the-tib-av-portal-in-2023-ai-based-speech-recognition-high-definition-and-dynamic-frontend/).

Beispiele:

- Bibliografische Angaben (Titel, Autoren, Schlagwörter, …)
- Inhaltliche Angaben (Thema, Sprache(n), …)
- Formale Eigenschaften (Abspieldauer, …)
- Qualität des Objekts (Rezensionen, skalenbasierte Evaluation, …)
- Informationen zu Modalitäten der Nachnutzung (didaktische Hinweise, …)
- Metriken zur Interaktion und Nutzung des Objekts (Zugriffe, Downloads,
  Anzahl der Einbettungen, …), auch als Indikatoren für die Popularität
  von Objekten oder deren Evaluation genutzt

**Administrative Metadaten**

Administrative Metadaten werden zur Organisation und Verwaltung von
Ressourcen verwendet [@bacaimpdi1998, S. 3] [@caplanmfal2003, S. 151] [@gillilandss2016] [@rileyumwmwi2017, S. 1], um sicherzustellen, dass diese auch nachhaltig
verfügbar bleiben und effektiv genutzt werden können. Zu dieser
Kategorie gehören etwa Metadaten über anderweitige Metadaten
(Meta-Metadaten), wie die Kennzeichnung der Metadaten-Provenienz, der
Lizenzierung der Quelldaten, Zeit- und Ortsangaben als Bestandteil des
Lebenszyklus der Ressource, oder auch assoziierte Personen im Kontext
der Erstellung sowie Bereitstellung der Metadaten. Somit ermöglichen
administrative Metadaten eine Kontextualisierung von Ressourcen
[@gillilandss2016] und tragen damit zur Transparenz des
Entstehungsprozesses bei, was das Vertrauen in die Ressourcen stärken
und die Nachnutzung fördern kann. Zu diesem Metadatentyp zählen hier als
Untergruppen auch die technischen Metadaten sowie Metadaten zur
Unterstützung von Prozessen zur Aufbewahrung von Objekten (*preservation
metadata*), die teils auch als eigener Typ differenziert werden [@caplanmfal2003, S. 153-157] [@pomerantzm2015].

Beispiele:

- Provenienz/Herkunft (Data Lineage, Vertrauenswürdigkeit, Nutzbarkeit,
  …)
- Rechte (Zugriffsberechtigung, Urheberrechte, Nutzungsrechte, …)
- Lebenszyklus des Objekts (Data Lifecycle, Entwicklungsstadium, …)
- Entstehungs-, Bearbeitungs- und Verbreitungsgeschichte (Verwendete
  Software, Forks, Derivate, Versionierung, …)
- Rechtliche Dokumentation (Erwerb, Lizenzierung, …)
- Technische Metadaten (Format, Größe, Kodierung, …)
- Qualität der Metadaten (Validität, Reliabilität, …)

**Strukturelle Metadaten**

Strukturelle Metadaten können sowohl Zusammenhänge zwischen
verschiedenen Ressourcen (horizontale Struktur) als auch interne
strukturelle Informationen zur Ressource selbst (vertikale Struktur,
bspw. Kapitelmarken, siehe Beispiel unten) ausdrücken [@gillilandss2016].
Teilweise werden strukturelle Metadaten den administrativen Metadaten
untergeordnet [@pomerantzm2015]. Im Bildungsumfeld sind die
strukturellen Informationen zwischen und innerhalb von Ressourcen jedoch
häufig essenziell und werden daher explizit abgegrenzt. Die Realisierung
von [Linked Data](#_3.2_Was_sind)-Prinzipien erfordert ebenfalls eine
entsprechende Abgrenzung und betrachtet strukturelle Informationen als
bedeutsam.

Beispiele:

- Vertikale Struktur: Abschnitte innerhalb einer Ressource (z. B.
  Kapitel in einem Video oder Buch), Navigation oder Abfolge von
  Teilelementen innerhalb einer Ressource (z. B. geordnete Seiten)
- Horizontale Struktur: Voraussetzungen, Abhängigkeiten und anderweitige
  Zusammenhänge zwischen Ressourcen

**Zusammenhänge zwischen Objekten**

Objekte wie Bildungsressourcen, die durch Metadaten beschrieben werden,
können in assoziativen, hierarchischen oder heterarchischen
Zusammenhängen stehen. Assoziative Relationen zwischen Ressourcen
drücken beispielsweise einen sach- oder chronologischen Zusammenhang
aus. Hierarchische Relationen bilden strukturelle Zusammenhänge (bspw.
“Teil von”-Beziehungen) ab. Heterarchische Beziehungen sind etwa
Netzwerke von nebengeordneten, unter Umständen gleichrangigen, Objekten.

Tabelle: *Beispiele für Zusammenhänge zwischen Objekten*

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 20%" />
<col style="width: 61%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Typ</strong></td>
<td><strong>Ordnung</strong></td>
<td><strong>Exemplarische Verwendungszwecke</strong></td>
</tr>
<tr class="even">
<td rowspan="2">Assoziativ</td>
<td>Vor- / Nachgeordnet</td>
<td>Chronologische Reihenfolge von Objekten (z. B. Lehr-/Lernpfade),
Listenstrukturen (Vorgänger / Nachfolger).</td>
</tr>
<tr class="odd">
<td>Inhaltlich geordnet</td>
<td>Thematische Verwandtschaft von Objekten,<br />
Sammlung von Objekten.</td>
</tr>
<tr class="even">
<td>Hierarchisch</td>
<td>Über- / Untergeordnet</td>
<td>Eltern- / Kindobjekte (z. B. generische und spezifische Konzepte),
Teilobjekte (“Teil von”-Beziehungen), Baumstrukturen.</td>
</tr>
<tr class="odd">
<td>Heterarchisch</td>
<td>Nebengeordnet</td>
<td>Begleitende oder abhängige Objekte, gleichrangige Beziehungen
zwischen Entitäten mit verschiedenen Rollen, Netzwerkstrukturen.</td>
</tr>
</tbody>
</table>


## 2.4 Welche Funktionen und Vorteile haben Metadaten?

Die Erfassung von Metadaten sollte immer im Hinblick auf ein bestimmtes
Nutzungsszenario erfolgen, damit bei der Beschreibung relevante Felder
und Werte berücksichtigt werden können. In Bezug auf Ressourcen erfüllen
Metadaten vielfältige Funktionen [@barkermlmoescd2010] [@gillilandss2016] [@haynesmimrumiu2018, S. 9-13] [@menzeldmpheor2023] [@rileyumwmwi2017, S. 1], darunter:

- Identifikation und Lokalisierung von Ressourcen (*Resource
  Discovery*), unter anderem auch eine kriterienorientierte
  Auffindbarkeit von Ressourcen (Suche, Filter, Sortierung)
- Darstellung qualitativer und relevanter Suchergebnisse
- Zusammenführung vergleichbarer Ressourcen
- Austauschbarkeit von Ressourcen, beispielsweise zwischen Repositorien
- Unterscheidbarkeit verschiedener Ressourcen
- Erschließung komplexer und multimedialer Ressourcentypen
- Integration und Nachnutzung von Daten
- Verwaltung, Dokumentation und Archivierung von Ressourcen
- Transparenz des Entstehungsprozesses
- Prüfung der Eignung von Ressourcen für anvisierte Einsatzzwecke
- Qualitätsindikatoren

Durch eine Schema-konforme Verwendung von Metadaten entsteht ein
weitläufiges Netzwerk an Informationen, das eine wichtige Grundlage zur
Entwicklung und Bereitstellung digitaler Dienste bildet. Diese Dienste
realisieren vielfältige Nutzungsszenarien und können den adressierten
Akteuren einen Mehrwert bieten, indem Metadaten auf verschiedenen
Abstraktionsebenen genutzt und zugänglich gemacht werden. Damit kann ein
funktionales Angebot mit facettenreichen Perspektiven durch und auf
Metadaten bereitgestellt werden.

Metadaten ermöglichen nützliche Dienste, wie:

- Repositorien für Bildungsressourcen und deren Distribution für eine
  effektive Nachnutzung in Lernmanagementsystemen, didaktischen
  Werkzeuge, Materialien usw.
- Spezialisierte (Meta-)Suchmaschinen (Referatorien, Metaportale, …), um
  relevante Bildungsressourcen basierend auf (didaktischen) Metadaten
  auffindbar zu machen
- Automatische Qualitätsprüfung von Bildungsressourcen zur Verbesserung
  der Auffindbarkeit und Zugänglichkeit
- Personalisierte Empfehlungen für die Aus- und Fortbildung
  (bedürfnisorientierte Vorschlagssysteme)
- Adaptive Lehr-/Lernpfade, intelligente Tutoring-Systeme (ITS) und
  Ressourcen, die Metadaten aus pädagogischen Kontexten verwenden, um
  individuelle und personalisierte Lernerfahrungen zu schaffen
- Lernportfolios und Lerndiagnostik, welche didaktische Metadaten aus
  Lernumgebungen verwendet (Learning Analytics)

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>💡</td>
<td><strong>Zusammenfassung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Verschiedene Abstraktionsebenen von Metadaten sind erforderlich,
um Mehrwerte von Metadaten für verschiedene Akteure zu
schaffen.</p></li>
<li><p>Es gibt unterschiedliche Kategorien von Metadaten, die jeweils
vielfältige Perspektiven in der Nachnutzung besitzen.</p></li>
</ul></td>
</tr>
</tbody>
</table>

## 2.5 Was sind Metadatenstandards? 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>🏅</td>
<td><strong>Lernziele des Kapitels</strong></td>
</tr>
<tr class="even">
<td></td>
<td><p>Sie kennen …</p>
<ul>
<li><p>… unterschiedliche Standards und deren
Unterscheidungsmerkmale</p></li>
<li><p>… verschiedene Arten der Erarbeitung von Standards</p></li>
</ul></td>
</tr>
</tbody>
</table>

Ein Metadatenstandard stellt ein Regelwerk dar, aufgrund dessen ein
gemeinsames Verständnis vom Umgang mit Metadaten gewährleistet werden
kann, beispielsweise für bestimmte Anwendungen oder in bestimmten
Kontexten. Diese Vereinbarungen umfassen einheitliche Regeln zur
syntaktischen und semantischen Interpretation von Daten. Die Entwicklung
eines Standards kann dabei sowohl *top down* als auch *bottom up*
erfolgen und involviert meist die Expertise von Fachkreisen. Ein
Metadatenschema ist eine spezifische anwendungs- oder domänenspezifische
Implementierung eines Metadatenstandards. Standards helfen,
Anforderungen an Produkte und Prozesse sicherzustellen.

<img src="media/image5.png" style="width:4.76932in;height:2.68931in"
alt="Comic: How standards proliferate. Grafik: &quot;Standards&quot; von Randall Munroe, lizenziert unter CC-BY 2.5" />

Grafik: *"[Standards](https://xkcd.com/927/)" von Randall Munroe,
lizenziert unter [CC-BY-NC
2.5](https://creativecommons.org/licenses/by-nc/2.5/)*

**Form und Validierung von Standards**

Die Form von Standards entspricht in der Regel einem formalisierten
Dokument, das die korrekte Implementierung des jeweiligen Standards
beschreibt. Bisweilen werden auch Möglichkeiten zum Testen der korrekten
Implementierung sowie Möglichkeiten zur Akkreditierung durch die
veröffentlichende Institution gegeben.[^4] Pawlowski (2001) stellt
folgende Anforderungen an Standards auf [@pawlowskieevzecl2001, S. 90f]:

- Rekombinierbarkeit
- Rekontextualisierung
- Interoperabilität
- Adaptierbarkeit
- Flexibilität
- Einfachheit
- Wirtschaftlichkeit

**Typen von Standards**

Die genannten Anforderungen werden bei der Erarbeitung von Standards
berücksichtigt. Grundsätzlich lassen sich nach Reichow et al. (2021)
sieben verschiedene Typen von Standards unterscheiden:

- Gesetze und Verordnungen
- Normen
- Spezifikationen
- Gremienstandards
- Industriestandards
- Herstellerstandards
- Leitlinien, Checklisten und Empfehlungen

**Typ: Gesetze und Verordnungen [@reichowsuezudwbbdiri2021]**

Gesetze und Verordnungen schreiben als formale Standards verbindlich
vor, wie ein bestimmter Bereich zu regeln ist. Im Gegensatz zu
Verordnungen durchlaufen Gesetze ein formelles Gesetzgebungsverfahren.
Auf EU-Ebene gibt es zwei Formen von Gesetzen: die EU-Verordnungen und
Richtlinien. Verordnungen sind verbindliche Rechtsakte, die alle
EU-Länder in vollem Umfang umsetzen müssen. Im Gegensatz zu
EU-Verordnungen sind EU-Richtlinien nicht unmittelbar wirksam und
verbindlich, sondern sie müssen durch nationale Rechtsakte umgesetzt
werden, um wirksam zu werden.

Beispiele: [Gesetze des
Bundestags](https://www.gesetze-im-internet.de/aktuell.html) oder
[Verordnungen der
EU](https://eur-lex.europa.eu/DE/legal-content/summary/european-union-regulations.html)

Merkmale:

- staatlich autorisiert
- durchlaufen einen formalisierten Prozess
- breite öffentliche Beteiligung im Prozess
- hohe Verbindlichkeit (de jure oder de facto)

**Typ: Norm [@reichowsuezudwbbdiri2021]**

Eine Norm ist ein öffentlich einsehbares Dokument, welches konsensuelle
Anforderungen an Produkte, Dienstleistungen oder Verfahren festlegt (DIN
EN 45020:2007-03; DIN 820). Normen dienen dabei als Referenz zur
Etablierung eines transparenten und einheitlichen Verständnisses von
Regeln, Leitlinien oder Merkmalen für die Anwendung von allen
beteiligten Partien (CEN/SS F20 Qualitätssicherung, 2007). Normen und
Spezifikationen werden im Rahmen eines institutionellen
Standardisierungsprozesses entwickelt. Den Ausgangspunkt einer Norm
bildet ein sogenannter Normungsantrag, den jede Person stellen kann.
Anschließend wird der Bedarf in der entsprechenden Branche geprüft. Bei
einer positiven Prüfung entsteht die Norm innerhalb eines Ausschusses
mit beteiligten Interessengruppen im Konsensprinzip. Der entstandene
Entwurf wird anschließend der Öffentlichkeit zur Kommentierung vorgelegt
und erneut überarbeitet. In regelmäßigen Zeitabständen wird die Norm
überprüft.

Beispiele: DIN, European Commitee for Standardization (CEN) /
Information Society Standardisation System (ISSS), ISO

Merkmale:

- Normungsinstitutionen sind staatlich autorisiert
- Formalisierter Prozess
- Beteiligung der Öffentlichkeit
- Verbindlichkeit, wenn sich in einem Vertrag auf die Verwendung der
  Norm geeinigt wird

**Typ: Spezifikation [@reichowsuezudwbbdiri2021]**

Eine Spezifikation wird ähnlich einer Norm erstellt, jedoch ist der
Prozess kürzer, erfordert weniger Abstimmung und es ist kein Konsens
zwischen den Beteiligten nötig. Das Ziel ist die schnelle Entwicklung
einer Lösung, um Innovationen auf den Markt zu bringen. Die
Spezifikation kann später als Grundlage für eine Norm dienen.
Gelegentlich wird der Begriff “Spezifikation” auch weniger strikt
verwendet, um so die Ergebnisse nicht-offizieller
Standardisierungsgremien (s.u. “Gremienstandards”) zu bezeichnen
[@strackekrfeueiu2007, S. 2-3].

Merkmale:

- staatlich autorisiert (falls DIN-Spezifikation o.ä.)
- formalisierter Prozess

**Typ: Gremienstandard (1EdTech/IMS, IEEE, W3C) [@reichowsuezudwbbdiri2021]**

Gremienstandards werden in nicht-staatlich autorisierten Institutionen
entwickelt. Diese Gremien etablieren jedoch in der Regel selbst
formalisierte Prozesse, in denen die Entwicklung eines Standards
geregelt wird. Die Mitarbeit in diesen Gremien ist unterschiedlich
geregelt. Einige verlangen Mitgliedsbeiträge, um bei der Entwicklung
mitwirken zu dürfen (z. B. 1EdTech, IEEE), andere stehen allen
Interessierten offen (z. B. DCMI, W3C). Standards des IEEE müssen
bisweilen auch käuflich erworben werden, während andere Standards nach
der Veröffentlichung frei zugänglich sind (1EdTech, W3C).
Gremienstandards können als Grundlage einer späteren Norm dienen, wie
die Web Content Accessibility Guidelines (WCAG) des W3C. Während Akteure
auf übergeordneten Ebenen möglichst allgemeingültige Lösungen
realisieren und somit generische Rahmenbedingungen und -strukturen
empfehlen, arbeiten Einrichtungen und Projekte darauf aufbauend
domänenspezifische Applikationsprofile aus, um spezifischere Bedürfnisse
oder Anforderungen an Softwarelösungen zu realisieren.

Beispiele: W3C, 1EdTech, IEEE, DCMI, DINI-AG-KIM

Merkmale:

- formalisierter Prozess
- Beteiligung der Öffentlichkeit

**Typ: Industriestandard [@reichowsuezudwbbdiri2021]**

Industriestandards sind Standards, die durch die Einigung mehrerer
Hersteller entstehen. Diese Standards können später in Gremien oder auch
bei Normungsinstituten als Grundlage für weitere
Standardisierungsbestrebungen dienen.

Beispiele für Industriestandards: PDF, DVD

Merkmale:

- Verbindlichkeit (bei Einigung mehrerer Hersteller)

**Typ: Herstellerstandard [@reichowsuezudwbbdiri2021]**

Im Gegensatz zu Industriestandards werden Herstellerstandards nur durch
einen Hersteller gesetzt. Sie erhalten Ihre Geltung durch die Marktmacht
und den Einfluss des Herstellers.

Beispiele: MacOS (Apple) oder Windows (Microsoft) als Betriebssysteme

Merkmale:

- Verbindlichkeit bei entsprechender Marktstellung eines Unternehmens

**Typ: Leitlinien, Checklisten und Empfehlungen [@reichowsuezudwbbdiri2021]**

Wenn keine Standards vorliegen, werden bisweilen Leitlinien, Checklisten
oder Empfehlungen verwendet. Diese können als Grundlage für eine spätere
Standardisierung dienen und bieten eine erste Orientierungsgrundlage.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>💡</td>
<td><strong>Zusammenfassung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Es lassen sich sieben verschiedene Arten von Standards
unterscheiden:</p>
<ul>
<li><p>Gesetze und Verordnungen</p></li>
<li><p>Normen</p></li>
<li><p>Spezifikationen</p></li>
<li><p>Gremienstandards</p></li>
<li><p>Industriestandards</p></li>
<li><p>Herstellerstandards</p></li>
<li><p>Leitlinien, Checklisten und Empfehlungen</p></li>
</ul></li>
<li><p>Die Unterscheidung liegt hauptsächlich in der Art der Erarbeitung
sowie der Autorität, die sie durch die erarbeitenden Gremien und
Institute gewinnen.</p></li>
</ul></td>
</tr>
</tbody>
</table>

## 2.6 Wozu werden Metadatenstandards benötigt?

Die Erfassung und Verbreitung von Ressourcen, beispielsweise über
webbasierte Repositorien, erfordert die Entwicklung und Etablierung von
Metadatenstandards, insbesondere im erwünschten Austausch von Metadaten
über Grenzen einzelner Plattformen hinweg. Die bislang unzureichende
Verwendung einheitlicher Schemata hemmt die Integration von Ressourcen
in übergeordnete systemische Strukturen, wie Referatorien oder
Metaportale [@dietzeierwdsca2013] [@steinermuogb2018], die eine
Orientierungsfunktion innehaben.

Metadatenstandards ermöglichen den Austausch von Daten, um eine
zukünftige Nutzbarkeit von Ressourcen zu gewährleisten [@haynesmimrumiu2018, S. 49]. Ohne solche Standards wäre die Suche nach Ressourcen nur sehr eingeschränkt möglich, sodass beispielsweise Lehr-/Lernangebote kaum auffindbar und schwer zugänglich blieben [@wannemacherobaoi2023]. Die
Bereitstellung zentraler Sucheinstiege [@arndtdkpfpcql2023, S. 13]
mittels geeigneter infrastruktureller Maßnahmen [@deutscherbildungsservermaubob2016] [@heinenrichardfrsoie2020] verbessert die bedarfsoptimierte Auffindbarkeit.

Besonders in verteilten Systemen können Metadatenstandards dazu
beitragen, die Vielzahl der recht heterogen repräsentierten Inhalte zu
harmonisieren[^5]. Die Vernetzung von Portalen mittels Metadatenstandards
und kontrollierten Vokabularen stellt daher weiterhin eine zentrale
Herausforderung dar [@dietzeierwdsca2013], [@wannemacherobaoi2023].
Insbesondere empfiehlt es sich, bestehende Vokabulare wiederzuverwenden,
um so eine Interoperabilität[^6] der Daten zu gewährleisten [@heathldewgds2011].

Erst standardisierte Metadatenstrukturen ermöglichen eine zuverlässige
Verarbeitung und Wiederverwendung von Daten [@heathldewgds2011].
Ein wesentlicher Nutzen dokumentierter Metadatenstandards ist die
Möglichkeit, Konventionen und Intentionen an Nachnutzende zu
kommunizieren, um die Konsistenz von Metadaten zu erhöhen [@haynesmimrumiu2018, S 49f].

**Gründe und Ziele für die Nutzung und Entwicklung von
Metadatenstandards**

Die Gründe für den Einsatz von Standards beziehen sich auf ihre
kooperative und entlastende Wirkung  (Genschel, 1995 in [@reichowsuezudwbbdiri2021]). Elementare Bedürfnisse von Nutzenden, Merkmale von Objekten im Vorhinein allgemein zu definieren sowie Objekte in ihrem Lebenszyklus auszutauschen, führen zur Bildung von Standards. Eine Notwendigkeit zur Entwicklung von Standards ergibt sich zudem aus dem Wunsch, die
wachsenden Datenbestände zu systematisieren sowie technologische Innovationen für künftige Nutzungsszenarien zu realisieren. Daher steht bei der Entwicklung eines Metadatenstandards vor allem auch die spätere Nachnutzung im Fokus.
Insbesondere sind dabei fünf Faktoren für eine weiträumige Etablierung und perspektivische Adaption eines Standards entscheidend [@rogersdi1983]:

1)  Relativer Vorteil: Ein Standard sollte einen Vorteil gegenüber
    bisherigen Lösungen bieten.
2)  Kompatibilität: Ein Standard sollte als konsistente Entwicklung auf
    bisherigen Lösungen aufbauen und eine (Teil-)Kompatibilität
    herstellen.
3)  Komplexität: Ein Standard sollte leicht verständlich und handhabbar
    sein, die Komplexität sollte möglichst gering sein.
4)  Testbarkeit: Ein Standard sollte für die Praxis zuvor erprobt werden
    können.
5)  Wahrnehmbarkeit: Die Auswirkungen der Verwendung eines Standards
    sollten ersichtlich sein.

Die Standardisierung selbst kann dabei auf drei Arten erfolgen:

1.  faktisch
2.  institutionell
3.  legislativ [@genschelsiiwis1995, S. 32]

Der Einsatz von Standards zielt darauf ab, die Interoperabilität zu
verbessern. Die definierten Regeln eines Metadatenstandards erleichtern
den Umgang mit Metadaten in verschiedenen Bereichen, wie bei der
Erfassung und dem plattformübergreifenden Austausch. Die dadurch
gewonnene Interoperabilität ermöglicht eine nahtlose Nutzungserfahrung.

Verbindlichkeiten, die durch Standards resultieren, schaffen
verlässliche Erwartungen hinsichtlich der Datenqualität und erhöhen
somit das Vertrauen in die Güte der Informationen, insbesondere durch
die Möglichkeit der Validierung, die durch ein Schema erleichtert wird.
Solche Metadatenschemata erlauben die Implementierung von Regeln und
Standards zur automatisierten Überprüfung der Validität.

Bei Institutionen und Projekten, die öffentlich finanziert sind, kann
noch ein weiterer Aspekt hinzutreten: Um der Forderung “[Public Money,
Public Code](https://publiccode.eu/de/)” der gleichnamigen Kampagne
gerecht zu werden, empfiehlt es sich, dass in öffentlich finanzierten
Projekten, soweit möglich, etablierte und offene Standards verwendet
werden. Dies ermöglicht eine Nachnutzung der verwendeten
Infrastruktur(-komponenten), Daten und Schnittstellen sowie eine
nachhaltige Anschlussfähigkeit über die finanzierte Projektlaufzeit
hinaus [@fsfepmpc2024], wie Prototypen in der Vergangenheit bereits zeigen
konnten [@arndtdkpfpcql2023] [@oellersavb2023].

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>💡</td>
<td><strong>Zusammenfassung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Metadatenstandards fördern die Qualität, Konsistenz und
Interoperabilität von Daten und verbessern somit deren
Nachnutzbarkeit</p></li>
<li><p>Bei öffentlich-finanzierten Projekten sollte der Fokus auf
Nachnutzbarkeit besonders hoch sein, damit die Daten nach Projektende
weiter genutzt werden können</p></li>
</ul></td>
</tr>
</tbody>
</table>

## 2.7 Welche Qualitätskriterien sind für Metadaten relevant?

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>❓</td>
<td><strong>Fragestellung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Was wird unter Datenqualität verstanden?</p></li>
<li><p>Wie kann eine Wiederverwendbarkeit von Daten gewährleistet
werden?</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Limitierte Verfügbarkeit von Daten über Inhalte**

Die Anzahl und Qualität von Suchergebnissen klassischer Suchmaschinen
ist durch die mangelnde Verfügbarkeit von Daten über die dort gelisteten
Inhalte begrenzt. Die Auswahl und Reihenfolge der gefundenen Ressourcen
werden durch die Mechanismen der Suchmaschinen beeinflusst [@cooperdmitslrbcpd2020, S. 363], die für die Nutzenden oft nicht transparent sind.
Dazu zählt unter anderem die konkrete Funktionsweise der Algorithmen zur
Bewertung der einzelnen Metadaten der digitalen Ressourcen, die zu der
präsentierten Rangfolge führen. Auch im Kontext von
Social-Media-Plattformen wird diese Diskussion geführt, da Nutzer\*innen
keinen Einblick in Algorithmen haben, die ihren Medienfeed bestimmen und
sie daher häufig nicht wissen, aus welchen Gründen einige Inhalte
auftauchen oder gar nicht erst präsentiert werden. Durch diese Praktiken
können unausgewogene
[Filterblasen](https://web.archive.org/web/20231130201221/https://www.lmz-bw.de/medienbildung/themen-von-f-bis-z/hatespeech-und-fake-news/fake-news/filterblasen-wenn-man-nur-das-gezeigt-bekommt-was-man-eh-schon-kennt)
entstehen. Diese Diskussion lässt sich auf Bildungssuchmaschinen
übertragen. Obwohl Vorschlagssysteme vorteilhaft sind, sollte die
Entstehung von Filterblasen vermieden werden. Die Funktionsweise von
klassischen Suchmaschinen hat somit indirekt einen Einfluss auf die
Qualität der Ausgestaltung von Lehrplänen (Neutralität, Balance,
Integrität) [@cooperdmitslrbcpd2020], da Einflüsse auf die Rangfolge der
Suchergebnisse intransparent bleiben. Suchmaschinen mit einem
generischen Ansatz erschweren zudem die gezielte Suche nach
verschiedenen Aspekten von Lernressourcen und schränken damit die
Auffindbarkeit geeigneter Ressourcen ein, auch weil nur unzureichende
Filtermöglichkeiten angeboten werden.

Präzise Metadaten sind essenziell, um qualitative Dienste
bereitzustellen, darunter Suchmaschinen oder Vorschlagssysteme [@tavakoliqpoerma2020].
Metadatenstandards tragen dazu bei, Anforderungen an eine
adäquate Datenqualität erfüllen zu können. Die notwendigen
Standardisierungen werden dabei häufig von Fachkreisen gemeinschaftlich
erarbeitet, um die Qualität, Konsistenz und Interoperabilität zu
gewährleisten [@gillilandss2016].

Die Etablierung eines einheitlichen Metadatenschemas sichert eine
Konsistenz der Daten zwischen verschiedenen Ressourcen und Systemen,
sodass diese kohärent, widerspruchsfrei und plausibel erfassbar sind
[@rohdeduqdgphsiabfwukbtsd2022] [@wangawdqmdc1996].
Auf diese Weise wird ein nahtloser Austausch zwischen Systemen möglich. Die Nutzung von Standards
unterstützt daher zugleich das BSI-Schutzziel zur Wahrung der
Datenintegrität [@bundesamtfuersicherheitinderinformationstechniki2023].

Metadatenschemata tragen durch erleichterte Validierungsmöglichkeiten
darüber hinaus zur Korrektheit der Daten bei. Spezifikationen mit Fokus
auf die Qualität der Metadaten geben somit Auskunft über die erwartbare
Genauigkeit, Zuverlässigkeit und Vollständigkeit konformer
Informationen. Die Einhaltung von Metadatenstandards ist dabei ein
Indikator für die Qualität der Ressourcen [@camillerisarqiroero2014].

In der Regel werden dazu für Metadatenfelder verschiedene Anforderungen
und Einschränkungen definiert, beispielsweise hinsichtlich der erlaubten
Wertebereiche. Eine Vollständigkeit kann durch die Festlegung von
Verbindlichkeiten im Schema erreicht werden (z. B. Pflichtfelder),
während die Konformität zum Schema die Zuverlässigkeit erhöht, indem die
Einhaltung der in einem Standard geforderten Regeln sicherstellt.

In der Praxis können eine Vielzahl von Hürden hinsichtlich der
Datenqualität auftreten. Neben fehlenden und unvollständigen Daten
können auch diejenigen Werte von Metadatenfeldern zu Qualitätsproblemen
führen [@furberdqmst2016, S. 23-30] [@haynesmimrumiu2018, S. 175], die …

- … ungültige Zeichen enthalten (z. B. unerwartete alphanumerische
  Zeichen)
- … das vorgegebene Format nicht erfüllen (z. B. das geforderte
  Datumsformat)
- … trotz einer definierten Verbindlichkeit fehlen (z. B. Pflichtfelder)
- … inkorrekt sind (z. B. ein falscher DOI)
- … als bedeutungslos hinsichtlich des Feldes zu betrachten sind (z. B.
  Platzhalter)
- … als veraltet gelten
- … über die intendierten Angaben des Feldes hinausweisen (z. B. weitere
  Informationen enthalten, die jedoch zu anderen Metadatenfeldern
  gehören)
- … außerhalb des zulässigen Wertebereiches liegen (z. B. Vokabulare)
- … unpräzise sind (z. B. unerwartete Abkürzungen)
- … eine gewünschte Eindeutigkeit verletzen (z. B. falls der identische
  DOI mehrfach für verschiedene Ressourcen verwendet wurde)
- … gegen Kardinalität verstoßen (z. B. falls ein Metadatenfeld mehrere
  Werte enthält, jedoch nur ein Wert erwartet wird)

**Anforderungen an Daten**

Im Allgemeinen lässt sich Datenqualität in drei Arten unterscheiden:

1.  **Syntaktische Datenqualität** (Form bzw. Struktur der Daten, z. B.
    Datenformate) [@furberdqmst2016, S. 51] [@rohdeduqdgphsiabfwukbtsd2022, S. 24-26]

> Für Attributwerte können Beschränkungen für erlaubte Zeichen oder
> spezielle Kodierungsvorgaben festgelegt werden, die erfüllt werden
> müssen, damit eine syntaktische Datenqualität gewährleistet werden
> kann. So können bspw. internationale Schreibweisen vereinheitlicht
> werden:

- Datumsformat gemäß ISO 8601 (JJJJ-MM-TT) (ISO)

- Abkürzung von Sprachen gemäß [RFC
  5646](https://www.rfc-editor.org/rfc/rfc5646) (IETF, IANA)

2.  **Semantische Datenqualität** (Inhalt und die Bedeutung der Daten) [@furberdqmst2016, S. 51] [@rohdeduqdgphsiabfwukbtsd2022, S. 24-26]

> Vollständigkeit, Metadatenfelder können ungültige Werte enthalten.

3.  **Pragmatische Datenqualität** (Eignung für Zwecke / Nutzbarkeit) [@furberdqmst2016, S. 51] [@rohdeduqdgphsiabfwukbtsd2022, S. 24-26]

> Ebenso können Betroffenenrechte, beispielsweise das Recht zur
> Datenübertragbarkeit gemäß Art. 20 EU-DSGVO, durch standardisierte
> Formate, Kodierungen und Regeln zur Interpretation beim Export und
> Import von Metadaten gewahrt werden.

**Welche Vorteile bietet die Nutzung von Qualitätsstandards?**

Standardisierte Metadaten tragen zu einem reibungslosen Austausch von
Informationen zwischen Diensten bei und erhöhen damit die
Wiederverwendbarkeit von Ressourcen durch verschiedene Akteure und
Akteurinnen und in anderen Kontexten. Weitere Vorteile von
Qualitätsstandards im E-Learning-Bereich finden sich unter anderem bei
Stracke (2006) [@strackebqfee2006, S. 12].

**Fünf-Sterne-Modell für die Qualität von Linked Data**

Im [Linked Data](#_3.2_Was_sind)-Bereich gilt das Fünf-Sterne-Modell von
Tim Berners-Lee als Referenz. Das Mehrebenenmodell ist kumulativ
angelegt, sodass ein größerer Qualitätsindex die vorherigen
Eigenschaften kleinerer Indizes als Voraussetzung beinhaltet [@w3cldg2013].
Das Modell bietet eine Orientierung, wie Daten für eine optimale
Kompatibilität zu Linked Data-Prinzipien bereitgestellt werden sollten
(vgl. Tabelle “Qualitätsstufen und Eigenschaften von Linked Data”).

Tabelle: *Qualitätsstufen und Eigenschaften von Linked Data*

<table>
<colgroup>
<col style="width: 19%" />
<col style="width: 80%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Qualitätsindex</td>
<td>Linked (Open) Data-Eigenschaften [@w3cldg2013]</td>
</tr>
<tr class="even">
<td>★ (1)</td>
<td>Die Daten werden in einem beliebigen Format (bspw. PDF, JPEG)
bereitgestellt. Bei Open Data zusätzlich mit einer freien Lizenz
(Rechteeinräumung)</td>
</tr>
<tr class="odd">
<td>★★ (2)</td>
<td>Die Daten werden in einem strukturierten, maschinenlesbaren Format
bereitgestellt (bspw. <a href="http://www.w3.org/TR/xml/">XML</a>, <a
href="https://datatracker.ietf.org/doc/html/rfc8259">JSON</a>).</td>
</tr>
<tr class="even">
<td>★★★ (3)</td>
<td>Die Daten werden in einem dokumentierten, nicht-proprietären Format
bereitgestellt (bspw. <a
href="https://datatracker.ietf.org/doc/html/rfc4180">CSV</a>).</td>
</tr>
<tr class="odd">
<td>★★★★(4)</td>
<td>Die Daten werden strukturiert in einer möglichen Serialisierung des
Resource Description Frameworks (RDF) bereitgestellt (bspw. <a
href="https://www.w3.org/TR/turtle">Turtle</a>, <a
href="http://www.w3.org/TR/rdfa-core/">RDFa</a>, <a
href="https://www.w3.org/TR/rdf-syntax-grammar/">RDF/XML</a>, <a
href="http://www.w3.org/TR/rdf-json/">RDF/JSON</a>, <a
href="https://json-ld.org/">JSON-LD</a>, <a
href="http://www.w3.org/TR/sparql11-overview/">SPARQL</a>).</td>
</tr>
<tr class="even">
<td>★★★★★ (5)</td>
<td>Die Bezeichnungen innerhalb der RDF-Serialisierung stellen Links
(HTTP URIs) dar, unter welchen nützliche Informationen und Kontexte
standardisiert zum Abruf zur Verfügung stehen (<a
href="#_m1x6n2do6gdh">RDF-Star</a>).</td>
</tr>
</tbody>
</table>

**FAIR-Prinzip für die Bereitstellung und den Austausch von Daten**

Das FAIR-Prinzip dient der Verbesserung der Auffindbarkeit,
Zugänglichkeit, Interoperabilität und Wiederverwendbarkeit von
Datenbeständen [@wilkinsonfgpsdms2016] (vgl. auch Tabelle “Indikatoren
des FAIR-Prinzips” unten). In öffentlich geförderten Projekten ist die
Bereitstellung von Daten nach diesem Prinzip häufig eine
Förderbedingung, um die Nachnutzbarkeit in anderen Kontexten zu
gewährleisten. Basierend auf den Indikatoren des FAIR-Prinzips ermittelt
das EU-Tool [Metadata Quality
Assessment](https://web.archive.org/web/20240303101721/https://data.europa.eu/mqa/methodology)
(MQA) eine Bewertung der Metadatenqualität.

Tabelle: *Indikatoren des FAIR-Prinzips* [@wilkinsonfgpsdms2016]

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>FAIR-Prinzip</strong></td>
<td><strong>Beschreibung</strong></td>
<td><strong>Indikatoren</strong></td>
</tr>
<tr class="even">
<td><strong>A</strong>uffindbarkeit (<strong>F</strong>indability)</td>
<td>Leichtigkeit, mit der Daten gefunden werden können</td>
<td>- eindeutige, persistente Identifikation mittels PID<a href="#fn1"
class="footnote-ref" id="fnref1" role="doc-noteref"><sup>1</sup></a> (z.
B. DOI, ISBN, ISSN, ORCID)<br />
- Anreicherung mit standardisierten Metadaten und kontrollierten
Vokabularen</td>
</tr>
<tr class="odd">
<td><strong>Z</strong>ugänglichkeit
(<strong>A</strong>ccessibility)</td>
<td>Datenzugriff erfolgt mit möglichst geringen Hürden</td>
<td>- Verwendung standardisierter, offener Schnittstellen und
Protokolle</td>
</tr>
<tr class="even">
<td><strong>I</strong>nteroperabilität
(<strong>I</strong>nteroperability)</td>
<td>Austausch von Daten mit möglichst geringem Informationsverlust
zwischen verschiedenen Systemen und Strukturen</td>
<td>- Verwendung gemeinsamer Semantik (kontrollierte Vokabulare,
Ontologien)</td>
</tr>
<tr class="odd">
<td><strong>W</strong>iederverwendbarkeit
(<strong>R</strong>eusability)</td>
<td>Möglichkeit der Weiter- / Wiederverwendung von Daten</td>
<td>- Freie Lizenzierung<br />
<br />
- Dokumentation und Kontextualisierung der Daten (Provenienz)</td>
</tr>
</tbody>
</table>
<aside id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Persistent Identifier (PID) dienen der eindeutigen,
persistenten Identifikation von Ressourcen.<a href="#fnref1"
class="footnote-back" role="doc-backlink">↩︎</a></p></li>
</ol>
</aside>

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>💡</td>
<td><strong>Zusammenfassung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Drei Arten von Datenqualität können unterschieden werden:</p>
<ul>
<li><p>Syntaktisch</p></li>
<li><p>Semantisch</p></li>
<li><p>Pragmatisch</p></li>
</ul></li>
<li><p>Die Verwendung von Metadatenschemata trägt zur Verbesserung der
Datenqualität bei und erleichtert die Wiederverwendbarkeit der Daten, da
dort die Anforderungen an die Daten genau beschrieben werden.</p></li>
<li><p>Es liegen verschiedene nachnutzbare Qualitätsmetriken vor ( bspw.
Fünf-Sterne-Modell, FAIR).</p></li>
</ul></td>
</tr>
</tbody>
</table>

##  2.8 Wie werden Standards gewartet und entwickelt?

In den vorangegangenen Abschnitten wurde deutlich, dass verschiedene
Arten der Standardisierung und verschiedene Arten von Standards
existieren. Die faktische Standardisierung erfolgt durch die Auswahl
oder Erarbeitung eines Standards durch die Marktteilnehmenden.

Bei der institutionellen Standardisierung organisieren Gremien (z. B.
W3C, 1EdTech, DublinCore, DINI-AG-KIM), Standardisierungsorganisationen
(z.B. CEN/ISSS, ISO) oder national anerkannte Normungsinstitute (z. B.
DIN) die Entwicklung von Standards. Eine legislative Standardisierung
wird durch die Verabschiedung von Gesetzen oder Verordnungen erreicht.
Dabei ist zu beachten, dass die Arten von Standards ineinander übergehen
können. So kann ein Standard zunächst faktisch durch Marktteilnehmende
etabliert werden, an ein institutionelles Gremium übergeben und später
unter Umständen in Form eines Gesetzes verbindlich werden.

**Mitwirkung bei der Standardisierung**

Je nach Art der Standardisierung und des daraus resultierenden
Standardtyps ist die Mitwirkung an der Entwicklung eines Standards in
unterschiedlichem Umfang möglich. Die erfolgversprechendsten
Beteiligungsmöglichkeiten für Institutionen, Projekte und Personen im
öffentlich-rechtlichen Raum liegen im Bereich der institutionell
entwickelten Standards, insbesondere in den Gremienstandards. Im
Gegensatz zu legislativen Standards, die von politischen Organen
erstellt und umgesetzt werden, oder faktischen Standards, die oft
zunächst in geschlossenen Kreisen erarbeitet werden, bieten
Gremienstandards eine höhere Transparenz, größere Nachhaltigkeit und
eine niederschwellige Möglichkeit zur Mitarbeit.

[1EdTech](https://www.1edtech.org/) (ehemals IMS Global) bietet die
entwickelten Standards öffentlich und kostenlos an, die Mitwirkung ist
jedoch nur für Mitglieder möglich, die Jahresbeiträge zahlen müssen, was
für zeitlich begrenzte Projekte oft nicht finanzierbar ist. Anders
stellt sich die Situation in Gremien wie dem [W3C](https://www.w3.org/),
der [DCMI](https://dublincore.org/), dem Projekt [Common Education Data
Standards](https://ceds.ed.gov/) (CEDS) oder der [OER-Metadatengruppe
der
DINI-AG-KIM](https://wiki.dnb.de/display/DINIAGKIM/OER-Metadatengruppe)
dar. Diese offenen Gremien ermöglichen die Mitarbeit und
Beteiligungsmöglichkeiten ohne Mitgliedsbeiträge. Dennoch haben auch
ihre veröffentlichten Standards, die einem formalisierten Prozess
folgen, eine hohe Autorität und Qualität (vgl. bspw.
[StöberSpecs](https://web.archive.org/web/20240227135914/https://dini-ag-kim.github.io/stoeberspecs/)
für die OER-Metadatengruppe und Curricula-Gruppe der DINI-AG-KIM). Durch
die Einbindung der Öffentlichkeit ist die Entwicklung transparent
gestaltet [@kimswuvzsm2024] und lässt eine hohe Akzeptanz und Adaptionsrate
erwarten, da viele Akteure und Perspektiven bereits im
Entwicklungsprozess eingebunden wurden. In geförderten Projekten
empfiehlt sich die Mitarbeit in entsprechend offen gestalteten Gruppen,
da einerseits oft keine Mittel für die Mitarbeit in
Standardisierungsgremien zur Verfügung stehen und andererseits so
sichergestellt wird, dass die erarbeiteten Standards nach Projektende
der Öffentlichkeit zur Verfügung gestellt werden. Darüber hinaus sind
Synergieeffekte zu erwarten, wenn Expertisen gebündelt werden.

**Referenzen zu Arbeitsgruppen**

- Liste der [ADL Working
  Groups](https://adlnet.gov/governance/working-groups/)
- Liste der [W3C Working Groups](https://www.w3.org/groups/wg/)
- Liste der [DCMI/LRMI Working
  Groups](https://www.dublincore.org/themes/community/)
- Liste der IEEE [Standards
  Commitee](https://cis.ieee.org/committees/standards-committee) und
  [Working Groups](https://sagroups.ieee.org/ltsc/workgroups/),
  [ehemalige Working Groups](https://www.ieeeltsc.org/working-groups/)
- Liste der [Fach-/Arbeitsgruppen des
  Standardisierungsausschuss](https://wiki.dnb.de/display/STAC/STA-Community)
  (STA)
- Liste der [DINI-AG-KIM
  Gruppen](https://wiki.dnb.de/display/DINIAGKIM/Gruppen)
- [P92741.1 xAPI Work Group](https://sagroups.ieee.org/9274-1-1/), [xAPI
  Cohort](https://www.learningguild.com/online-conferences/content/7072/xapi-cohort--home/)

**Erwünschte Eigenschaften eines Metadatenstandards:**

- **Simplizität, Verständlichkeit**: ein Standard sollte für Menschen
  und Maschinen verständlich sein und eine automatisierte Verarbeitung
  ermöglichen

- **Eindeutigkeit und geteilte Semantik**: gemeinsames Verständnis von
  Elementen des Standards, beispielsweise durch wohldefinierte
  Bedeutungen, Definitionen und Anmerkungen

- **Flexibilität, Erweiterbarkeit**: Anwendbarkeit des Standards für
  verschiedene Ressourcentypen und in verschiedenen Kontexten,
  hinreichend Freiräume für die Nutzung (z. B. wenn möglich, optionale
  Felder, Ermöglichung einer Wiederholung und beliebige Reihenfolge von
  Feldern)

- **Konformität, Interoperabilität**: Förderung der Zusammenarbeit und
  Integration

- **Kompatibilität, Anschlussfähigkeit (national, international)**:
  Unterstützung von Migrationen oder Kompatibilität zwischen Standards
  auf verschiedenen Ebenen

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr class="odd">
<td>💡</td>
<td><strong>Zusammenfassung</strong></td>
</tr>
<tr class="even">
<td></td>
<td><ul>
<li><p>Die Mitwirkungsmöglichkeiten mancher Gremien zur Erarbeitung von
Standards im Bildungsbereich sind bisweilen mit hohen Mitgliedsgebühren
verbunden.</p></li>
<li><p>Da diese Gebühren von laufzeitbegrenzten Projekten oft nicht
bezahlt werden können, empfiehlt sich eine Mitarbeit in offener
gestalteten Gremien wie LRMI, DCMI (international) oder
KIM-Arbeitsgruppen (national), die ebenfalls Autorität besitzen und
formalisierten, dokumentierten Prozessen folgen.</p></li>
</ul></td>
</tr>
</tbody>
</table>

[^1]: Zum Teil auch als Element, Attribut, Term, Prädikat oder Property bezeichnet.

[^2]: Aussagen über Metadaten werden auch als Metadaten-Statements bezeichnet.

[^3]: auch als Anwendungsprofil oder Applikationsprofil (Application profile) bezeichnet.

[^4]: Das [Allgemeines Metadatenprofil für Bildungsressourcen (AMB)](https://dini-ag-kim.github.io/amb/latest/) bietet beispielsweise JSON Schema an, um die Angaben zu validieren. [1EdTech](https://www.1edtech.org/) ermöglicht, eigene LTI Implementierungen zertifizieren zu lassen.

[^5]: Zum Teil wird der Prozess der Harmonisierung auch als Normalisierung bezeichnet.

[^6]: Interoperabilität bezeichnet die Eigenschaft, Daten mit möglichst minimalem Verlust auszutauschen (Riley, 2017, S. 2) (vgl. [Kapitel zum Datenaustausch](#wie-gelingt-der-datenaustausch-in-einer-vernetzten-bildungslandschaft)).

