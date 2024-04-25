---
bibliography: "metadaten.json"
link-citations: true
---

# 3 Technische Grundlagen: Wie gelingt ein vernetzter Bildungsraum?

Wenn Daten in einem vernetzten Bildungsraum ausgetauscht werden sollen,
müssen technisch zwei Grundbedingungen erfüllt werden:

- **Verwendung von Standards**, um die Daten korrekt verarbeiten zu
  können
- **Schnittstellen**, über die der Datenaustausch erfolgen kann

Zunächst werden in diesem Kapitel Metadatenstandards für verschiedene
Objekttypen vorgestellt. Dabei zeigt sich, dass verschiedene aktuelle
Standards (z. B. Europass, Learning Metadata, Learning Resource Metadata
Initiative) auf semantische Technologien setzen, wie dem Resource
Description Framework (RDF) und dem Simple Knowledge Organization
Systems (SKOS)[^7]. Diese Technologien werden daher in einem eigenen
Abschnitt vorgestellt. Anschließend folgen die Themen Interoperabilität
und Schnittstellen.

## 3.1 Welche Metadatenstandards gibt es?

Eine der ersten Fragen, die sich bei der Beschäftigung mit
Metadatenstandards häufig stellt, ist die Suche nach einem Überblick
über bereits vorhandene und etablierte Standards. An dieser Stelle[^8]
werden daher aktuelle und relevante Standards für die folgenden
Objekttypen vorgestellt: Lerninhalte, Lernangebote und Kurse,
Credentials, Content-Distribution, Nutzende, Tests/Quizze sowie
Toolintegrationen. Standards umfassen hierbei Datenmodelle (konzeptuelle
und inhaltliche Standards,  
etwa die Modellierung einer Domäne), Serialisierungen (strukturierte
Datenformate) sowie Protokolle (Datenaustausch). Eine Liste von
Standards, Schemata und Profilen findet sich darüber hinaus
beispielsweise im [Katalog der
Metadatenstandards](https://rdamsc.bath.ac.uk/), im [Digital Curation
Centre](https://www.dcc.ac.uk/guidance/standards/metadata/list), unter
[FAIRsharing.org](https://fairsharing.org/search?fairsharingRegistry=Standard).

### 3.1.1 Standards für Inhalte

Lernmaterialien sind einzelne Objekte, die in digitaler oder
nicht-digitaler Form vorliegen und zum Lernen verwendet werden können.
Metadatenstandards, die solche Objekte beschreiben, bieten Attribute, um
das Material zu beschreiben, etwa in Bezug auf den Fachbereich, die
Zielgruppe und weiterer Kategorien. Zudem können diese Standards
ebenfalls Lehr-/Lernprozesse beschreiben.

Standards:

- [Dublin Core metadata
  terms](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/)
  (ISO 15836-1:2017/-2:2019, [RFC
  5013](https://datatracker.ietf.org/doc/html/rfc5013), [ANSI/NISO
  Z39.85](http://groups.niso.org/higherlogic/ws/public/download/10258/Z39-85-2012_dublin_core.pdf))
- [Learning Resource Metadata
  Innovation](https://www.dublincore.org/groups/lrmi/) (LRMI) (DCMI,
  2024)
- [Metadata for learning
  resources](https://www.iso.org/standard/81950.html) (ISO/IEC 19788-1)
- [Information and documentation - Records
  management](https://www.iso.org/standard/62542.html) (ISO
  15489-1:2016)
- Educational Modeling Language (EML), speziell: EML-OU
  ([Archiv](https://web.archive.org/web/20170809144414/http://www.ifets.info/journals/10_1/21.pdf))
  (Giesbers et al., 2007; Koper, 2001)
- [(IMS) Learning Resource Meta-data
  Specification](https://www.imsglobal.org/metadata/index.html)
  (1EdTech)
- [(IMS) Learning
  Design](https://www.imsglobal.org/learningdesign/index.html) (1EdTech)
- [Learning Object
  Metadata](https://ieeexplore.ieee.org/document/9262118) (LOM)[^9]
  (IEEE, 2020a)
- [Learning Metadata](https://opensource.ieee.org/lmt/lmt) (LMT) (IEEE,
  2024)

**Dublin Core Metadata Terms (DCMI Terms)**

- Gremienstandard
- Aktuelle Version: [Dublin Core metadata
  terms](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/)
- Veröffentlichung: 2020-01-20
- Herausgeber: [Dublin Core Metadata
  Initiative](https://www.dublincore.org/)

Das ältere Dublin Core Metadata Element Set
([DCMES](https://dublincore.org/specifications/dublin-core/dces/)) sowie
die neuere Fassung DCMI Metadata Terms ([DCMI
Terms](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/))
wurden zur Beschreibung und Verbesserung der Auffindbarkeit von
webbasierten Ressourcen entwickelt. Die Elemente werden jedoch auch als
Grundlage für Metadaten in anderen Domänen, beispielsweise von
Bibliotheken, verwendet [@haynesmimrumiu2018, S. 51f].
Der Namensraum enthält
generische Attribute, die eine breite Anwendung, auch über die
Auszeichnung von Lernmaterialien hinaus, ermöglichen.

**Learning Resource Metadata Innovation (LRMI)**

- Gremienstandard
- Aktuelle Version: [LRMI Terms (RDF)
  2020-11-12](https://www.dublincore.org/specifications/lrmi/lrmi_terms/2020-11-12/)
- Veröffentlichung aktueller Version: 2020-11-12
- Herausgeber: [Dublin Core Metadata
  Initiative](https://www.dublincore.org/)

Der Learning Resource Metadata Innovation Standard (kurz LRMI) wird von
der [LRMI Task
Group](https://www.dublincore.org/groups/lrmi-task-group/) im Rahmen der
Dublin Core Metadaten Initiative entwickelt, gepflegt und
weiterentwickelt. Die Gruppe trifft sich monatlich, um aktuelle
Entwicklungen und Themen zu diskutieren, gemeinsam Vokabulare zu
entwickeln und aufkommende Belange zu erörtern. Die Treffen finden
öffentlich statt und können ohne vorherige Anmeldung besucht werden.
Zusätzlich gibt es eine Mailingliste, über die Informationen zu und
zwischen den Treffen versendet werden.

LRMI modelliert Klassen (z. B.
[Lernressourcen](https://schema.org/LearningResource)) und Attribute (z.
B. Eigenschaften von Lernressourcen) unter Verwendung von RDF, dem
Resource Description Framework. Werte, die Attributen zugeordnet werden,
modelliert LRMI in SKOS.[^10] Die LRMI Task Group verfolgt das Ziel, alle
genutzten Attribute und Klassen in schema.org zu integrieren. Schema.org
ist eine Lösung zur Bereitstellung semantischer Auszeichnungen von
Webinhalten, die eine Darstellung von Suchergebnissen und Auffindbarkeit
von Inhalten verbessern. Damit wird gewährleistet, dass die verwendeten
Elemente auch von Suchmaschinen “verstanden” und als maschinenlesbare
Mikrodaten in Webseiten eingebettet werden können. Mikrodaten sind Teil
eines Verfahrens des
[WHATWG](https://html.spec.whatwg.org/#toc-microdata)[^11]
[HTML-Standards](https://html.spec.whatwg.org/#toc-microdata) zur
Einbettung kleiner, maschinenlesbarer Informationseinheiten
(Key-Value-Pairs) als strukturierte Metadaten auf Webseiten zur
semantischen Annotation von Inhalten der Webseite über Markup, z. B. im
[Mikroformat](https://microformats.org/wiki/Main_Page) oder mittels
[schema.org-Mikrodaten](https://web.archive.org/web/20240229212240/https://schema.org/docs/gs.html).
Die Vokabulare von schema.org werden als Mikrodaten und in verschiedenen
anderen Formaten bereitgestellt, wie [RDFa](https://rdfa.info/) oder
[JSON-LD](https://json-ld.org/). Das Vokabular ist möglichst generisch
gehalten, um allgemeine Daten zu beschreiben, sodass konkrete
Anwendungsfälle eher in Applikationsprofilen ausgearbeitet werden.

*Applikationsprofile  
*Auch der LRMI-Standard erlaubt das Erstellen von Applikationsprofilen.
Im deutschsprachigen Raum ist hier etwa das “Allgemeine Metadatenprofil
für Bildungsressourcen” (AMB) zu nennen, das ebenfalls von der
[OER-Metadatengruppe](https://wiki.dnb.de/display/DINIAGKIM/OER-Metadatengruppe)
der DINI-AG-KIM entwickelt und gepflegt wird:

[Allgemeines Metadatenprofil für
Bildungsressourcen](https://dini-ag-kim.github.io/amb/latest/)
([Git-Repo](https://github.com/dini-ag-kim/amb), [Eintrag im
Metadaten-Standards-Katalog](https://rdamsc.bath.ac.uk/msc/m126)):
Dieses Profil verwendet einige Attribute, für die ein Eintrag aus einer
kontrollierten Werteliste verlangt wird. Entsprechende Vokabulare werden
ebenfalls von dieser Gruppe gepflegt und veröffentlicht.

**Educational Modeling Language (EML)**

Diverse Sprachen zur Modellierung von Bildungsmaterialien und
pädagogische Szenarien können als EML klassifiziert werden
[@martinez-ortizemlcihc2007] [@stumppesulopb2003, S. 151-153].
Sie gründen zumeist auf dem generischen Metamodell EML-OU der Open University of the
Netherlands (OU). Dieses dient der pädagogischen Modellierung von
Lernumgebungen, indem die Einbettung von Ressourcen (Lernobjekten) in
didaktische Kontexte beschrieben wird [@baumgartnerepalmff2002, S. 7].

Das Modell besteht aus Lehr-/Lerntheorien, dem Modell für Lernende
(Interaktionen in Lernsituationen), Inhalts-/Anwendungsdomänen sowie
einer Modularisierung der Lerneinheiten. Es formalisiert Bestandteile
von Lernprozessen, wie Lernaktivitäten, Rollen, Inhalte und Methodik.
Auf diese Weise werden pädagogische Szenarien modelliert.

**(IMS) Learning Design (1EdTech)**

Das Learning Design-Framework dient der Beschreibung von
Lehr-/Lernprozessen, basierend auf der pädagogisch-didaktischen
Modellierungssprache “Educational Modelling Language” (EML) [@strackekrfeueiu2007, S. 14], für welche theoretische Fundierungen entwickelt wurden [@dalzielldld2016], die jedoch bislang keine Weiterentwicklung des
Standards mit sich brachten.

Verwandt: Didaktische Entwurfsmuster [@kohlsdeelmdp2008] [@rensingsflulmiubl2013] (vgl. auch [PatternPool](https://www.patternpool.de/finden/)), prozessorientierte didaktisch-methodische Szenarien (Vorlagen), Best
Practice (methodische Strukturen)

**Learning Object Metadata (LOM)**

- Gremienstandard
- Aktuelle Version: [1484.12.1-2020 - IEEE Standard for Learning Object
  Metadata](https://ieeexplore.ieee.org/document/9262118)
- Veröffentlichung aktueller Version: 2020
- Herausgeber: IEEE

Ziel des Standards ist die Beschreibung von Ressourcen, die für die
Lehre und zum Lernen verwendet werden. Dieser Standard wurde vom
Standard-Komitee des [Institute of Electrical and Electronics
Engineers](https://en.wikipedia.org/wiki/Institute_of_Electrical_and_Electronics_Engineers)
(IEEE) entwickelt. Der Standard ist nicht offen über IEEE zu beziehen,
es wird ein entsprechendes Abonnement benötigt. Allerdings dürfen von
dem Standard auch Applikationsprofile erstellt und frei veröffentlicht
werden. Applikationsprofile dürfen, um Kompatibilität mit LOM-Core zu
gewährleisten, Attribute hinzufügen, optionale Attribute verpflichtend
erklären, aber nie Pflichtattribute optional erklären. International
findet sich eine nicht abgeschlossene [Liste von
Applikationsprofilen](https://en.wikipedia.org/wiki/Learning_object_metadata#Application_profiles),
wie auch das Educational Metadata Profile (EMP) (Solomou et al., 2015).
Im deutschsprachigen Raum wurde im Kontext des deutschen Bildungsservers
und [ELIXIER](https://www.bildungsserver.de/elixier/) das LOM-DE Profil
([Archiv](https://web.archive.org/web/20220120213540/https://sodis.de/lom-de/LOM-DE_v0.9_1.pdf))
entwickelt, welches jedoch nicht in einer finalisierten Fassung
veröffentlicht wurde [@menzeldmpheor2023, S. 265] und dessen praktische
Verwendung und Verbreitung weitestgehend unbekannt ist.

Im deutschsprachigen Raum sind zwei Applikationsprofile von besonderer
Bedeutung:

- [LOM-CH](https://www.educa.ch/de/taetigkeiten/online-dienste/lom-ch):
  Das Schweizer Applikationsprofil von LOM. LOM-CH hat insbesondere
  Attribute hinzugefügt, um die Verknüpfung mit sprachregionalen und
  stufenspezifischen Lehrplänen zu ermöglichen.
- [LOM for Higher Education OER
  Repositories](https://w3id.org/kim/hs-oer-lom-profil/latest/):
  Applikationsprofil, welches im Rahmen der
  [OER-Metadatengruppe](https://wiki.dnb.de/display/DINIAGKIM/OER-Metadatengruppe)
  der DINI-AG-KIM entwickelt wurde. Dieses Profil wird von verschiedenen
  Hochschulen in Deutschland für den Datenaustausch zwischen
  Repositorien verwendet. Dieses Applikationsprofil fordert bei
  bestimmten Attributen, bspw. zur Angabe des “learningresourcetype”,
  definierte Werte aus einem mit SKOS-modellierten Vokabular
  “[Hochschulcampus Ressourcentypen](https://w3id.org/kim/hcrt/scheme)”.

Der Austausch zwischen Systemen auf LOM-Basis erfolgt meist durch das
Protokoll [OAI-PMH](https://en.wikipedia.org/wiki/OAI-PMH).

Während einerseits die große Komplexität von LOM kritisiert wird [@barkermlmoescd2010] [@neumannoero2013], konstatiert Pawlowski (2001), dass dem Standard sogar wesentliche didaktische Attribute für die Praxis fehlen,
unter anderem die Kennzeichnung der Eignung von Ressourcen für konkrete
didaktische Methoden, pädagogische Planungsdetails
(Kommunikationsstruktur, Evaluation, …). [@pawlowskieevzecl2001, S. 107] oder
Auskünfte über didaktisch-methodische Entscheidungen [@arnoldpmieapuefbvf2003, S. 382]. Aus dieser Perspektive fokussiert LOM somit eher auf die
konkreten Inhalte und nicht auf die Methoden oder zugrundeliegenden
didaktischen Prinzipien.

Hinweis: Das 1EdTech Konsortium (ehemals IMS Global) hat maßgeblich bei
der Entwicklung von LOM mitgewirkt und tut dies weiterhin. Dabei gab es
zwischenzeitlich Abweichungen in Version 1.2 der IMS Version. Diese
Abweichungen wurden inzwischen wieder beseitigt.

**Learning Metadata (LMT)**

- Gremienstandard
- Aktueller Draft:
  [https://opensource.ieee.org/lmt/lmt](https://opensource.ieee.org/lmt/lmt/)
- Veröffentlichung aktueller Version: 2020
- Herausgeber: IEEE

Die [P2881 Working
Group](https://development.standards.ieee.org/myproject-web/public/view.html#pardetail/8290)
ist bei IEEE mit der Entwicklung eines Nachfolgers von LOM befasst. LOM
wird trotz seiner allgemeinen Bekanntheit und Verbreitung vom IEEE als
veraltet eingeschätzt [@ieeeppd2020]. Das INVITE-Projekt kommt
diesbezüglich zu einer ähnlichen Einschätzung [@goertzmiiiwswfwzebimudirii2023, S. 7].
Besonders die in LOM verwendeten Taxonomien werden als veraltet
angesehen. Ferner sind inzwischen neue Metadatenkonzepte erarbeitet
worden, die in dem nachfolgenden Standard berücksichtigt werden sollten
[@ieeeppd2020]. Die Arbeitsgruppe hat Ende 2023 einen ersten
[Entwurf](https://opensource.ieee.org/lmt/lmt/-/tree/main) zur
öffentlichen Kommentierung bereitgestellt. Darin zeigt sich, dass nun
ebenfalls RDF als grundlegendes Datenmodell verwendet wird. Außerdem ist
das Set an Attributen deutlich reduziert worden, wobei viele Attribute
von LRMI und schema.org nachgenutzt werden.

*Communitys of Practice* werden ermutigt, eigene Applikationsprofile zu
erstellen und das Basisschema zu erweitern. Eine bedeutsame Erweiterung
besteht außerdem darin, dass auch die Beschreibung von *Learning Events*
mit dem Standard möglich ist, das im Zusammenhang mit einer
Lernaktivität oder -erfahrung steht. Ein solches Lernereignis ist
flüchtig (*ephermal*) und besitzt derzeit in der Entwurfsversion ein
Start- und Enddatum sowie eine Dauer. Solche Lernereignisse werden in
anderen Kontexten mit umfangreichen Metadaten versehen (vgl. Learning
Analytics und Standards wie xAPI, cmi5, [1EdTech Caliper
Analytics](https://www.1edtech.org/standards/caliper)), die darüber
hinaus relevante didaktische Funktionen für Lehrende und Lernende
innehaben.

Insgesamt folgt diese Entwicklung dem Trend, Metadatenstandards auf dem
RDF-Datenmodell aufzubauen, was kürzlich auch bei der Überarbeitung des
Europass-Schemas beobachtet werden konnte (s. u.).

**Exkurs: Bibliotheksbereich**

Im Bibliotheksbereich werden unter anderem Machine-Readable Cataloging
21 (MARC 21), Encoded Archival Description (EAD), Metadata Object
Description Schema (MODS), Metadata Authority Description Standard
(MADS), Metadata Encoding and Transmission Standard (METS), Preservation
Metadata: Implementation Strategies (PREMIS), Publishing Requirements
for Industry Standard Metadata (PRISM), Online Information exchange
(ONIX),
[BIBFRAME](https://www.dnb.de/DE/Professionell/ProjekteKooperationen/Projekte/BIBFRAME/bibframe_node.html),
IFLA Library Reference Model (LRM), Resource Description and Access
([RDA](https://www.dnb.de/DE/Professionell/Standardisierung/Standards/_content/rda.html?nn=58044))
oder [Bib
Extend](https://www.w3.org/community/schemabibex/wiki/Main_Page) (W3C,
schema.org) als Standards und Datenmodelle verwendet [@haynesmimrumiu2018, S. 54-62].
So stellt die Deutsche Nationalbibliothek Daten unter einer
[Creative Commons
Zero](https://creativecommons.org/publicdomain/zero/1.0/deed.de) Lizenz
in verschiedenen Exportformaten und Serialisierungen über diverse
Bezugswegse (z. B. OAI-PMH) bereit, darunter als: MARC 21, RDF/XML,
RDF/JSON-LD, RDF/Turtle, HDT, N-Triples, CSV, DNB Casual; MODS-xml, PDF,
PicaPlus/XML [@dnbbue2023].

Beispiel für kontrollierte Vokabulare: [Liste der Library of
Congress](https://web.archive.org/web/20240301135921/https://www.loc.gov/librarians/controlled-vocabularies/).

**Zusammenfassung und Ausblick**

Während LOM eine breite Anwendung erfährt, ist zu beobachten, dass sich
zunehmend Standards durchsetzen (oder entwickelt werden), die eine
adäquatere semantische Repräsentation von Strukturen ermöglichen,
beispielsweise indem auf dem RDF-Datenmodell aufgebaut wird. Dies
erlaubt die Implementierung von Technologien, die Inferenzen zwischen
den Strukturen bilden, bspw. [Semantic
Reasoner](https://en.wikipedia.org/wiki/Semantic_reasoner).

Beispiele für Metadatenprofile im Kontext von Repositorien zur
Beschreibung und Austausch von digitalen Lehr- und Lernressource (vgl.
Tabelle “LOM-basierte Profile” und Tabelle “LRMI-basierte Profile,
kompatibel zu Linked (Open) Data”).

Tabelle: *LOM-basierte Profile*

<table style="width:100%;">
<colgroup>
<col style="width: 52%" />
<col style="width: 21%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th>Bezeichnung</th>
<th>Kontext</th>
<th>Referenzen</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a
href="https://www.educa.ch/de/taetigkeiten/online-dienste/lom-ch">LOM-CH</a>
(<a
href="https://web.archive.org/web/20240226225633/https://www.educa.ch/sites/default/files/2020-11/applikationsprofil-lom-ch-v2.1-de.pdf">Archiv</a>)</td>
<td>Verschiedene Bildungsbereiche</td>
<td><a
href="https://joinup.ec.europa.eu/collection/eu-semantic-interoperability-catalogue/solution/eun-learning-resource-exchange-metadata-application-profile">EUN</a></td>
</tr>
<tr class="even">
<td>LOM for Higher Education (<a
href="https://w3id.org/kim/hs-oer-lom-profil/latest/">HS-OER-LOM</a>)
(<a
href="https://github.com/dini-ag-kim/hs-oer-lom-profil/">Repo</a>)</td>
<td>Hochschule</td>
<td>XML, XSD</td>
</tr>
<tr class="odd">
<td><a
href="https://web.archive.org/web/20240227154209/http://agmud.de/eaf-erweitertes-austauschformat/">LOM-EAF</a>
(<a
href="https://web.archive.org/web/20220120184549/https://sodis.de/lom-eaf/LOM-EAF_v0.3.pdf">Archiv</a>)</td>
<td>Medienzentren</td>
<td>XML, XSD</td>
</tr>
<tr class="even">
<td><a href="https://edoc.hu-berlin.de/handle/18452/2133">ELAN</a> (DINI
&amp; ELAN, 2005) (<a
href="https://web.archive.org/web/20240227144518/https://edoc.hu-berlin.de/bitstream/handle/18452/2133/6-de.pdf">Archiv</a>)</td>
<td>Hochschule</td>
<td>Z39.50, OAI-PMH, XML</td>
</tr>
</tbody>
</table>

Tabelle: *LRMI-basierte Profile, kompatibel zu Linked (Open) Data*

<table>
<colgroup>
<col style="width: 52%" />
<col style="width: 20%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th>Bezeichnung</th>
<th>Kontext</th>
<th>Referenzen</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Allgemeines Metadatenprofil für Bildungsressourcen (<a
href="https://w3id.org/kim/amb/latest/">AMB</a>) (<a
href="https://github.com/dini-ag-kim/amb">Repo</a>)</td>
<td>Verschiedene Bildungsbereiche</td>
<td>schema.org, SKOS, JSON-Schema, JSON-LD</td>
</tr>
<tr class="even">
<td>Learning Metadata (LMT) (<a
href="https://opensource.ieee.org/lmt/lmt">Repo</a>)</td>
<td>Verschiedene Bildungsbereiche</td>
<td>LRMI, schema.org, SKOS</td>
</tr>
</tbody>
</table>

### 3.1.2 Standards für Kurse und Lernangebote

Bildungsangebote sind strukturierte und thematisch fokussierte
Lerngelegenheiten. Sie können sowohl ein bestimmtes Start- und Enddatum
besitzen, als auch von Nutzer\*innen selbst zu beliebigen Zeitpunkten
bearbeitet werden. Oft bestehen sie aus einer Vielzahl an Materialien,
wie Videos, Handouts oder Arbeitsblättern, die in einer bestimmten
Reihenfolge zu bearbeiten sind. Die Teilnahme an Bildungsangeboten kann
mit einem Zertifikat (*Credential*) ausgezeichnet werden.

Standards:

- MOOCHub
- Europass Learning Model (ELM)
- Data Exchange for Training Information Systems (DEfTIS)

**MoocHub**

- Gremienstandard
- Aktuelle Version: MOOChub Schema
  ([Repo](https://github.com/MOOChub/schema))
- Veröffentlichung: 2020
- Herausgeber: MoocHub

Die Spezifikation wird zum Austauschen von Kursdaten (MOOCs) zwischen
den Mitgliedern des [MOOCHub](https://moochub.org/) genutzt [@ebnermiemmip2023].
Die Spezifikation baut auf
[Vorarbeiten](https://github.com/openHPI/mooc-standards) des openHPI
auf. Es liegt ein JSON-Schema vor, welches es ermöglicht, Informationen
über die Kurse, die bereitstellender Organisationen und weitere
Informationen zu teilen. Der Anteil der Pflichtattribute ist bewusst
gering gehalten worden, um neue Parteien leicht einarbeiten zu können.
Die Spezifikation ermöglicht seit v3 auch Angaben in mehreren Sprachen.
Neben dem JSON-Schema findet sich auch eine API-Spezifikation, um die
Schnittstelle zu beschreiben, über welche die Daten abgerufen werden
können.

**European Learning Model (ELM)**

- Gremienstandard
- Aktuelle Version: [European Learning Model
  v3](https://github.com/european-commission-empl/European-Learning-Model)
- Veröffentlichung: 2023 (v3), archiviert seit Februar 2024
- Herausgeber: Europäische Kommission

Das "European Learning Model" ist eine Weiterentwicklung des im Rahmen
der European Digital Credential Infrastructure (EDCI) entwickelten
Datenmodells. Es dient zur einheitlichen Abbildung und Darstellung von
Credentials, Learning Opportunities sowie Qualifications. Das Modell
basiert auf dem W3C Verifiable Credentials Data Model und erweitert
dieses. Das Datenformat ist XML/XSD formuliert und auf den ELMO und
EMREX Standard abgestimmt.

Der Standard wurde überarbeitet und ist im April 2023 in der Version 3
erschienen. Eine Weiterentwicklung des Standards scheint zunächst
unwahrscheinlich, da das Projekt im Februar 2024 als archiviert
gekennzeichnet wurde. Die aktuelle Version basiert auf RDF als
Datenmodell. ELM baut auf dem W3C Verifiable Credentials Data Model auf
und befasst sich darüber hinaus mit der Abbildung sogenannter "Learning
Opportunities". Damit umfasst der Standard ein Datenmodell zur
Beschreibung folgender Konzepte:

- Verifiable Credentials
- Verifiable Presentation
- Learning Opportunity

**Data Exchange for Training Information Systems (DEfTIS)**

- Spezifikation (PAS-DIN) (PAS = Publicly Available Specification)

- Aktuelle Version: [DIN PAS
  1045](https://www.iwwb.de/information/DIN-PAS-1045-Weiterbildungsdatenbanken-und-Weiterbildungsinformationssysteme-Inhaltliche-Merkmale-und-Formate-zum-Datenaustausch-weiterbildung-55.html)
- Veröffentlichung: 2002, seit 2004 als DIN
- Herausgeber: [InfoWeb
  Weiterbildung](https://www.iwwb.de/kurssuche/startseite.html)

Der Standard ist seit 2002 im Rahmen der [DIN PAS
1045](https://www.iwwb.de/information/DIN-PAS-1045-Weiterbildungsdatenbanken-und-Weiterbildungsinformationssysteme-Inhaltliche-Merkmale-und-Formate-zum-Datenaustausch-weiterbildung-55.html)
in Zusammenarbeit mit dem Projekt [InfoWeb
Weiterbildung](https://www.iwwb.de/kurssuche/startseite.html) (IWWB)
entwickelt worden (BMBF-Förderung). Die öffentlich verfügbare
Spezifikation umfasst dabei eine XML-Spezifikation zur Abbildung von
Informationsinhalten von Weiterbildungsdatenbanken. Die [technische
Spezifikation](https://web.archive.org/web/20231226234408/https://projekt.iwwb-files.de/PAS/DEfTIS_zu_PAS1045_Ver_5_07.pdf)
liegt in Version 5.07 vom Stand 2007 vor. [Dort sind auch
XSD-Dateien](https://web.archive.org/web/20240118011347/https://www.iwwb.de/information/DIN-PAS-1045-Weiterbildungsdatenbanken-und-Weiterbildungsinformationssysteme-Inhaltliche-Merkmale-und-Formate-zum-Datenaustausch-weiterbildung-55.html)
zur Validierung zu finden. Gemäß den eigenen Aussagen sind die
Empfehlungen von zahlreichen Weiterbildungsportalen umgesetzt worden
(Stand 2011) [@iwwb-infowebweiterbildungdp1wuwimufd2023]. Auf der gleichen
Seite findet sich auch eine [Excel-Tabelle](https://web.archive.org/web/20160325075633/http://projekt.iwwb-files.de/AG_Infostandards/Empfehlungen%20zu%20Inhalten%20von%20Weiterbildungsdatenbanken%20-%20Version%201_4.xls),
die Empfehlungen hinsichtlich der Bedeutsamkeit der einzelnen Elemente angibt.

### 3.1.3 Standards für Credentials

Um es Lernenden zu ermöglichen, ihre Zertifikate und Bildungsnachweise
sicher und effizient anderen Institutionen oder Stellen vorlegen zu
können, ist es erforderlich, dass Standards und Infrastrukturen
geschaffen werden, die einen entsprechenden Austausch ermöglichen. Hier
haben sich auf internationaler und europäischer Ebene verschiedene
Standards etabliert.

Standards:

- European Learning Model (ELM) (s.o.)
- Europass Digital Credentials Infrastructure (EDCI)
- ELMO und EMREX
- Credential Transparency Description Language (CTDL)
- Verifiable Credentials Data Model (VC, W3C)
- Hochschulforum Digitalisierung Zertifikate
  ([HFDcert](https://hfdnetzwerk.de/hfdcert))
- Open Badges

**  
Europass Digital Credentials Infrastructure (EDCI)**

*Qualification Dataset Register
([QDR](https://europa.eu/europass/de/stakeholders/qdr/documentlibrary))*

- Applikationsprofil für die Akkreditierung (EDC)
- Applikationsprofil für Lernmöglichkeiten und Qualifikationen (LOQ)

**ELMO und EMREX**

- Gremienstandard
- Aktuelle Version: [Technical
  Guide](https://github.com/emrex-eu/standard/blob/master/binary/Technical-Guide-to-EMREX.pdf)
- Veröffentlichung: 2015
- Herausgeber: EMREX-Nutzergruppe
- Links:
  - [EMREX Glossar](https://github.com/emrex-eu/glossary)
  - [EMREX.eu](https://emrex.eu/)

EMREX ist ein Verfahren zum Austausch elektronischer Daten Studierender
zwischen Hochschulen und potenziellen Arbeitgebern. ELMO ist das
grundlegende Datenmodell in diesem Austausch. EMREX ging aus einem
EU-Projekt hervor und hat sich nach der Förderphase selbst erhalten. Das
European Learning Model (ELM) ist mit dem ELMO Modell abgestimmt. Der
Standard ist XML-basiert. Die Weiterentwicklung erfolgt innerhalb der
EMREX-Nutzergruppe. Das Projekt möchte damit die Umsetzung von zwei
CEN-Normen vorantreiben:

- EN 15981 Europäische Mobilität von Lernenden – Leistungsinformationen
  \[EuroLMAI\]
- EN 15982 Metadaten für Lernangebote – Werbung \[MLO-AD\]

Das ELMO-Format ist ein XML-Format, das Bewertungsinformationen in
Diplomen, Transcripts of Records und Diploma Supplements unterstützt. Es
umfasst auch Beschreibungen der Qualifikationen, Programme, Kurse und
Module für diese Bewertungen. Diese Informationen werden in Zulassungs-
und Anerkennungsverfahren benötigt.

Die Verbreitung und Nutzung in Europa ist dabei äußerst unterschiedlich.
Während das Modell in einigen Ländern bereits eine sehr breite Nutzung
erfährt (Niederlande, Norwegen, Finnland), nehmen in anderen Ländern
erst wenige Institutionen teil (Deutschland, Italien, Dänemark).

Obwohl nach eigenen Aussagen der Europäischen Kommission die Standards
ELMO und das Europass Learning Model (ELM) aufeinander abgestimmt sind,
stellt sich die Frage, wie beide Standards in Zukunft koexistieren
werden.

**Verifiable Credentials**

- Gremienstandard
- Aktuelle Version: [Spezifikation](https://www.w3.org/TR/vc-data-model/)
- Veröffentlichung: 2019
- Herausgeber: W3C

Verifiable Credentials sind ein Standard, der sich mit der Abbildung und
Präsentation von Zeugnissen und Berechtigungsnachweisen befasst. Der
englische Begriff "credential" ist entsprechend weit zu fassen und es
können damit sowohl Aussagen über einen Ausweis oder Führerschein
getroffen werden, als auch über ein Schul- oder Hochschulzeugnis.

Durch Nutzung digitaler Signaturmöglichkeiten sollen entsprechend
fälschungssichere Beweise über das Vorhandensein eines Credentials
ermöglicht werden. In dem Standard sind drei Typen von Akteuren
definiert:

- Issuer: Der Issuer stellt Credentials aus und signiert diese digital.
  Das Credential wird dann an den Holder übertragen.
- Holder: Der Holder hält seine Credentials und speichert sie. Er kann
  seine Credentials dann zusammenstellen, um sie einer Person oder
  Organisation zu präsentieren, dem Verifier.
- Verifier: Der Verifier kann die Echtheit der Zertifikate mit den darin
  enthaltenen Informationen vom Issuer, bzw einer Verifiable Data
  Registry überprüfen.

Das European Learning Model (ELM) [baut auf diesem Standard
auf](https://github.com/european-commission-empl/European-Learning-Model/#alignment-with-other-standards)
und erweitert ihn. Das Datenmodell nutzt RDF und ist damit unabhängig
vom Serialisierungsformat. In dem Standard werden Beispiele in JSON-(LD)
angegeben, wobei darauf hingewiesen wird, dass auch [andere
Serialisierungsformate (z. B. XML, YAML, CBOR) möglich
sind](https://www.w3.org/TR/vc-data-model/#syntaxes).

**Open Badges**

- Gremienstandard
- Aktuelle Version: [Aktuelle Spezifikation](https://www.imsglobal.org/spec/ob/v2p1)
- Veröffentlichung: 2011, mittlerweile in Version 2.1 im Jahr 2019
  veröffentlicht
- Herausgeber: 1EdTech

Open Badges ist ein ursprünglich von der Mozilla Foundation entwickelter
Standard, um digitale Zertifikate auszustellen. Dabei werden die
Zertifikate in Bilddateien als Metadaten eingebettet und können so an
beliebigen Stellen im Netz platziert und ausgelesen werden. Im Badge
sind dabei die Informationen über den Aussteller, die Empfänger und zum
Zertifikat selbst. Seit Version 1.1 wird JSON-LD zur Repräsentation der
Open Badge Daten genutzt. Außerdem können Open Badges leicht durch
sogenannte "Extensions" erweitert werden.

Für die Kompatibilität mit xAPI wurde ein [Vokabular
entwickelt](https://web.archive.org/web/20160412151300/https://openbadgespec.org/xapi/),
sodass Open Badges in xAPI activity streams eingebunden werden können.
Dadurch kann in xAPI definiert werden, wie ein Badge erworben werden
kann. Das Vokabular findet sich jedoch im Entwurf, Aktualität unklar.

Der Open Badge Standard wird mittlerweile von 1EdTech weiterentwickelt.
In den Lernsystemen Moodle, Mahara und ILIAS können Open Badges genutzt
werden.

Weitere Beispiele für die Umsetzung von Open Badges:

- OpenVM, BeuthBonus, pMOOCs, INTEGRAL [@buchemksmmobahcwgk2019]
- kosLearningLab auf Basis des DigCompEdu [@keindorfkfladke2021]

### 3.1.4 Standards für die Distribution von Content

Diese Standards beschreiben Möglichkeiten, um Lernmaterialien oder ganze
Kurse zu paketieren und in anderen Learning-Management-Systemen
zugänglich zu machen. Ferner legen diese Standards die Art und Weise
fest, wie einheitlich über Aktivitäten der Nutzer\*innen innerhalb eines
LMS berichtet wird. So können diese Standards verwendet werden, um einen
Vendor-Lock-In auf bestimmte LMS zu vermeiden. Andererseits können
Informationen über die Lernaktivitäten von Nutzer\*innen gesammelt
werden (Learning Analytics). Diese Standards sind insbesondere auch für
Autorenwerkzeuge relevant, damit die entwickelten Ressourcen über
verschiedene LMS hinweg geteilt und genutzt werden können.

Standards:

- Aviation Industry Computer-based Training Committee (AICC)
- Sharable Content Object Reference Model (SCORM) \[ADL; IEEE\]
- Experience API (xAPI)
- cmi5: Ein xAPI-Profil
- (IMS) Content Packaging (CP) \[1EdTech\]
- (IMS) Common Cartridge (CC) \[1EdTech\]
- (IMS) Simple Sequencing (SSQ) \[1EdTech\]

**Aviation Industry Computer-based Training Committee (AICC)**

- Herausgeber: Aviation Industry Computer-based Training Committee
- Veröffentlichung: 1988

Der frühe E-Learning-Standard ermöglicht die Integration von Content in
Lernmanagementsystemen. Er gilt als Wegbereiter für Standards wie SCORM
(s.u.). 2014 hat sich das Gremium [AICC aus Mangel an Mitgliedern
aufgelöst](https://www.docebo.com/glossary/aicc/).

**Sharable Content Object Reference Model (SCORM)**

- Gremienstandard
- Aktuelle Version:
  [https://adlnet.gov/projects/scorm](https://adlnet.gov/projects/scorm/)
- Veröffentlichung: 2000 (1.0), zuletzt: 2009 (4th Edition)
- Herausgeber: Advanced Distributed Learning Initiative (ADL)

Das "Sharable Content Object Reference Model" (SCORM) beschreibt einen
Standard, um Einheiten von Lernmaterialien über verschiedene Systeme
hinweg kompatibel nutzen zu können. Es ist damit ein
Paketisierungsformat, aber auch ein Datenaustauschformat, das zur
Laufzeit mit dem LMS kommuniziert und beschreibt, welche Daten es von
dem LMS haben möchte oder welche Daten es sendet. SCORM ist ein
"Reference Model", weil sich SCORM nicht als Standard versteht, sondern
seinerseits auf verschiedenen etablierten Standards gründet (z. B. LOM,
QTI). SCORM beschreibt daher eher, wie diese jeweiligen Standards
gemeinsam zu nutzen sind. Als Nachfolger von SCORM wird xAPI angesehen,
das ein wesentlich flexibleres Tracking ermöglicht und ohne die
Laufzeit-Komponente von SCORM auskommt.

**Hinweis:** Obwohl bereits mehrere Nachfolger von SCORM 1.2 existieren,
ist diese immer noch am weitesten verbreitet und sollte von
E-Learning-Anbietern unterstützt werden. Siehe dazu auch: Anlage
“Vergleich der E-Learning-Standards für die Distribution von Content”.

**Experience API (xAPI)**

- Gremienstandard (IEEE, [P92741.1 xAPI Work
  Group](https://sagroups.ieee.org/9274-1-1/))
- Aktuelle Version: [IEEE
  9274.1.1-2023](https://standards.ieee.org/ieee/9274.1.1/7321/)
  ([Repo](https://github.com/adlnet/xAPI-Spec)) ([IEEE
  Repo](https://opensource.ieee.org/xapi))
- Veröffentlichung: 2013, Aktualisierung 2020 von IEEE
- Herausgeber: Advanced Distributed Learning Initiative (ADL), Rustici
  Software, IEEE
- Links: [ADLnet xAPI](https://adlnet.gov/projects/xapi/), [xAPI
  Overview](https://xapi.com/overview/)

Der xAPI-Standard definiert die Kommunikation zwischen
Lernmanagementsystemen (LMS) und Lerninhalten. Die Implementierung des
Standards erlaubt es, dass Lerninhalte in verschiedene LMS importiert
oder exportiert werden können. xAPI ermöglicht das Sammeln
verschiedenster Lernaktivitätsdaten. Diese Daten werden in einem
sogenannten Learning Record Store (LRS) gespeichert, dessen Aufbau
ebenfalls in dem Standard spezifiziert wird. xAPI gilt als Nachfolger
von SCORM, wobei xAPI in der Lage ist, umfangreiche Informationen zu
Lernaktivitäten flexibler zu sammeln, auch in Lernsituationen, die
offline stattfinden. xAPI nutzt Standard-REST-Schnittstellen und JSON
als Datenformat. Um ein gemeinsames Vokabular festzulegen, können
xAPI-Profile erstellt und genutzt werden. Damit soll sichergestellt
werden, dass verschiedene Systeme die Daten gleich interpretieren
können. Ein Beispiel für ein solches Vokabular ist cmi5, welches die
Adaption von xAPI durch Konkretisierung bestimmter Vokabulare
beschleunigen soll.

Registries (Profile, Vokabular):

- TinCan Registry:
  [https://registry.tincanapi.com](https://registry.tincanapi.com/)
- xAPI Profile Server:
  [https://profiles.adlnet.gov](https://profiles.adlnet.gov/)
- Common Education Data Standards: [Learner Action
  Type](https://ceds.ed.gov/element/000934)

Metriken und Indikatoren: [OpenLAIR EduTec
Tool](https://edutec-tool.github.io)

**cmi5: Ein xAPI-Profil**

- Industriestandard
- Aktuelle Version: [cmi5
  Projekt](https://aicc.github.io/CMI-5_Spec_Current/)
  ([Repo](https://github.com/AICC/CMI-5_Spec_Current))
- Veröffentlichung: 2018
- Herausgeber: Advanced Distributed Learning Initiative (ADL), Rustici
  Software
- Links: [xAPI.com/cmi5](http://xapi.com/cmi5), [ADLnet.gov
  cmi5](https://adlnet.gov/projects/cmi5-specification/)

"cmi5" ist ein xAPI-Profil, welches als Brücke zwischen xAPI und SCORM
dienen soll. Dies geschieht durch die Definition von
Interoperabilitäts-Regeln hinsichtlich des Aufrufs von Content, der
Autorisierung, der Rückmeldung von Daten sowie der Kursstruktur. Damit
werden dem LMS im Grunde die Regeln mitgeteilt, wie xAPI-Daten
verarbeitet und korrekt zurückgemeldet werden können.

**(IMS) Content Packaging (CP)**

- Gremienstandard
- Aktuelle Version: [Content Packaging
  Specification](http://www.imsglobal.org/content/packaging/index.html)
  (IEEE LTSC P1484.17)
- Veröffentlichung: 2001, Letzte Version (v1.1.2, 2004; v1.2 Public
  Draft v2.0, 2007)
- Herausgeber: 1EdTech

Content Packaging beschreibt ein Datenformat für das E-Learning, welches
Strukturen der Materialien zwecks Interoperabilität zwischen
Lernsystemen vereinheitlicht. Der Standard gewährleistet Import- und
Exportfunktionen für den Austausch von Material. Der Standard wurde in
SCORM adaptiert.

**(IMS) Common Cartridge (CC)**

- Gremienstandard
- Aktuelle Version: [Common Cartridge
  Specification](https://www.imsglobal.org/cc/index.html)
- Veröffentlichung: 2009, v1.3 2013 und Common Cartridge Profil 2015
- Herausgeber: 1EdTech
- Links:
  - [Common Cartridge
    (CC)](https://www.imsglobal.org/activity/common-cartridge) @ IMS
    Global
  - [What is the Common Cartridge
    Standard?](https://ed.link/community/common-cartridge/)

Common Cartridge umfasst eine Reihe von Standards, die von 1EdTech
(vormals IMS Global) entwickelt wurden, um die Interoperabilität von
Inhalten in verschiedenen Systemen (LMS) zu ermöglichen. Das Format ist
dabei äußerst flexibel und erlaubt die Beschreibung sowie die Portierung
von Aufgaben und Tests, digitalen Inhalten, Kursen und anderen
Elementen. Für den Zusammenhang und die Unterschiede zu SCORM s.u.

**(IMS) Simple Sequencing Specification (SSQ)**

- Gremienstandard
- Aktuelle Version: [Simple Sequencing
  Specification](https://www.imsglobal.org/simplesequencing/index.html)
  ([Archiv](https://web.archive.org/web/20231210144921/https://www.imsglobal.org/simplesequencing/index.html))
- Veröffentlichung: 2003 (v. 1.0)
- Herausgeber: 1EdTech

Der Standard definiert die Sequenzierung von Lernerfahrungen, sodass
diese plattformübergreifend konsistent ablaufen. SCORM (Version 2004)
wurde von diesem Standard abgeleitet (nähere Details:
[scorm.com/scorm-explained/technical-scorm/sequencing](https://web.archive.org/web/20231207143333/https://scorm.com/scorm-explained/technical-scorm/sequencing/)).

### 3.1.5 Standards für Nutzende

Neben Lerninhalten sind die Lernenden selbst relevant. Dabei sind die
Profile von Lernenden und deren Transferierbarkeit zwischen Systemen
entscheidend für die Realisierung personalisierter Lerninhalte und
-pfade, sodass auch hier Standardisierungen sinnvoll erscheinen.

Standards:

- XBildung (XHochschule, XSchule, XBerufsbildung)
- Ed-Fi Core Student API
- Public and Private Information (PAPI) \[IEEE\]
- (IMS) Learner Information Package (1EdTech)

**XBildung**

- Staatlicher Standard
- Aktuelle Version: [XBildung](https://www.xbildung.de/)
- Veröffentlichung: 2020, wird stetig weiter aktualisiert
- Herausgeber: Land Sachsen-Anhalt

Zum Austausch von Daten zwischen Verwaltungssystemen ist es nötig, dass
die Daten zwischen den Systemen kompatibel sind. In Deutschland ist im
Rahmen der Umsetzung des Onlinezugangsgesetzes (OZG) das Projekt
XBildung damit befasst, einen einheitlichen Standard zu definieren.

XBildung ist ein übergreifender Datenaustauschstandard für den
Bildungsbereich. Der Standard soll es Akteuren im Bildungsbereich
ermöglichen, elektronische Daten in standardisierter Form untereinander
auszutauschen. Damit sollen schnellere Verfahren ermöglicht werden.
XBildung berücksichtigt dabei die Vorgaben des Onlinezugangsgesetzes
(OZG) sowie des Single Digital Gateway (SDG). Außerdem findet die
Entwicklung im Austausch mit Gremien rund um ELMO / EMREX und dem
Europass Learning Model statt. XSchule und XHochschule sind zwei
Fachmodule des Basismoduls XBildung. Die Spezifikationen sind frei
verfügbar und auf GitHub können Anmerkungen und Wünsche geäußert werden.

**Ed-Fi Core Student API**

Der Standard beschreibt eine Schnittstelle für Daten von Schüler\*innen
(K-12), die auch Leistungsdaten beinhalten. Das Datenmodell basiert auf
dem Ed-Fi Unifying Data Model (UDM).

**(IMS) Learner Information Package (1EdTech)**

Der Standard beschreibt Charakteristiken von Lernenden, etwa
demografische Daten, Qualifikationen, (Lern-)Ziele, Kompetenzen,
Zugänglichkeit (Sprachkenntnisse, Beeinträchtigungen, Lernpräferenzen
(bspw. in den Dimensionen “kognitiv”, ”physisch”, “technologisch”).

**Public and Private Information (PAPI) \[IEEE\]**

- Veröffentlichung: 2000

Ziel des Standards ist es, verschiedene Kategorien über Lernende zu
erfassen, um beispielsweise Lernprofil und -präferenzen (Lernstil,
Lernort, verfügbare Technologie) sowie Lernergebnisse (Portfolio) von
Lernenden austauschen und in Lernumgebungen verfügbar machen zu können
[@pawlowskieevzecl2001, S. 107f]. Dadurch können Wechsel zwischen
Bildungsanbietern standardisiert erfolgen, sodass auch Rechte der
Personen, wie das Recht auf Datenübertragbarkeit gemäß Art. 20 DSGVO,
vereinfacht wahrgenommen werden können. Der Standard ermöglicht die
Personalisierung von Lernumgebungen und Lernprozessen sowie die kurs-
und ressourcenübergreifende Nachnutzung von Lern- und Leistungsdaten,
birgt jedoch auch datenschutzrechtliche Hürden [@baumgartnerepalmff2002], vergleichbar mit Ansätzen zur Implementierung von Learning Analytics.

**(IMS) Learner Information Package (1EdTech)**

- Veröffentlichung: <span class="mark">2003</span>

Der Standard baut auf PAPI auf und definiert ein Basismodell eines
Lernenden.

### 3.1.6 Standards für Tests und Quizze

Um die Portabilität von Test und Quizze (“*Assessments”*) zwischen
Systemen zu gewährleisten, sind verschiedene Standards entwickelt
worden. Auch hier kann die Verwendung eines Standards einen
Vendor-Lock-In vermeiden.

Standards:

- bitmark
- (IMS) Question and Test Interoperability (QTI) \[1EdTech\]
- Accessible Portable Item Protocol (APIP)

**bitmark**

- Industriestandard
- Aktuelle Version:
  [https://docs.bitmark.cloud](https://docs.bitmark.cloud/)
- Veröffentlichung: 2020
- Herausgeber: [bitmark
  Association](https://www.bitmark-association.org/)

Bitmark [wird nach eigenen Angaben](https://docs.bitmark.cloud/) als als
“Content- and mobile-first standard” für digitale und interaktive
Lehrbücher bezeichnet. Der Standard definiert ein JSON-basiertes
Datenmodell und die bitmark markup language. Aus der Anforderung,
Lehrbücher zu digitalisieren und interaktiv zu gestalten, hat bitmark
einen Standard entwickelt, der es ermöglicht, Inhalte und Quizze digital
abzubilden. Dabei wird die visuelle Repräsentation des Contents strikt
von der Modellierungsebene getrennt. Die Entwicklung wird dabei u.a.
[von Cornelsen unterstützt](https://www.bitmark-association.org/blog/why-we-need-open-standards-to-enable-successful-digital-teaching).

**(IMS) Question and Test Interoperability (QTI) \[1EdTech\]**

- Gremienstandard
- Aktuelle Version: <http://www.imsproject.org/question/index.html>
- Veröffentlichung: 1999, aktuelle Version ist v3.0 von 2020
- Herausgeber: 1EdTech

1EdTech Question and Test Interoperability ist eine
1EdTech-Spezifikation und definiert ein Datenformat, um Prüfungsformate
in Formen von Tests und Assessments in verschiedenen LMS oder anderen
Anwendungen nutzen zu können. Es können die Prüfungsinhalte, -formate,
die jeweiligen Antworten sowie das Bewertungsschema hinterlegt werden.
In der aktuellen Version 3.0 wurden die Arbeiten von QTI und APIP
zusammengeführt, sodass nun auch Accessibility-Komponenten in QTI
implementiert wurden.

**Accessible Portable Item Protocol (APIP)**

- Gremienstandard
- Aktuelle Version: http://www.imsglobal.org/apip/index.html
- Veröffentlichung: 2014
- Herausgeber: 1EdTech

Das Accessible Portable Item Protocol (APIP) ist ein Standard des
1EdTech-Konsortiums und befasst sich mit dem Austausch und der
Interoperabilität von Testobjekten zwischen verschiedenen Systemen.
Dabei wird auf QTI aufgebaut. Zusätzlich zu QTI definiert APIP "Access
Features", um die enthaltenen Objekte auch Lernenden mit verschiedenen
Beeinträchtigungen zugänglich zu machen. In der aktuellen Version 3.0
von QTI wurden die Arbeiten von QTI und APIP zusammengeführt, sodass nun
auch Accessibility-Komponenten in QTI implementiert wurden.

### 3.1.7 Standards für Toolintegrationen

Um Tools und Services nahtlos miteinander zu verknüpfen, kann der
LTI-Standard genutzt werden. Dabei lassen sich auch Informationen wie
erreichte Punktzahlen von einem System zum anderen übertragen und dort
weiterverwendet werden.

Standards:

- Learning Tools Interoperability (LTI) \[EdTech\]

**Learning Tools Interoperability (LTI)**

- Gremienstandard
- Aktuelle Version:
  <https://www.imsglobal.org/activity/learning-tools-interoperability>
- Veröffentlichung: 2010, aktuelle Version 1.3. 2019
- Herausgeber: 1EdTech

Learning Tools Interoperability (LTI) ist ein Standard der 1EdTech
(ehemals IMS Global). LTI ermöglicht die Einbindung von externen Tools
in ein LMS, ohne dass sich die Nutzer\*innen neu anmelden müssen. Dabei
wird ein sicherer Datenaustausch gewährleistet, der beispielsweise auch
die Rückmeldung zu erreichten Punktzahlen in dem Tool an das LMS melden
kann. Eine Besonderheit in der Versionierung des Standards besteht
darin, dass v1.3. die aktuelle Version ist, obwohl es auch eine v2.0
gab.

<img src="media/image6.png" style="width:6.26772in;height:3.16667in"
alt="Anwendungsfelder verschiedener Metadatenstandards" />

Grafik: *Anwendungsfelder verschiedener Metadatenstandards* (Rörtgen et
al., 2023, S. 147)

## 3.2 Was sind Linked Data und das Resource Description Framework?

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
<li><p>Was sind Linked Data und das Resource Description
Framework?</p></li>
<li><p>Was sind Vorteile dieser Technologien?</p></li>
</ul></td>
</tr>
</tbody>
</table>

In den vorigen Abschnitten ist bereits öfter von “Linked Data” und dem
“Resource Description Framework (RDF)” die Rede gewesen. Die Verwendung
dieser Technologien und Standards fördert die Interoperabilität von
Metadaten und damit deren Verbreitung sowie Akzeptanz [@zengsi2009]. Dies führt zu einer Harmonisierung und erwünschten
Synergieeffekten innerhalb des Marktes [@golubtrkosfua2014]. Da sich
zeigt, dass immer mehr Metadatenstandards auf diese Technologien setzen,
sollen diese hier kurz erklärt werden.

**Linked Data**

Linked Data ist ein Konzept in der Semantic Web Technologie, das darauf
abzielt, Daten so zu strukturieren und zu verlinken, dass sie leichter
von Maschinen gelesen und verstanden werden können. Es basiert auf dem
Prinzip, dass Daten durch Verknüpfungen (Links) miteinander verbunden
sind, ähnlich wie Hyperlinks im World Wide Web. Diese Verknüpfungen
ermöglichen es, komplexe Beziehungen zwischen verschiedenen Datensätzen
herzustellen und sie in einer Weise darzustellen, die für Menschen und
Maschinen gleichermaßen verständlich ist.

Ein zentrales Merkmal von Linked Data ist die Verwendung von URIs
(Uniform Resource Identifiers), um Ressourcen eindeutig zu
identifizieren. Jede Ressource in einem Linked Data Set hat eine
eindeutige URI, die als Link verwendet wird, um sie mit anderen
Ressourcen zu verbinden. Dies ermöglicht es, Daten aus verschiedenen
Quellen zusammenzuführen und zu integrieren, ohne dass Änderungen an den
ursprünglichen Daten erforderlich sind.

Zur Umsetzung von Linked Data wird häufig das Resource Description
Framework (RDF) verwendet, um Daten in einer strukturierten Form zu
beschreiben. RDF ist eine Sprache, die es ermöglicht, Informationen über
Ressourcen in einem maschinenlesbaren Format zu speichern. Mit RDF
können Daten in Form von Subjekt-Prädikat-Objekt-Triplets dargestellt
werden, womit es einfach wird, Beziehungen zwischen verschiedenen
Datenpunkten zu modellieren (s.u.).

Tim Berners-Lee formuliert vier grundlegende Prinzipien von Linked Data:

1.  Nutze URIs (Uniform Resource Identifiers), um Ressourcen eindeutig
    zu identifizieren
2.  Nutze HTTP URIs, damit diese Informationen aufgerufen werden können
3.  Stelle diese Informationen mithilfe von Standards dar (RDF, SPARQL)
4.  Nutze dabei HTTP URIs, um verschiedene Datensätze miteinander zu
    verlinken und die Auffindbarkeit von Daten zu verbessern
    [@berners-leelddi2006]

Um Linked (Open) Data-Prinzipien [@berners-leelddi2006] [@bizerldwl2008] [@petzlodzs2023] zu adaptieren, ist die Wahl des Metadatenstandards entscheidend.
Durch Berücksichtigung dieser Prinzipien können Ressourcen
und Dienste miteinander vernetzt und rekurrierende Herausforderungen
adressiert werden, unter anderem:

- Integration und Vernetzung von Ressourcen aus verteilten Systemen,
  etwa heterogene Bestände aus Repositorien
- Abbildung von Lebenszyklen der Ressourcen, beispielsweise erwartbare
  frequente Änderungen, insbesondere auch im Zuge von Open Educational
  Practices (OEP)
- Austausch und Harmonisierung von Metadaten durch Mapping in
  ETL-Prozessen
- Etablierung kontrollierter Vokabulare zur Vereinheitlichung der
  Semantik
- Automatisierte Anreicherung von Ressourcen mit Metadaten zur
  Kontextualisierung

Eigenschaften von Linked Data im Hinblick auf digitale Objekte:

- eindeutige, zitierfähige und stabile Referenzierbarkeit [@petzlodzs2023]
- Vokabularien, die Attribute der Objekte beinhalten [@petzlodzs2023]

**Resource Description Framework**

Das Resource Description Framework (RDF) ist ein Datenmodell, das vom
World Wide Web Consortium (W3C) als Standard zur Beschreibung von Daten
im Web konzipiert wurde, beispielsweise über die Verwendung von
[RDFa](https://rdfa.info/), [JSON-LD](https://json-ld.org/) oder
[Turtle](https://www.w3.org/TR/turtle/). Durch diese Form können
Metadaten für Menschen und Maschinen verständlich bereitgestellt werden.
Dieser Ansatz ist kompatibel zu Linked (Open) Data-Prinzipien (s.o.),
welche das RDF zur Publikation strukturierter Metadaten verwenden, um
verschiedene Ressourcen und Datenquellen miteinander zu vernetzen und
darüber die Ressourcen mit weiteren Metadaten anzureichern [@bizerldwl2008] [@dietzeierwdsca2013].
Der RDF-Ansatz eignet sich insbesondere, da hier die eindeutigen und persistenten Uniform Resource
Identifier (URI, wie bspw. eine URL) zur Identifikation von Ressourcen
genutzt werden, deren Vorteil darin besteht, dass diese als global
eindeutige Kennungen auch in verteilten Systemen referenziert werden
können. Es dient der Modellierung von Daten und möglicher Aussagen über
diese [@w3crcas2024] [@w3crs2024].
Im RDF-Modell besteht jede Aussage aus drei
Einheiten: Subjekt, Prädikat und Objekt [@pomerantzm2015, S. 140f].
Eine Besonderheit und auch das Merkmal des Bezugs zum Web ist die
Eigenschaft, dass Subjekt (Ressource), Prädikat (Attribut) und Objekt
(Wert des Attributs) durch eine URI dargestellt werden. Das Objekt kann
auch als “Literal” auftauchen, d.h. eine Zeichenkette “Alice” oder eine
Zahl “42” als Wert annehmen.

Tabelle: *Beispiel für eine Aussage im RDF-Modell*

<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Aussagen</strong></td>
<td><strong>RDF-Tripel</strong> <a href="#fn1" class="footnote-ref"
id="fnref1" role="doc-noteref"><sup>1</sup></a></td>
</tr>
<tr class="even">
<td><strong>Mein Haustier<br />
ist<br />
ein Hund.</strong></td>
<td><strong>http://example.org/my_dog<br />
<a
href="http://www.w3.org/1999/02/22-rdf-syntax-ns#type">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</a><br />
<a
href="https://www.wikidata.org/entity/Q144">https://www.wikidata.org/entity/Q144</a>.</strong></td>
</tr>
<tr class="odd">
<td><strong>Mein Haustier<br />
hat den Namen<br />
Lica.</strong></td>
<td><strong>http://example.org/my_dog<br />
<a href="http://schema.org/name">http://schema.org/name</a><br />
“Lica”.</strong></td>
</tr>
<tr class="even">
<td><strong>Mein Haustier<br />
ist befreundet mit<br />
Bella.</strong></td>
<td><strong>http://example.org/my_dog<br />
<a
href="http://xmlns.com/foaf/spec/#term_knows">http://xmlns.com/foaf/spec/#term_knows</a>
http://example.org/neighboursDog.</strong></td>
</tr>
</tbody>
</table>
<aside id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Die verwendeten “example.org” URIs lösen nicht auf, da
sie hier nur Beispiele sind. Die anderen URIs lösen hingegen auf und
geben nützliche Informationen wie Definitionen, Beispiele und weitere
Links.<a href="#fnref1" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</aside>

Das RDF ermöglicht es also flexibel, die Existenz und Bedeutung
konkreter Zusammenhänge zwischen verschiedenen Ressourcen explizit zu
modellieren [@heathldewgds2011], sodass vernetztes Wissen entsteht und
durch Inferenzmechanismen neue Erkenntnisse gewonnen werden können.

RDF kann neben der Darstellung einfacher Daten auch für die Erstellung
komplexer Ontologien (vgl. semantische Treppe, s.u.) verwendet werden.
Aufgrund der Verknüpfungen können die Daten als Graph modelliert werden,
sodass ein Netzwerk zwischen den Ressourcen (Knoten der Graphen), ihren
Eigenschaften sowie den jeweiligen Beziehungen (Kanten der Graphen)
entsteht. RDF ermöglicht als Graph-basiertes Datenformat die formale
Repräsentation einer solchen Ontologie (vgl. auch Knowledge Graphs).

**RDF-Star**  
RDF-Star ist eine Erweiterung des RDF-Modells, mit welcher in
vereinfachter Weise Aussagen über die jeweiligen Beziehungen zwischen
den Konzepten getroffen werden können. Auf diese Weise können neben
Konzepten auch die entsprechenden Beziehungen mit Metadaten verknüpft
werden.

Aufgrund der Verwendung von HTTP-URIs, der Verlinkung und der
strukturierten Darstellung der Daten können in RDF modellierte Daten
leicht von Maschinen verarbeitet werden. Aktuelle Entwicklungen von
Metadatenstandards auf internationaler, europäischer und nationaler
Ebene (LMT, Europass, AMB) setzen auf RDF als Basistechnologie, da der
Standard gut dokumentiert, leicht erweiterbar und hoch interoperabel
ist.

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
<li><p>Linked Data bezeichnet das Prinzip, Daten, ähnlich den Hyperlinks
im World Wide Web, miteinander zu verlinken.</p></li>
<li><p>Resource Description Framework (RDF) ist ein graph-basiertes
Datenmodell, das sich besonders zum Datenaustausch im Web eignet und den
Linked Data Prinzipien folgt.</p></li>
<li><p>Das Datenmodell ist hoch interoperabel, sodass es sich gut für
die Zusammenführung heterogener Daten eignet.</p></li>
</ul></td>
</tr>
</tbody>
</table>

## 3.3 Was sind Vokabulare?

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
<li><p>Wofür benötige ich Vokabulare beim Datenaustausch?</p></li>
<li><p>Welche Technologien kann ich für die Arbeit mit Vokabularen
nutzen?</p></li>
</ul></td>
</tr>
</tbody>
</table>

Wissensorganisationssysteme (Knowledge Organization Systems, KOS)
existieren in verschiedener Komplexität. Die semantische Treppe stellt
Varianten zur Repräsentation von Konzepten in aufsteigender semantischer
Reichhaltigkeit dar [@blumauerswustzbuu2006]. Je höher die Stufe,
desto vielseitiger können die sodann komplexer werdenden semantischen
Netze auch in automatisierten Auswertungen verwendet werden [@blumauerswustzbuu2006].

Grafik: *Erweiterte semantische Treppe* (nach [@blumauerswustzbuu2006, S. 16])

**Semantische Treppe**

- **Glossar**, z. B. als nicht-hierarchische Liste von Begriffen oder
  Wörtern zur Vereinheitlichung der Schreibweisen von Konzepten, ohne
  strukturelle Repräsentation.
- **Folksonomie,** z. B. als nutzergenerierte Schlagwörter zu
  verschiedenen Inhalten (Social Tagging) [@gaisergtbtstw2008] [@haynesmimrumiu2018, S. 199]
- **Typologie / Taxonomie,** z. B. als klassifizierende Zusammenstellung
  von Begriffen und ihren hierarchischen Beziehungen (Über- und
  Unterbegriffen, bspw. *broader / narrower terms*), jedoch ohne weitere
  Beziehungen zwischen den Elementen [@ullrichtttmov2003, S. 3f].
  Während Typologien eher konzeptionell, deduktiv und qualitativ
  hergeleitet werden, sind Taxonomien eher empirisch, induktiv und
  quantitativ erstellt [@baileyttict1994] [@haslergdhkmfat2015, S. 24]. Häufig
  werden die Begriffe synonym verwendet und allgemein als
  Klassifikationen bezeichnet.
- **Thesaurus**, z. B. als systematische Zusammenstellung von
  Deskriptoren und der strukturellen Repräsentation von Beziehungen wie
  Hierarchien. Darüber hinaus kann es zudem auch Ähnlichkeits-, Synonym-
  oder Antonym-Relationen zwischen Konzepten geben [@haynesmimrumiu2018, S. 190f] [@ullrichtttmov2003, S. 4] (vgl. auch DIN 1463-1:1987-11, DIN
  1463-2:1993-10 sowie ISO 25964-1:2011-08, ISO 25964-2:2013-03).
- **Topic Map**, bestehend aus abstrakten Konzepten, Assoziationen und
  Gültigkeitsbereichen [@ullrichtttmov2003, S. 4f] (ISO/IEC 13250)
- **Ontologie**, die als formale Wissensrepräsentation komplexere
  Eigenschaften und Relationen zwischen Konzepten einer oder mehrerer
  Domänen regelbasiert modellieren kann [@borstozsadl2006] [@grubertapos1993] [@pomerantzm2015 S. 46f], sodass diese von Maschinen interpretiert
  werden können [@ehrigowm2004]. Diese Repräsentation basiert auf
  einem gemeinsamen Verständnis von Konzepten [@grubereotiswissais2004] und
  ermöglicht logische Schlussfolgerungen (Reasoning) idealerweise
  bereits auf Ebene der Ontologie und nicht erst innerhalb einer
  Softwareanwendung [@blumauerswustzbuu2006].
  Über derartige Inferenzmechanismen können neue Aussagen über Objekte gebildet und
  evaluiert werden, um dieses neu gewonnene Wissen beispielsweise sodann
  unmittelbar in Softwareanwendungen zu integrieren. Über Ontologien
  kann Domänenwissen modelliert werden.

**Warum werden kontrollierte Vokabulare verwendet?**

- Qualitätssicherung bei der Erfassung von Daten (Konsistenz)
- Standardisierung der Terminologie verbessert Recherchierbarkeit, z. B.
  durch Vereinheitlichung der Vielfalt an Bezeichnungen, darunter
  mögliche Vorzugsbenennungen bei Synonymen
- Erhöhung der Zuverlässigkeit des Datenaustauschs (Interoperabilität)
- (Lexikalische) Ambiguität der natürlichen Sprache wird
  aufgelöst, z. B. durch Präzision der Bedeutung (u.a. auch Homonymie,
  Polysemie)
- Modellierung von Beziehungsstrukturen

Bei der Zusammenstellung von Daten aus verschiedenen Quellen stellt sich
heraus, dass die gleichen Dinge oft unterschiedlich bezeichnet werden,
bedingt beispielsweise durch die Verwendung von Akronymen (“Deutsch Als
Zweitsprache”, “DaZ”), unterschiedlichen Schreibweisen beim Gendern
(“Schüler:innen”, “Schüler\*innen”, “SchülerInnen”) oder auch an lokalen
Gegebenheiten. So wird in einem Bundesland ein Schulfach bei gleichen
Lehrinhalten als “Sachunterricht”, in dem anderen als “Heimatunterricht”
bezeichnet [@rortgenhkpsmzhi2023].

Um solchen Herausforderungen zu begegnen, empfiehlt sich der [Einsatz
kontrollierter Vokabulare bei der
Datenharmonisierung](https://doi.org/10.25625/DN1X3A) [@rortgenmemsipw2021].

Der folgende, leicht adaptierte, Auszug stammt aus der [Einführung in
SKOS am Beispiel von Open Educational Resources
(OER)](https://w3id.org/kim/skos-einfuehrung/) von [Felix
Lohmeier](https://felixlohmeier.de), [Adrian
Pohl](https://lobid.org/team/ap) und [Jakob
Voß](https://www.wikidata.org/wiki/Q15303972) und gibt einen kurzen
Einblick in das Thema [@lohmeieresaboero2023]:

> Grob betrachtet bestehen alle Metadaten aus Elementen und zugehörigen
> Werten.
>
> Beispiel:
>
> **title**: Beispiel
>
> **creator**: Anne
>
> **date**: 2020-04-21
>
> **language**: de
>
> **subject**: Bauingenieurwesen
>
> Um diese für Menschen gut lesbare Beschreibung konsistent innerhalb
> eines technischen Systems abzubilden, wird ein Metadatenschema
> definiert. Dieses legt fest, welche Elemente es gibt, ob diese
> verpflichtend oder optional sind und welche Inhaltstypen sie haben
> dürfen. Ein Schema könnte vereinfacht so aussehen:
>
> **mandatory**:
>
> \- **title**: string
>
> \- **creator**: string
>
> **optional**:
>
> \- **date**: ISO8601
>
> \- **language**: ISO639-1
>
> \- **subject**: string
>
> Hier ist die Datumsangabe nach ISO 8601 (JJJJ-MM-TT) und die
> Sprachangabe nach ISO 639-1 (zweistellige Sprachkürzel) formatiert.
> Fehlerhafte Eingaben wie 2020-21-04 (Monat und Tag vertauscht) oder dd
> (nicht existentes Sprachkürzel) können bei der Eingabe vom System
> erkannt und mit einer Fehlermeldung quittiert werden. Im Element
> subject ist jede Zeichenkette (string) erlaubt, d. h. Schreibfehler
> wie “Bauingeneurwesen” oder ein ähnliches Wort wie Bautechnik werden
> vom System nicht als Problem erkannt. Nehmen wir an, wir wollen auf
> einem Hochschulschriftenserver die Fachdisziplin eindeutig erfassen,
> damit in einer Recherche danach gefiltert werden kann und in einer
> internen Statistik die Schriften nach Fachdisziplin gezählt werden
> können. Dann bietet es sich an, im Metadatenschema für das Element
> “subject” eine Wortliste zu definieren, die alle an der Hochschule
> vertretenen Fachdisziplinen beinhaltet. Durch die begriffliche
> Kontrolle werden Schreibfehler, Bedeutungs- und Bezeichnungsvielfalt
> vermieden. Die dadurch erzeugte Einheitlichkeit fördert die
> Auffindbarkeit, Maschinenlesbarkeit und Nachnutzbarkeit der Metadaten.

Eine solche Wortliste wird auch als “kontrolliertes Vokabular"
bezeichnet. Für eine vertiefende Auseinandersetzung wird die
referenzierte Einführung in SKOS und das dazugehörige Tutorial
empfohlen.

**Standards für Ontologien**

- Web Ontology Language ([OWL 2](http://www.w3.org/TR/owl-overview),
  [OWL-S](http://www.w3.org/submissions/OWL-S)) (früher:
  [DAML+OIL](https://www.w3.org/TR/daml+oil-reference/))
- Web Service Modeling Ontology
  ([WSMO](http://www.w3.org/submissions/WSMO/)*)*
- Simple Knowledge Organisation System
  ([SKOS](http://www.w3.org/TR/skos-reference))

### 3.3.1 Standards für Vokabulare

Zur Darstellung kontrollierter Vokabulare existieren verschiedene
Standards.[^12] Der ANSI/NISO-Standard gibt Richtlinien und Konventionen
für einsprachige Vokabulare heraus (NISO, 2010). Der internationale
Standard für Thesauri und Interoperabilität mit anderen Vokabularen
([ISO 25964](https://www.niso.org/schemas/iso25964)) liefert ein
generisches Datenmodell, ein Schema zum Datenaustausch sowie Richtlinien
zur Erstellung und Föderation von Thesauri.

Der ISO-Standard ist kompatibel zum SKOS [@desmedtci2ssxm2013], welches
diesen beispielsweise um Portierungsempfehlungen von Thesauri für
webbasierte Anwendungen ergänzt. So bietet SKOS insbesondere
Möglichkeiten zur Beschreibung und Organisation von Relationen zwischen
im Web publizierten Ressourcen. SKOS umfasst verschiedene
Wissensorganisationssysteme, da sie eine ähnliche Struktur aufweisen und
in vergleichbaren Anwendungen verwendet werden [@milessskosr2009].

**Expressivität**

Der ISO-Standard und SKOS erlauben die Repräsentation von

- Konzepten sowie -gruppen und -reihen
- Hierarchischen und assoziativen Relationen (siehe Kapitel “Typen von
  Metadaten: Strukturelle Metadaten”) sowie Äquivalenzrelationen
- Deskriptionen (bevorzugte Benennungen) und Nicht-Deskriptionen (nicht
  bevorzugte Benennungen)
- Anmerkungen/Erläuterungen (Definitionen, scope notes), auch
  redaktionell (Änderungsvermerke)

**SKOS**

Das Simple Knowledge Organization System (SKOS) ist eine
Beschreibungssprache für kontrollierte Vokabulare (Thesauri,
Klassifikationen, Taxonomien usw.). Ziel des Standards ist die einfache
Veröffentlichung und Nutzung von kontrollierten Vokabularen als [Linked
Open Data](#_3.2_Was_sind). SKOS wurde 2009 [vom W3C als Empfehlung
verabschiedet](https://www.w3.org/TR/2009/REC-skos-reference-20090818/)
und findet seitdem zunehmende Verbreitung als Austauschformat:

- Bedeutende allgemeine kontrollierte Vokabulare (z. B. [Thesaurus der
  UNESCO](https://vocabularies.unesco.org/browser/thesaurus/en/) oder
  der EU) und zahlreiche fachspezifische (z. B. [Thesaurus des Education
  Resources Information Center](https://eric.ed.gov/?ti=all) (ERIC),
  [Standard-Thesaurus
  Wirtschaft](https://zbw.eu/stw/version/latest/about.de.html) der ZBW,
  [Thesaurus Sozialwissenschaften](https://lod.gesis.org/thesoz/de/) von
  [GESIS](https://lod.gesis.org/de/), Ontologien für
  [Biowissenschaften](https://obofoundry.org/)) wurden bereits als SKOS
  veröffentlicht.
- Die meisten aktuellen Thesaurus-Management-Systeme unterstützen SKOS.
  Es gibt außerdem zahlreiche Tools, welche die Veröffentlichung und
  Nutzung von Vokabularen als SKOS vereinfachen.

SKOS wird im graph-basierten Datenmodell [Resource Description
Framework](#_3.2_Was_sind) (RDF) kodiert und unterstützt das RDF-Schema
([RDFS](https://www.w3.org/TR/rdf12-schema/)). Durch diese Form der
Kodierung ist das Vokabular maschinenlesbar und web-kompatibel. SKOS
unterstützt Mehrsprachigkeit, jeder Begriff erhält einen Identifier
(URI) und Verknüpfungen mit externen Vokabularen im Web sind möglich.
Als Datenformate stehen die Serialisierungen zur Verfügung, die auch RDF
bietet, also [RDF/XML](http://www.w3.org/TR/rdf-syntax-grammar/),
[N-Triples](https://format.gbv.de/rdf/ntriples),
[Turtle](https://format.gbv.de/rdf/turtle),
[JSON-LD](https://format.gbv.de/rdf/json-ld) und weitere.

### 3.3.2 Veröffentlichung von Vokabularen mit SKOS

Um mit SKOS erstellte Vokabulare zu veröffentlichen, gibt es
verschiedene Möglichkeiten ([Poolparty](https://www.poolparty.biz/),
[SKOSMOS](https://skosmos.org/), [iQvoc](https://iqvoc.net/)). Diese
sind jedoch alle recht aufwändig zu installieren und zu betreiben. Als
Gegenentwurf wurde vom Hochschul-bibliothekszentrum NRW die Software
[SkoHub Vocabs](https://skohub.io/) entwickelt (Rörtgen, 2021b; Rörtgen
& Pohl, 2023), die das Veröffentlichen von SKOS Vokabularen als
leichtgewichtige statische HTML-Seiten ermöglicht. Selbst eine
Bereitstellung der Vokabulare ohne eigenen Server ist möglich, indem
Funktionalitäten von GitHub genutzt werden, die das [Hosten eigener
statischer Webseiten
ermöglichen](https://github.com/skohub-io/skohub-pages).

Das Institut für Qualitätsentwicklung im Bildungswesen (IQB)
veröffentlicht seit kurzem ebenfalls die Bildungsstandards mit SKOS und
SkoHub Vocabs in einem
[Github-Repositorium](https://github.com/iqb-vocabs). Das
[Prüfungsarchiv Bayern](https://mediathek.mebis.bayern.de/archiv.php)
hat ebenfalls ein entsprechendes
[SKOS-Vokabular](https://jakjkga.github.io/skohub-docker-vocabs/index.de.html)
aufgesetzt und nutzt dies, um die Prüfungen zu beschreiben. Auch andere
Vernetzungsprojekte im Bildungsbereich, wie der Open Educational
Resource Search Index (OERSI) oder WirLernenOnline entwickeln und nutzen
SKOS-Vokabulare in ihren Profilen oder in der Datenharmonisierung und
veröffentlichen diese mit SkoHub Vocabs:

- [Vokabulare im Allgemeinen Metadatenprofil für
  Bildungsressourcen](https://dini-ag-kim.github.io/amb/draft/)
- [Vokabulare im Open Edu Hub / WirLernenOnline -
  Projekt](http://vocabs.openeduhub.de)

**Best practice-Empfehlungen für die Publikation kontrollierter
Vokabulare**

Die konkrete Darstellung der Erarbeitung eines Vokabulars sowie der
Veröffentlichung gehen über den Umfang dieses Kompendium hinaus. [Die
Einführung in SKOS am Beispiel von Open Educational Resources
(OER)](https://dini-ag-kim.github.io/skos-einfuehrung/#/) gibt hierzu
einen guten ersten Überblick. Grundsätzlich lassen sich folgende Best
Practices empfehlen:

- Persistenter Namensraum als URI (z. B. eigens kontrollierte Domain als
  Namespace oder Resolver wie W3ID, PURL, DOI)
- Dokumentation des Vokabulars mit grundlegenden Metadaten, bspw.
  Erstellende, Lizenz, Datum (Erstellung, Veröffentlichung,
  Überarbeitung).
- Repräsentationen für Mensch und Maschine unter gleicher URL
- Vokabular enthält grundlegende Metadaten, ggf. mehrsprachig
  (Beschriftungen, Beschreibungen, Definitionen, Notizen …)
- Nachnutzung von und Verweis auf andere Vokabulare, wo möglich
- Mapping auf andere Vokabulare

**Vokabular-Datenbanken** (Terminology registries)

Vokabular-Datenbanken enthalten Beschreibungen und Verweise auf
kontrollierte Vokabulare in verschiedenen Repräsentationsformen. Über
diese unterschiedlich komplex organisierten Wissensrepräsentationen
(Knowledge Organisation Systems) werden teils auch die Konzepte und
deren Beziehungen aufgeführt:

- Basic Register of Thesauri, Ontologies & Classifications
  ([BARTOC.org](https://bartoc.org/)),  
  enthält darüber hinaus als Meta-Registry auch weitere
  Vokabularregister.
- [TIB Terminology Service](https://terminology.tib.eu/ts) als
  Meta-Registry (u.a. Kollektion für Bildungsressourcen)
- Linked Open Vocabularies
  ([LOV](https://lov.linkeddata.es/dataset/lov/))
- Ontology Archive für OWL ([Archivo](https://archivo.dbpedia.org/list))
- Datendrehscheibe für Normdaten und Terminologien
  ([DANTE](https://dante.gbv.de/search))
- [NFDI4Ing Terminology
  Service](https://terminology.nfdi4ing.de/ts/ontologies)
  (Ingenieurwissenschaften)
- OBO Library ([OBO Foundry](https://obofoundry.org/))
- Getty Vocabularies: LOD ([GVP](https://vocab.getty.edu/))
- [EU-Vokabulare](https://op.europa.eu/en/web/eu-vocabularies/controlled-vocabularies),
  wie Code-Listen, Taxonomien und Thesauri
- [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page)
- Normvokabular, z. B. gemeinsame Normdatei (GND) ([GND
  Explorer](https://explore.gnd.network/),
  [Lobid-GND](https://lobid.org/gnd/search?q=),
  [Katalog](https://portal.dnb.de/opac.htm))

**Mapping von Vokabularen**

Diese Tools können für das Mapping, d.h. das Verknüpfen verschiedener
Vokabulare, und die weitere Annotation von (SKOS-)Vokabularen benutzt
werden:

- [Cocoda](https://coli-conc.gbv.de/cocoda/) (Rörtgen, 2021a)
- [Voclink](https://www.dnb.de/DE/Professionell/Metadatendienste/Metadaten/Voclink/voclink_node.html)
  (GND)

**Publikation von Vokabularen**

Diese Tools können zur Veröffentlichung von (SKOS-)Vokabularen genutzt
werden.

- [SkoHub](https://skohub.io/)
- [Poolparty](https://www.poolparty.biz/)
- [Skosmos](https://skosmos.org/)
- [iqvoc](https://iqvoc.net/)

**Explizite und implizite Nutzung von Werten kontrollierter Vokabulare**

Es gilt allgemein zu berücksichtigen, dass Metadatenfelder in der Praxis
nicht nur strikt entsprechend der jeweiligen Felddefinition verwendet
werden. Häufig gehen mit der Verwendung kontrollierter Vokabulare auch
subjektive Erwartungen an bestimmte Werte einher, z. B. hinsichtlich der
Interpretation oder Nutzung von Werten für zunächst nicht intendierte
Zwecke (vgl. bspw. implizite [Niveaustufen](#niveaustufe)). Auch werden
von Nutzenden womöglich implizite Zusammenhänge mit anderweitigen
Kriterien angenommen, z. B. kontextabhängig (vgl. bspw. [didaktische
Kontextualisierung](#didaktische-kontextualisierung-settings-und-szenarien)).
Daher unterscheidet sich der Verwendungszweck somit teilweise von der
intendierten Funktion und definierten, strikteren Semantik des
zugehörigen Feldes. Auch andere Modelle zur Beschreibung der
Verwendungszwecke von Metadaten berücksichtigen in vergleichbarer Weise
die Unterscheidung zwischen der tatsächlichen Nutzung und den
intrinsischen Eigenschaften der Metadaten [@haynesmimrumiu2018].

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
<li><p>Vokabulare sind feste Wertelisten, die definieren, welche Werte
bei einem Metadatenattribut eingetragen werden können.</p></li>
<li><p>Als Standard für die Publikation von Vokabularen hat sich das
“Simple Knowledge Organization System” (SKOS) etabliert.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### 3.3.3 Vokabulare zur Filterung von Suchergebnissen

**Logische Verknüpfungen innerhalb und zwischen Filtern**

Eine gängige Funktionsweise von Filtern eines Portals verwendet zur
Filterung der Suchergebnisse eine *Adjunktion* (‘ODER’-Verknüpfung)
anhand der selektierten Werte *innerhalb derselben Filterkategorie* und
eine *Konjunktion* (‘UND’-Verknüpfung) zur Kombination der verwendeten
*Filterkategorien miteinander*.

Dies bedeutet, dass aus allen ausgewählten Werten derselben
Filterkategorie nur ein einzelnes Kriterium auf das Suchergebnis
zutreffen muss (Beispiel: mindestens entweder A oder B oder C). Auch
Ressourcen, die Schnittmengen dieser Merkmale aufweisen, werden somit
als Suchergebnis aufgeführt. Diese gängige Funktionsweise von Filtern
bewirkt jedoch zugleich, dass Nutzende keine explizite Kombination von
Merkmalen (Beispiel: A+B, A+C, B+C, A+B+C) zur strikteren Filterung
auswählen können, die gemeinsam bei einem Suchergebnis auftreten
müssten. Durch die Verwendung der 'ODER'-Logik innerhalb einer
Filterkategorie können Nutzende nach mehreren Kriterien suchen und
Ergebnisse erhalten, die mindestens eines dieser Kriterien erfüllen. Die
'UND'-Logik zwischen den Filterkategorien stellt sicher, dass die
Suchergebnisse nur Einträge enthalten, die mindestens ein ausgewähltes
Kriterium aus jeder Filterkategorie erfüllen. Damit werden zugleich die
Nutzungsszenarien der Filter eingeschränkt. Dies geschieht in der Regel,
um ein ausgewogenes UI-/UX-Design zu realisieren oder technische
Implementationen zu vereinfachen.

Beispiele:

- Tabelle “Exemplarische Verknüpfung innerhalb und zwischen
  Filterkategorien”
- Anlage “Exemplarische Operatoren zur Implementierung einer
  Filter-Logik”

Tabelle: *Exemplarische Verknüpfung innerhalb und zwischen
Filterkategorien*

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 17%" />
<col style="width: 64%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Filterkategorie “Farbe”</td>
<td>Filterkategorie “Größe”</td>
<td>Erwartbare Eigenschaften der Suchergebnisse</td>
</tr>
<tr class="even">
<td>(x) grün<br />
(x) blau<br />
( ) gelb</td>
<td>(x) klein<br />
(x) mittel<br />
( ) groß</td>
<td>Die gefilterten Suchergebnisse besitzen für das Merkmal “Farbe”
entweder den Wert “grün”, “blau” oder beide Werte. Zusätzlich weisen die
Ergebnisse für Größe entweder den Wert “klein”, “mittel” oder beide
Werte auf.</td>
</tr>
<tr class="odd">
<td colspan="3">Finde Suchergebnisse, die folgende Kriterien erfüllen:
(grün ODER blau) UND (klein ODER mittel)</td>
</tr>
<tr class="even">
<td colspan="3">Es ist durch die logische Verknüpfung innerhalb und
zwischen den Filtern nicht unmittelbar möglich, ausschließlich
Suchergebnisse zu erhalten, denen sowohl “grün” als auch “blau” als
Farben zugeordnet sind.</td>
</tr>
</tbody>
</table>

*Lösungsansätze zur Flexibilisierung der Filterung*

Das [ComeIn-Portal](https://comein.nrw/portal/ressourcen/) bietet zur
Realisierung des Nutzungsszenarios der exklusiven Merkmalskombination
den “Stichwort”-Filter zusätzlich als Filter “Stichwort-Kombination” an,
damit eine Kombination von Merkmalen (A+B) zur Filterung möglich ist.
Eine x-fache Duplizierung sämtlicher Filter scheint jedoch keine
zufriedenstellende UI-/UX-Lösung. Vielmehr könnte es Nutzenden
vereinfachend ermöglicht werden, für jeden Filter die logische
Verknüpfung der ausgewählten Werte eigenständig zu wählen (vgl. Grafik
“Filter mit Auswahl der logischen Verknüpfung”). Unter Umständen könnte
eine solche Realisierung jedoch das UI überfrachten oder von Nutzenden
als kompliziert empfunden werden.

<img src="media/image7.tiff" style="width:4.52569in;height:3.15972in"
alt="Filter-Konzept mit Auswahl der logischen Verknüpfung" />Grafik:  
*Filter mit Auswahl der  
logischen Verknüpfung*

*Quelle: Eigener Screenshot
([KatalogPlus](https://hbz-ulbms.primo.exlibrisgroup.com/discovery/search?vid=49HBZ_ULM:VU2)),
UI © 2024 ULB Münster, ExLibris Primo Discovery Service*

**Filter-Logik: Ausweitung vs. Eingrenzung der Suchergebnisse**

Insbesondere kann somit zwischen Filterlösungen unterschieden werden,
die Suchergebnisse durch Auswahl weiterer Werte innerhalb desselben
Filters …

- … weiter eingrenzen, indem diese Kriterien jeweils zugleich erfüllt
  sein müssen (logische Operatoren: “UND”, “NICHT”)

oder

- … erweitern, indem weniger strikte Suchbedingungen gelten, bei denen
  nur mindestens ein ausgewähltes Kriterium erfüllt sein muss  
  (logischer Operator: “ODER”).

## 3.4 Woher stammen Metadaten?

Das Vorliegen einzelner Metadaten ist nicht als selbstverständlich zu
betrachten. Grundsätzlich ist von einer eher geringen
Metadatenerschließungsdichte bei Ressourcen auszugehen, die trotz
automatisierter Anreicherung zunächst insbesondere im Hinblick auf
didaktische Metadaten lückenhaft bleibt, wie die Erfahrung in
verschiedenen Projekten gezeigt hat [@abdel-qaderesdbolvl2022] [@arndtdkpfpcql2023].
Die Generierung von Metadaten kann auf unterschiedliche
Weisen erfolgen [@haynesmimrumiu2018, S. 170]:

- **Individuell**, beispielsweise durch Einzelpersonen mittels
  Metadaten-Formularen oder  
  -Editoren.
- **Redaktionell**, beispielsweise durch fachbezogene Communitys of
  Practice
- **Algorithmisch,** beispielsweise durch Inferenzsysteme oder
  regelbasiert (bspw. logische Abhängigkeiten zwischen Metadaten),
  beispielsweise automatisches Tagging [@koutsomitropoulossahfsduo2019] [@kushwahahmoersaoec2019] [@vallejo-figueroautmlodamer2018] 
- **KI-gestützt**, beispielsweise durch Analyse von Text-, Bild- oder
  Videoinhalten mittels Machine Learning-Verfahren zur automatischen
  Erschließung von Ressourcen und Erstellung von Metadaten (verwandte
  Projekte: [X5GON](https://www.x5gon.org/about/overview/),
  [EADTU](https://eadtu.eu/), [IT’s JOINTLY](https://its.jointly.info/),
  [Annif](https://annif.org/))

- **Crowd-basiert (Social Tagging),** beispielsweise durch Ansätze zur
  Einreichung oder Bewertung von inhaltlichen Vorschlägen zu Metadaten
  (u. a. Web of Trust) [@cooperdmitslrbcpd2020]

Die Herausforderungen, speziell bei der individuellen
Metadatengenerierung, sind bedingt durch den zeitlichen Aufwand und die
Komplexität des Unterfangens [@abdel-qaderesdbolvl2022] [@tischlernunmbsubob2022].

**Metadaten- und Konsolidierungsservice**

Da die Einarbeitung in Metadatenthemen aufwändig und nicht von allen
Bildungs- und Inhalteanbietern leistbar ist, bilden sich Metadaten- und
Konsolidierungsservices. Ein Beispiel im deutschsprachigen
Bildungsbereich ist WirLernenOnline / Open Edu Hub. Hier können Anbieter
ihre Inhalte manuell oder technisch unterstützt erfassen. Technische
Unterstützungsfunktionen generieren Metadaten und prüfen die
Inhaltequalität. Redaktionen helfen beim Erschließen, Prüfen und
Zusammenstellen von Sammlungen für Zielgruppen und Nutzungszwecke.
Metadaten werden von solchen Services in standardisierten Formaten
bereitgestellt und in Bildungsnetzwerke und Lernsysteme transferiert.

## 3.5 Wie gelingt der Datenaustausch in einer vernetzten Bildungslandschaft?

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
<li><p>Was ist Interoperabilität und welche Relevanz hat sie in einer
vernetzten Bildungslandschaft?</p></li>
</ul></td>
</tr>
</tbody>
</table>

Interoperabilität bezeichnet die Eigenschaft, Daten zwischen verteilten
Systemen mit möglichst minimalem Verlust auszutauschen [@rileyumwmwi2017, S. 2], sodass Objekte weitestgehend automatisiert auch in anderen Kontexten verwendet werden können [@duvalmswww2001, S. 592].
Sie bezeichnet darüber
hinaus die Vereinheitlichung von Prozessen und Architekturen [@blumauerswustzbuu2006, S. 18f.].
Interoperabilität wird hergestellt, indem
sich die Akteure, die Daten austauschen wollen, auf die Verwendung von
Standards einigen und ihre Daten entsprechend bereitstellen. Dabei
erlaubt ein Standard verschiedene Implementationen und fördert so den
Wettbewerb und die Zusammenarbeit zwischen verschiedenen Gruppen.
Interoperable Verfahren sind besonders zur Vermeidung von Datensilos[^13]
sinnvoll, um einen Datenaustausch und Möglichkeiten zur Nachnutzung zu
gewährleisten. Standardisierung ist somit eine Voraussetzung für die
weiträumige Nutzung von Bildungsressourcen, da sie verhindert, dass
Nutzende an proprietäre Systeme gebunden sind (Vendor Lock-in), um auf
diese Weise eine offene Bildungsinfrastruktur zu schaffen [@duvalsmesr2001, S. 458].

**Ziele der Interoperabilität**

- Austauschbarkeit von (verteilten) Daten verbessern (z. B. Nutzung
  gemeinsamer Datenmodelle)
- Wahrung der Autonomie und Souveränität der verteilten Dienste
- Datenaustausch mit möglichst geringem Informationsverlust
- Sichtbarkeit von Daten erhöhen
- Automatisierung von Austauschprozessen ermöglichen
- Integrierbarkeit von Daten gewährleisten (z. B. in verschiedenen
  Applikationen, Export/Import in Systeme)

Hinsichtlich der Interoperabilität lassen sich verschiedene Typen und
Stufen unterscheiden. So klassifizieren Berger et al. aus der
Perspektive von Stakeholdern technische, semantische, organisatorische
und rechtliche Interoperabilität [@bergerihzhulfweh2023].

**Typen der Interoperabilität nach** (Weibel (1998) in [@haynesmimrumiu2018, S. 171f])

- **strukturell**: Die Standards beruhen auf einem gemeinsamen
  Datenmodell, es werden gemeinsame Metadatenschemata verwendet, die
  Abrufbarkeit von Daten wird ermöglicht (z. B. durch offene
  Schnittstellen)
- **syntaktisch**: Die Metadaten werden in einem geeigneten Format,
  wie z. B. XML oder JSON(-LD), kodiert. Transfer- und Austauschprozesse
  werden abgestimmt. Der strukturelle Aufbau der Werte wird normiert.
- **semantisch**: Die verwendeten Metadatenelemente haben die gleiche
  Bedeutung in verschiedenen Systemen, dazu werden Verbindungen zwischen
  Konzepten oder inhaltlichen Domänen erstellt (“Brücken schlagen”). Es
  werden standardisierte Technologien (z. B. RDF) verwendet, um diesen
  semantischen Transfer zu ermöglichen.

**Stufen der Interoperabilität** (Nilsson, Baker & Johnston (2009) in
[@haynesmimrumiu2018, S. 171] [@nilssonihmsdefmh2010]):

- Ebene 1: Gemeinsame Begriffsdefinitionen
- Ebene 2: Formale semantische Interoperabilität
- Ebene 3: Syntaktische Interoperabilität der Metadatensätze
- Ebene 4: Interoperabilität von Metadatenprofilen

**Praxisbeispiele** für die Nutzung interoperabler Technologien:

- Lerninhalte sollten möglichst ohne Einschränkung der Darstellung oder
  Funktion mit verschiedenen Lernplattformen kompatibel sein. Der Inhalt
  soll Lernenden mit gleicher Sequenzierung und struktureller
  Aufbereitung präsentiert werden können. E-Learning-Standards
  unterstützen diese Art der Interoperabilität.

- Zertifikate sollen über Services hinweg nutzbar sein

- Interaktionen von Nutzer\*innen (Likes, Listen, soziale Kontakte) sind
  über Plattformen hinweg nutzbar

**Ansätze zur Realisierung dieser Interoperabilität**

In der Bildungslandschaft sind im Laufe der Zeit viele Repositorien mit
reichhaltigen Ressourcen aus spezialisierten Domänen entstanden. Um
zwischen oftmals lokalen Spezifikationen einzelner Repositorien zu
vermitteln, ist die Berücksichtigung und Nutzung interoperabler
Technologien essenziell. Nur so können diese Datensilos effizient
miteinander verknüpft werden. Besonders OER-Repositorien haben die
transparente Standardisierung in verschiedenen Bereichen vorangetrieben,
um ihre Daten möglichst verlustfrei austauschen zu können. Durch die
Einrichtung gemeinsamer Metadatengruppen und Nutzung gemeinsamer
Metadatenstandards oder -profile, einschließlich [kontrollierter
Vokabulare](#was-sind-vokabulare), arbeiten sie an einem möglichst
verlustfreien Mapping zur Herstellung der Interoperabilität.

Zur Erreichung von Interoperabilität erarbeiten Metadatengruppen:

- formalisierte Prozesse (z. B. [Werkzeuge/Verfahren zur
  Standardisierung von
  Metadaten](https://dini-ag-kim.github.io/stoeberspecs/))
- Metadatenprofile ([Allgemeines Metadatenprofil für Bildungsressourcen
  (AMB)](https://dini-ag-kim.github.io/amb/draft/), [LOM for Higher
  Education OER
  Repositories](https://dini-ag-kim.github.io/hs-oer-lom-profil/20210909/))
- kontrollierte Vokabulare
  ([Hochschulfächersystematik](https://w3id.org/kim/hochschulfaechersystematik/scheme))
- Mappings zwischen Vokabulare (z. B. mit [Cocoda -
  coli-conc](https://coli-conc.gbv.de/cocoda/))

**Referatorien**

Referatorien sammeln Daten verschiedener Repositorien ein und bieten als
Metaportale übergreifende Services an, wie Suchen. Damit dienen sie als
“Tester” der gewünschten Interoperabilität. Dazu erschließen sie Inhalte
aus verschiedenen Quellen und harmonisieren die Daten im Transferprozess
(s.u.
[ETL-Prozess](#wie-werden-metadaten-ausgetauscht---der-etl-prozess)).
Auf diese Weise kann die Auffindbarkeit von Ressourcen erhöht und eine
systematische, übergreifende Suche angeboten werden.

Die Liste der Referatorien ist exemplarisch zu verstehen und bildet nur
einen geringen Teil des Marktes ab. Insbesondere durch den Einsatz
universeller Open Source Software, wie beispielsweise
[edu-sharing](https://edu-sharing.com/) [@klebldrecpimec2010] [@klebldrecpt2010] [@krameroerrne2011], entstehen vermehrt weitere dezentrale Metadaten-Hubs, die zugleich auch als Repositorium fungieren können.
In der Regel werden die erschlossenen Quellen von den
Referatorien ausgewiesen, sodass über diese eine Vielzahl von
Repositorien auffindbar werden.

Tabelle: *Liste exemplarischer Referatorien*

<table>
<colgroup>
<col style="width: 19%" />
<col style="width: 5%" />
<col style="width: 39%" />
<col style="width: 17%" />
<col style="width: 17%" />
</colgroup>
<tbody>
<tr class="odd">
<td colspan="2"><strong>Fokus</strong></td>
<td><strong>Anbieter</strong></td>
<td><strong>Repositorium</strong></td>
<td><strong>Referatorium</strong></td>
</tr>
<tr class="even">
<td>KITA / Kindergarten</td>
<td><em>BY</em></td>
<td><a href="https://materialkiste.kita.bayern/">KITA Hub
Materialkiste</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="odd">
<td rowspan="3">Schule</td>
<td></td>
<td><a href="http://wirlernenonline.de">WirLernenOnline.de</a><a
href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="even">
<td></td>
<td><a href="https://mundo.schule/">MUNDO</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="odd">
<td></td>
<td><a href="http://bildungsserver.de/elixier">Elixier</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="even">
<td rowspan="7">Hochschule</td>
<td></td>
<td><a href="https://oersi.org">OERSI</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="odd">
<td><em>NW</em></td>
<td><a href="http://orca.nrw">ORCA.nrw</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="even">
<td><em>SH</em></td>
<td><a href="https://futureskills-sh.de/">futureskills-sh.de</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="odd">
<td><em>NI</em></td>
<td><a href="http://twillo.de">Twillo</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="even">
<td><em>BW</em></td>
<td><a href="https://www.zoerr.de/">Zentrales OER-Repositorium</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="odd">
<td><em>HE</em></td>
<td><a href="https://oer.hessenhub.de/">HessenHub</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="even">
<td><em>BY</em></td>
<td><a href="http://oer.vhb.org">Virtuelle Hochschule Bayern</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="odd">
<td>Berufliche Bildung</td>
<td></td>
<td><a href="https://hubbs.schule/search/mediathek">HubbS</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="even">
<td rowspan="2">Lehrkräfteaus- / -fortbildung</td>
<td></td>
<td><a href="https://unterrichtsvideos.net/metaportal/">Meta-Videoportal
unterrichtsvideos.net</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="odd">
<td><em>NW</em></td>
<td><a href="https://comein.nrw/portal/ressourcen/">ComeIn.nrw</a></td>
<td>x</td>
<td>x</td>
</tr>
<tr class="even">
<td rowspan="2">Allgemein</td>
<td></td>
<td><a href="https://openverse.org/de">OpenVerse</a></td>
<td></td>
<td>x</td>
</tr>
<tr class="odd">
<td></td>
<td><a href="https://moochub.org/">MOOChub</a></td>
<td></td>
<td>x</td>
</tr>
</tbody>
</table>
<aside id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Das Portal WirLernenOnline aggregiert zum Teil auch
Bildungsmaterialien aus anderen Bildungsbereichen. Der primäre Fokus des
Portals liegt derzeit auf dem Bildungsbereich Schule.<a href="#fnref1"
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
<li><p>Interoperable Systeme bemühen sich um einen möglichst
verlustfreien Datenaustausch und beziehen sich auf eine Vielzahl von
Aspekten, dazu gehören:</p>
<ul>
<li><p>Metadatenprofile</p></li>
<li><p>Vokabulare</p></li>
<li><p>Schnittstellen</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

## 3.6 Wie werden Metadaten ausgetauscht? - Der ETL-Prozess

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
<td><ul>
<li><p>Sie haben ein grundlegendes Verständnis zum Thema
“Datenaustausch”.</p></li>
<li><p>Sie kennen verschiedene Herausforderungen beim
Datenaustausch.</p></li>
</ul></td>
</tr>
</tbody>
</table>

Die Interoperabilität der Daten ist eine wichtige Voraussetzung, um
übergreifende Services wie Referatorien bereitstellen zu können. Doch
wie komme ich überhaupt an die Daten?

Grafik: *Darstellung des Erschließungsprozesses. Die Metadaten
verschiedener Repositorien werden während des ETL-Prozesses
harmonisiert. Von dort werden sie dann in dem jeweiligen Service über
einen Index mit Filtermöglichkeiten in einer quellübergreifenden Suche
verfügbar gemacht.*

**Verfahren zum Datenaustausch**

Zwei grundlegende Verfahren können beim Datenaustausch in einer
vernetzten Infrastruktur unterschieden werden: Push und Pull.[^14]

- **Pull**: Der Pull-Ansatz (auch als Polling bezeichnet) ist besonders
  im Internet verbreitet. Ein Client, z. B. ein Benutzer, ein
  Webbrowser, eine Anwendung usw., fordert Informationen an, und der
  Server antwortet mit den angeforderten Informationen. Das ist so, als
  würde man den Spielstand des gestrigen Fußballspiels nachschlagen: Die
  Informationen sind statisch, und es besteht keine Notwendigkeit für
  häufige - oder überhaupt keine - Aktualisierungen. Der Client fordert
  die Informationen an, der Server stellt sie bereit, und der Austausch
  ist beendet.
- **Push**: Hierbei handelt es sich um eine Architektur, bei der die
  Daten, sobald sie verfügbar sind, an eine interessierte Partei
  geschoben (“push”) werden. Es ist eine der Grundlagen des Echtzeit-Web
  und die Technologie, die vielen beliebten Chat- und anderen
  Echtzeit-Plattformen zugrunde liegt. Push-Kommunikation findet man
  auch häufig auf dem Handy, wo Sonderangebote, Benachrichtigungen und
  Spielstandsaktualisierungen direkt auf das Gerät gesendet werden.

Welcher Ansatz der richtige ist, lässt sich nicht generell entscheiden,
sondern hängt von den Anforderungen der jeweiligen Architektur und den
Abständen ab, in denen neue Daten benötigt werden. Wenn die
Datenbestände minuten- oder sogar sekundenaktuell auf dem aktuellsten
Stand sein sollen, ist sicherlich eine push-basierte Architektur zu
wählen, da ansonsten vielfache Pull-Anfragen verschickt werden müssen.
Bei einer push-basierten Architektur wird das Senden der Daten auf die
jeweiligen Portale verlagert und erfordert dort unter Umständen einen
höheren Implementierungs-aufwand.

Wenn jedoch eine Aktualisierung der Datenbestände in etwas größeren
Zeiträumen möglich ist, ist ein pull-basierter Ansatz sinnvoller, da
hier weniger Implementierungs-aufwand bei den einzelnen Datenquellen
liegt. Diese müssen lediglich die Schnittstellen bereitstellen, über die
die Daten abgerufen werden können. Ein Referatorium holt anschließend in
regelmäßigen Abständen die Daten ab und aktualisiert seinen
Datenbestand. Dieser Ansatz entlastet die Quellen hinsichtlich des
technischen Aufwandes. Zusätzlich lassen sich bei diesem Ansatz die
Daten auch leichter von anderen interessierten Akteuren abfragen.

**Der ETL-Prozess**

Um Daten aus Datenquellen in die eigene Plattform zu überführen
(klassisch pull-Ansatz), sind sogenannte ETL-Prozesse notwendig. Der ETL
(Extract, Transform, Load) Prozess überführt dabei die Datensätze aus
externen Quellen, die in unterschiedlichsten Formaten und Strukturen
vorliegen, in ein einheitliches Datenformat, das innerhalb des eigenen
Services genutzt wird.

Im ersten Schritt (**Extract**) wird dabei die jeweilige Quelle
abgefragt und eine Liste aller Datensätze (im Format der Quelle)
abgerufen. Anschließend werden die Datensätze in ein einheitliches
Datenformat (**Transform**) transferiert. Dies kann neben der Normierung
der einzelnen Texte (Titel, Beschreibung) auch eine Überführung in ein
gemeinsames Vokabular (s. o.) beinhalten, sodass später Inhalte gezielt
nach Fach, Bildungsstufe o. Ä. erfasst werden können. Im letzten Schritt
(**Load**) werden diese Datensätze in ein Content-Management-System des
eigenen Dienstes geladen, persistiert und von dort aus zugänglich
gemacht.

Beispiele von zur Bereitstellung und Aggregation von Metadaten:

- Markup in Webseiten (z. B. HTML mit AMB-basierter JSON-LD (hbz & TIB,
  2024); RDFa, Standard Generalized Markup Language - SGML)
- Scraping von Webseiten
- Strukturierte Datensammlung (bspw. JSON, XML/DTD, CSV)
- Schnittstellen, z. B. XML via
  [OAI-PMH](https://openarchives.org/pmh/), JSON-API, Open API,, Simple
  Query Interface (SQI), RDF / SPARQL / GraphQL / RDQL, Apache Jena

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
<li><p>Daten werden über Schnittstellen im Rahmen eines
ETL-Prozesses<br />
(Extract, Transform, Load) ausgetauscht</p></li>
<li><p><strong>Extract:</strong> Daten werden von der Zielquelle
abgefragt</p></li>
<li><p><strong>Transform:</strong> Daten werden in ein Zielformat
konvertiert</p></li>
<li><p><strong>Load:</strong> Konvertierte Daten werden in das eigene
System geladen</p></li>
</ul></td>
</tr>
</tbody>
</table>

[^7]: [Einführung in SKOS](https://web.archive.org/web/20240227140146/https://dini-ag-kim.github.io/skos-einfuehrung/#/) (DINI-AG KIM), [Repo](https://github.com/dini-ag-kim/skos-einfuehrung)

[^8]: Teilweise sind die Informationen zu Standards bereits von Steffen Rörtgen in Wikis veröffentlicht worden ([OER Contentbuffet](https://wiki.oer-contentbuffet.info/), [OEde](https://kurzelinks.de/oede-wiki)). Für die Darstellung in diesem Kompendium wurden die Informationen durch die Autoren aktualisiert und an einigen Stellen erweitert.

[^9]: wird vom IEEE mittlerweile als veraltet angesehen (IEEE, 2020b). Für eine ähnliche Einschätzung, siehe auch: INVITE-Projekt (Goertz et al., 2023, S. 7).

[^10]: siehe Abschnitt “[Technische Grundlagen](#technische-grundlagen-wie-gelingt-ein-vernetzter-bildungsraum)” für Details zu RDF und SKOS.

[^11]: Die Web Hypertext Application Technology Working Group (WHATWG) ist eine Community zur Entwicklung webbasierter Standards.

[^12]: auch: Strukturiere Vokabulare ([BS 8723-2:2005](https://knowledge.bsigroup.com/products/structured-vocabularies-for-information-retrieval-guide-thesauri?version=standard)), Value Vocabulary ([W3C LLDIG](https://www.w3.org/2005/Incubator/lld/XGR-lld-vocabdataset-20111025/#Published_value_vocabularies)), Semantic Assets ([ADMS](http://www.w3.org/TR/vocab-adms/)), Concept Schemes ([SKOS](http://www.w3.org/TR/skos-reference)), Classification ([ISO/IEC 11179-3:2023](https://www.iso.org/standard/78915.html))

[^13]: Datensilos sind Datensammlungen, die nicht für einen Datenaustausch vorgesehen sind, sodass diese bspw. in proprietären Systemen unzugänglich eingeschlossen sind oder zusammenhängende Daten unverknüpft in verteilten Systemen verbleiben.

[^14]: Teile des nachfolgenden Abschnitts sind von Steffen Rörtgen bereits in (Rörtgen, 2023) dargestellt worden.

