data <- read.csv(paste(datapath, "survey_584752_R_data_file.csv", sep = "/"),
                 quote = "'\"", 
                 na.strings = c("", "\"\""), 
                 stringsAsFactors = FALSE, 
                 fileEncoding = "UTF-8-BOM")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Zufallsgeneratorstartwert"
names(data)[5] <- "q_"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Vielen Dank für Ihre Bereitschaft an der Befragung „Vielfalt entscheidet Thüringen“ (VET) teilzunehmen. Ziel dieser Befragung ist es, die Grundlage für eine fundierte und nachhaltige Diversity-Strategie zu legen, um gemeinsam mit Ihnen die Thüringer Verwaltung auf die Zukunft vorzubereiten. Mit Ihrer Teilnahme stellen Sie sicher, dass eine Vielzahl von Perspektiven und Erfahrungen in die Evaluierung und Bedarfsermittlung von Maßnahmen in Bezug auf Chancengerechtigkeit, Vielfalt, Integration, Inklusion und Diskriminierung in die Befragung einfließen kann. Neben einer differenzierten und ausgewogenen Personalstruktur soll die Befragung die Thüringer Landesverwaltung dabei unterstützen, die Vielfältigkeit und Individualität der Mitarbeitenden wahrzunehmen und systematisch zu fördern.     Die Befragung wird von Citizens For Europe gUG durchgeführt und durch die Thüringer Staatskanzlei gefördert. Die Landesstelle für Antidiskriminierung Thüringen (LADS) und die Thüringer Beauftragte für Integration, Migration und Flüchtlinge unterstützen die Befragung.     Die Ergebnisdarstellung erfolgt anonymisiert, so dass keine Zuordnung der Antworten zu einzelnen Personen möglich ist. Alle Daten werden streng vertraulich behandelt, und nicht an Dritte weitergegeben und nicht auf Landesservern gespeichert. Die Einwilligung des Thüringer Landesbeauftragten für Datenschutz liegt vor.     Die Beantwortung des Online-Fragebogens ist freiwillig und dauert ca. 25 Minuten.     Zur Navigation innerhalb der Befragung nutzen Sie bitte ausschließlich die Weiter- und Zurück-Buttons jeweils unten auf der Seite. Sofern die Voreinstellungen auf Ihrem Computer es zulassen, werden Cookies gesetzt. Auf diese Weise wird eine Wiederaufnahme der Befragung nach einer Unterbrechung ermöglicht. Cookies werden 48 Stunden nach dem Ende des Befragungszeitraums automatisch gelöscht. Wenn Sie Cookies zwischenzeitlich selbst entfernen oder die Setzung von Cookies nicht zulassen ist eine Wiederaufnahme der bereits begonnenen Befragung nicht möglich und Sie werden gebeten den Fragebogen von Beginn an ausfüllen.     Wenn Sie weitere Fragen oder Anmerkungen haben, können Sie uns per E-Mail kontaktieren: befragung@vielfaltentscheidet.de   "
names(data)[6] <- "willkommen"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- " Im Rahmen unserer wissenschaftlichen Befragung „Vielfalt entscheidet Thüringen“ verarbeiten wir, die Citizens For Europe („CFE“) gUG, auch Ihre personenbezogenen Daten. Wir halten uns dabei an die Datenschutz-Grundverordnung (DSGVO) und das Bundesdatenschutzgesetz (BDSG).     Personenbezogene Daten  Nach der Datenschutz-Grundverordnung (Art. 4 Nr. 1) verarbeiten wir im Rahmen dieser Befragung folgende personenbezogene Daten:  • Einrichtungszugehörigkeit innerhalb der Thüringer Landesverwaltung  • Position innerhalb der Einrichtung und ggf. Anzahl der Mitarbeitenden  • Anstellungs- und Dienstverhältnis  • Evaluation von Maßnahmen und Erhebung von Handlungsbedarfen zur Förderung von Vielfalt und Chancengerechtigkeit  • Einschätzung zum Arbeitsklima  • soziale Herkunft/sozioökonomische Lage  • ostdeutsche/westdeutsche Sozialisation  • Alter  • Geschlecht  • Migrationshintergrund  • rassistische Diskriminierung  • sexuelle Orientierung/Identität  • Glaubensgemeinschaft und Weltanschauung  • Behinderungen/Formen der Beeinträchtigung     Verarbeitung  Im Rahmen der Befragung werden wir Ihre personenbezogenen Daten erheben, auswerten sowie anonymisiert veröffentlichen. Nach der Datenschutz-Grundverordnung (Art 4. Nr. 2) gelten diese Vorgänge als „Verarbeitung“.  Wir löschen Ihre Angaben grundsätzlich spätestens 10 Jahre nach der Erhebung,wenn nicht ein berechtigtes Forschungsinteresse dieser Löschung entgegensteht.     Zwecke der Verarbeitung  Wir verarbeiten Ihre personenbezogenen Daten zu Zwecken der wissenschaftlichen Forschung.  Wir möchten durch die Befragung Erkenntnisse erlangen über  • Strategien und Maßnahmen zur Förderung von Vielfalt und Chancengerechtigkeit  • Bedarfe und Hindernisse bei der Förderung von Vielfalt und Chancengerechtigkeit  • das allgemeine Arbeitsklima, Diskriminierung und etwaige Erfahrungen hiermit.  Diese Erkenntnisse sollen uns helfen, neue Handlungsfelder für diversitätsorientierte Maßnahmen zu erschließen und Beispiele für entsprechende Organisationsprozesse zu identifizieren. Hierzu möchten wir die Ergebnisse der Befragung auch veröffentlichen.  Sicherheitsmaßnahmen  Die ausgewerteten Ergebnisse der Befragung veröffentlichen wir schriftlich und anonymisiert. Die Anonymisierung sorgt dafür, dass es unmöglich ist, Ihnen die Ergebnisse individuell zuzuordnen. So können insbesondere Ihre Vorgesetzten aus Ihren Antworten keinerlei Rückschlüsse auf Ihre Person ziehen.  Ihre IP-Adresse wird von den Umfragedaten getrennt und pseudonymisiert gespeichert. Sie wird nicht ausgewertet. Die pseudonymisierte Speicherung Ihrer IP-Adresse dient allein der IT-Sicherheit.  Die IP-Adresse erheben wir, indem wir einen sogenannten „Cookie“ auf Ihren Rechner setzen. Dieser wird 48 Stunden nach Ende der Befragung automatisch gelöscht. Durch den Cookie können Sie die Befragung nach einer Unterbrechung an der gleichen Stelle wiederaufnehmen. Sie können jedoch auch Cookie-frei an der Befragung teilnehmen, dafür müssen Sie nur Ihren Browser entsprechend einstellen.  Die Befragung wird mit der Open Source Software LimeSurvey umgesetzt. Zugang zu dieser passwortverschlüsselten Software haben ausschließlich Personen, die dazu jeweils projektbezogen von uns autorisiert worden sind.  Sämtliche personenbezogene Daten werden ausschließlich auf von uns betriebenen, verschlüsselten Servern in Deutschland gespeichert.        Einwilligung"
data[, 7] <- factor(data[, 7], levels=c("A1"),labels=c("Ich habe die obigen Erläuterungen zum Datenschutz vollständig zur Kenntnis genommen und bin mit der vorgesehenen Verarbe"))
names(data)[7] <- "EinwDaten"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "{if(is_empty(vigRand.NAOK), rand(1,36), vigRand.NAOK)}"
names(data)[8] <- "vigRand"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Wir werden Ihnen zunächst einige Fragen zu Ihrer Position und Ihrem Arbeitsalltag stellen.                       In welcher Art öffentlicher Einrichtung in Thüringen sind Sie tätig?    "
data[, 9] <- factor(data[, 9], levels=c("A1","A2","A3","A4"),labels=c("Oberste Landesbehörde", "Mittlere/obere Landesbehörde", "Untere Landesbehörde", "Einrichtungen, Körperschaften oder Anstalten des öffentlichen Rechts (z.B.: Justizvollzugsausbildungsstätte oder Studier"))
names(data)[9] <- "artein"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "In welcher obersten Landesbehörde sind Sie tätig?"
data[, 10] <- factor(data[, 10], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9"),labels=c("Thüringer Staatskanzlei", "Thüringer Ministerium für Inneres und Kommunales", "Thüringer Ministerium für Bildung, Jugend und Sport", "Thüringer Ministerium für Migration, Justiz und Verbraucherschutz", "Thüringer Finanzministerium", "Thüringer Ministerium für Wirtschaft, Wissenschaft und Digitale Gesellschaft", "Thüringer Ministerium für Arbeit, Soziales, Gesundheit, Frauen und Familie", "Thüringer Ministerium für Umwelt, Energie und Naturschutz", "Thüringer Ministerium für Infrastruktur und Landwirtschaft"))
names(data)[10] <- "oberland"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "In welcher mittleren/oberen Landesbehörde sind Sie tätig?"
data[, 11] <- factor(data[, 11], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12","A13","A14","A15","A16"),labels=c("Thüringisches Landesamt für Denkmalpflege und Archäologie", "Landesarchiv Thüringen", "Landesamt für Statistik", "Landespolizeidirektion Thüringen", "Landeskriminalamt Thüringen", "Thüringer Generalstaatsanwaltschaft", "Thüringer Landesverwaltungsamt", "Thüringer Oberlandes- Oberverwaltungs- Landesarbeits-, Landessozial- Finanzgericht", "Landgericht", "Landesrechenzentrum", "Thüringer Landesamt für Finanzen", "Thüringer Landesamt für Verbraucherschutz", "Thüringer Landesamt für Umwelt, Bergbau und Naturschutz", "Thüringer Landesamt für Bodenmanagment und Geoinformation", "Thüringer Landesamt für Landwirtschaft und Ländlichen Raum", "Thüringer Landesamt für Bau und Verkehr"))
names(data)[11] <- "moland"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "In welcher unteren Landesbehörde sind Sie tätig?"
data[, 12] <- factor(data[, 12], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11"),labels=c("Bereitschaftspolizei", "Landespolizeiinspektion", "Autobahnpolizeiinspektion", "Landratsamt", "Staatliches Schulamt", "Justizvollzugsanstalt", "Jugendstrafanstalt", "Jugendarrrestanstalt", "Amts-, Sozial-,Verwaltungs-, Arbeitsgericht", "Staatsanwaltschaft", "Finanzamt"))
names(data)[12] <- "uland"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "In welcher öffentlichen Einrichtung, Körperschaft oder Anstalt des öffentlichen Rechts1 sind Sie tätig?"
data[, 13] <- factor(data[, 13], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A10"),labels=c("Fachhochschule für öffentliche Verwaltung, Fachbereich Polizei, Fachbereich Kommunalverwaltung und staatliche allgemeine", "Bildungszentrum der Polizei", "Landesfeuerwehr- und Katastrophenschutzschule", "Bildungszentrum der Thüringer Landesverwaltung Gotha", "Institut für Lehrerfortbildung, Lehrplanentwicklung und Medien", "Justizvollzugsausbildungsstätte", "Fachhochschule für öffentliche Verwaltung Fachbereich Steuern", "Studierendenwerk", "Andere, und zwar:"))
names(data)[13] <- "einland"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "In welcher anderen öffentlichen Einrichtung sind Sie tätig?"
names(data)[14] <- "einlandAndere"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Was ist für Sie zutreffend?"
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A4"),labels=c("Ich bin in Vollzeit beschäftigt.", "Ich bin in Teilzeit beschäftigt.", "Ich bin in Altersteilzeit beschäftigt."))
names(data)[15] <- "dienstv"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "In welchem Dienstverhältnis befinden Sie sich zurzeit?"
data[, 16] <- factor(data[, 16], levels=c("A1","A2","A3"),labels=c("befristet", "unbefristet", "in betrieblicher Ausbildung / Lehre."))
names(data)[16] <- "anstv"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Haben Sie in Ihrem Arbeitskontext Kontakt zu Bürger_innen1 (z.B. Front Desk)?"
data[, 17] <- factor(data[, 17], levels=c("A1","A2","A3","A4","A5"),labels=c("nie", "selten", "manchmal", "sehr oft", "(fast) immer"))
names(data)[17] <- "kundko"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Ich verantworte keine Aufgaben als Interessenvertretung / Beauftragte_r.] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 18] <- factor(data[, 18], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[18] <- "beauf_SQ001"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Personal- /Interessenvertretung] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 19] <- factor(data[, 19], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[19] <- "beauf_SQ005"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Datenschutz / Informationsfreiheit] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 20] <- factor(data[, 20], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[20] <- "beauf_SQ006"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Gender / Gleichstellung] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 21] <- factor(data[, 21], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[21] <- "beauf_SQ002"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[(Schwer-)Behinderung / Inklusion] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 22] <- factor(data[, 22], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[22] <- "beauf_SQ003"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Interkulturelle Öffnung / Integration] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 23] <- factor(data[, 23], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[23] <- "beauf_SQ004"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Diversity] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
data[, 24] <- factor(data[, 24], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[24] <- "beauf_SQ007"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[Sonstiges] Verantworten Sie im Rahmen Ihrer Tätigkeit Aufgaben als Interessenvertretung / Beauftragte_r?"
names(data)[25] <- "beauf_other"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- " Haben Sie in Ihrer derzeitigen Tätigkeit Leitungs- und/oder Personalverantwortung?"
data[, 26] <- factor(data[, 26], levels=c(1,2),labels=c("Ja", "Nein"))
names(data)[26] <- "leitv"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "Welcher Führungssebene würden Sie sich innerhalb Ihrer Behörde / Einrichtung zuordnen?"
data[, 27] <- factor(data[, 27], levels=c("A01","A02","A03"),labels=c("obere Führungsebene", "mittlere Führungsebene", "untere Führungsebene"))
names(data)[27] <- "fuehre"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "Für wie viele Mitarbeitende tragen Sie Personalverantwortung? Bitte geben Sie die Anzahl der Personen unabhängig davon an, ob diese Vollzeit, Teilzeit oder Altersteilzeitstellen innehaben. Bei großer Zahl reicht eine Schätzung."
names(data)[28] <- "anzmit"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Erstellung von Anforderungsprofilen] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 29] <- factor(data[, 29], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[29] <- "persgew_SQ002"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Erstellung von Stellenbeschreibungen] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 30] <- factor(data[, 30], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[30] <- "persgew_SQ003"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Vorschlag von Personen für die engere Auswahl im Bewerbungsverfahren] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 31] <- factor(data[, 31], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[31] <- "persgew_SQ004"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Durchführung von Vorstellungsgesprächen und weiteren Beurteilungsverfahren (z.B. Assessment-Center)] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 32] <- factor(data[, 32], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[32] <- "persgew_SQ005"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[finale Personalentscheidung] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 33] <- factor(data[, 33], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[33] <- "persgew_SQ006"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Ich bin an keiner der genannten Phasen beteiligt.] In welchen Phasen der Personalgewinnung sind Sie beteiligt?"
data[, 34] <- factor(data[, 34], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[34] <- "persgew_SQ007"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "Seit welchem Jahr arbeiten Sie für die Thüringer Verwaltung bzw. in einer  Einrichtung, Körperschaft oder Anstalt des öffentlichen Rechts?"
names(data)[35] <- "jahrein"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "Seit welchem Jahr haben Sie Ihre aktuelle Position inne?"
names(data)[36] <- "jahrpos"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "Wann wurden Sie zuletzt befördert oder haben eine höherwertige Stelle erhalten?"
data[, 37] <- factor(data[, 37], levels=c("A1"),labels=c("Ich wurde noch nicht befördert und / oder habe keine höherwertige Stelle erhalten."))
names(data)[37] <- "befoerd"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[Sonstiges] Wann wurden Sie zuletzt befördert oder haben eine höherwertige Stelle erhalten?"
names(data)[38] <- "befoerd_other"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Behinderung / Beeinträchtigung] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 39] <- factor(data[, 39], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[39] <- "fgeshand_SQ001"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Geschlecht] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 40] <- factor(data[, 40], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[40] <- "fgeshand_SQ003"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[Hohes Lebensalter] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 41] <- factor(data[, 41], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[41] <- "fgeshand_SQ004"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[Junges Lebensalter] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 42] <- factor(data[, 42], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[42] <- "fgeshand_SQ010"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Ostdeutsch sozialisiert] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 43] <- factor(data[, 43], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[43] <- "fgeshand_SQ005"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[Westdeutsch sozialisiert] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 44] <- factor(data[, 44], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[44] <- "fgeshand_SQ012"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[Religion] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 45] <- factor(data[, 45], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[45] <- "fgeshand_SQ006"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[Sexuelle Oriertierung / Identität] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 46] <- factor(data[, 46], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[46] <- "fgeshand_SQ007"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Ethnische Herkunft / rassistische Diskriminierung] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 47] <- factor(data[, 47], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[47] <- "fgeshand_SQ002"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Soziale Herkunft / sozioökomische Lage] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 48] <- factor(data[, 48], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[48] <- "fgeshand_SQ008"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Körpergewichtsdiskriminierung] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 49] <- factor(data[, 49], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[49] <- "fgeshand_SQ011"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[andere, und zwar] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an"
data[, 50] <- factor(data[, 50], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[50] <- "fgeshand_SQ009"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- ""
names(data)[51] <- "fgeshandother"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[Behinderung / Beeinträchtigung] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 52] <- factor(data[, 52], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[52] <- "handeigen_SQ001"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[Geschlecht] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 53] <- factor(data[, 53], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[53] <- "handeigen_SQ003"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "[Hohes Lebensalter] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 54] <- factor(data[, 54], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[54] <- "handeigen_SQ004"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "[Junges Lebensalter] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 55] <- factor(data[, 55], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[55] <- "handeigen_SQ010"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[Ostdeutsch sozialisiert] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 56] <- factor(data[, 56], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[56] <- "handeigen_SQ005"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[Westdeutsch sozialisiert] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 57] <- factor(data[, 57], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[57] <- "handeigen_SQ012"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[Religion] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 58] <- factor(data[, 58], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[58] <- "handeigen_SQ006"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "[Sexuelle Oriertierung / Identität] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 59] <- factor(data[, 59], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[59] <- "handeigen_SQ007"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "[Ethnische Herkunft / rassistische Diskriminierung] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 60] <- factor(data[, 60], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[60] <- "handeigen_SQ002"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[Soziale Herkunft / sozioökomische Lage] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 61] <- factor(data[, 61], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[61] <- "handeigen_SQ008"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[Körpergewichtsdiskriminierung] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 62] <- factor(data[, 62], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[62] <- "handeigen_SQ011"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "[andere, und zwar] Wie hoch schätzen Sie in Ihrem Verantwortungsbereich den Handlungsbedarf zur Förderung von Chancengleichheit für die folgenden Dimensionen ein?  Bitte geben Sie ihre Einschätzung auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig an."
data[, 63] <- factor(data[, 63], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "von hoher Bedeutung", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[63] <- "handeigen_SQ009"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- ""
names(data)[64] <- "handeigenother"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[\"Benachteiligungen von Menschen mit Behinderungen verhindern und bestehende Benachteiligungen beseitigen.\" (ThürGiG)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[65] <- "ziele_SQ005"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[\"Gleichberechtigte Teilhabe von Menschen mit Behinderung am Leben herstellen und ihnen eine selbstbestimmte Lebensführung ermöglichen.\" (ThürGiG)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[66] <- "ziele_SQ006"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[\"Teilhabe von Menschen mit Migrationshintergrund an allen Bereichen des gesellschaftlichen Lebens.\" (Thüringer Integrationskonzept)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[67] <- "ziele_SQ001"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[\"Verstärkte interkulturelle Öffnung der staatlichen Einrichtungen, Stellen und Behörden.\" (Thüringer Integrationskonzept)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[68] <- "ziele_SQ002"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[\"Die Erhöhung des Anteils von Frauen oder Männern, soweit sie in einzelnen Bereichen unterrepräsentiert sind.\" (TH GleichG)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[69] <- "ziele_SQ003"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[\"Schaffung von Bedingungen, die für beide Geschlechter die Vereinbarkeit von Beruf und Familie ermöglichen.\" (TH GleichG)|gar nicht|voll und ganz] In verschiedenen Thüringer Landesgesetzen werden Ziele und Grundsätze zur Förderung der Chancengleichheit von unterschiedlichen Personengruppen formuliert. Inwiefern schätzen Sie diese Ziele in Ihrer Behörde / Einrichtung als erreicht ein?   Bitte klicken Sie auf einen passenden Punkt auf dem Kontinuum."
names(data)[70] <- "ziele_SQ004"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "Werden in Ihrem Verantwortungsbereich Strategien und Maßnahmen zur Förderung von Vielfalt und Chancengleichheit umgesetzt2?"
data[, 71] <- factor(data[, 71], levels=c(1,2),labels=c("Ja", "Nein"))
names(data)[71] <- "umstrat"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Es gibt ein Paten-/Mentoringprogramm.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 72] <- factor(data[, 72], levels=c(1,0),labels=c("1", "0"))
names(data)[72] <- "stratzielg_SQ001_SQ001"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Es gibt ein Paten-/Mentoringprogramm.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 73] <- factor(data[, 73], levels=c(1,0),labels=c("1", "0"))
names(data)[73] <- "stratzielg_SQ001_SQ002"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Es gibt ein Paten-/Mentoringprogramm.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 74] <- factor(data[, 74], levels=c(1,0),labels=c("1", "0"))
names(data)[74] <- "stratzielg_SQ001_SQ003"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Es gibt ein Paten-/Mentoringprogramm.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 75] <- factor(data[, 75], levels=c(1,0),labels=c("1", "0"))
names(data)[75] <- "stratzielg_SQ001_SQ004"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.).] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 76] <- factor(data[, 76], levels=c(1,0),labels=c("1", "0"))
names(data)[76] <- "stratzielg_SQ002_SQ001"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.).] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 77] <- factor(data[, 77], levels=c(1,0),labels=c("1", "0"))
names(data)[77] <- "stratzielg_SQ002_SQ002"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.).] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 78] <- factor(data[, 78], levels=c(1,0),labels=c("1", "0"))
names(data)[78] <- "stratzielg_SQ002_SQ003"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.).] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 79] <- factor(data[, 79], levels=c(1,0),labels=c("1", "0"))
names(data)[79] <- "stratzielg_SQ002_SQ004"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Praktikumsplatzkontingente werden bereitgestellt.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 80] <- factor(data[, 80], levels=c(1,0),labels=c("1", "0"))
names(data)[80] <- "stratzielg_SQ003_SQ001"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Praktikumsplatzkontingente werden bereitgestellt.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 81] <- factor(data[, 81], levels=c(1,0),labels=c("1", "0"))
names(data)[81] <- "stratzielg_SQ003_SQ002"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Praktikumsplatzkontingente werden bereitgestellt.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 82] <- factor(data[, 82], levels=c(1,0),labels=c("1", "0"))
names(data)[82] <- "stratzielg_SQ003_SQ003"
# LimeSurvey Field type: F
data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Praktikumsplatzkontingente werden bereitgestellt.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 83] <- factor(data[, 83], levels=c(1,0),labels=c("1", "0"))
names(data)[83] <- "stratzielg_SQ003_SQ004"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Ausbildungsplatzkontingente werden bereitgestellt.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 84] <- factor(data[, 84], levels=c(1,0),labels=c("1", "0"))
names(data)[84] <- "stratzielg_SQ004_SQ001"
# LimeSurvey Field type: F
data[, 85] <- as.numeric(data[, 85])
attributes(data)$variable.labels[85] <- "[Ausbildungsplatzkontingente werden bereitgestellt.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 85] <- factor(data[, 85], levels=c(1,0),labels=c("1", "0"))
names(data)[85] <- "stratzielg_SQ004_SQ002"
# LimeSurvey Field type: F
data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[Ausbildungsplatzkontingente werden bereitgestellt.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 86] <- factor(data[, 86], levels=c(1,0),labels=c("1", "0"))
names(data)[86] <- "stratzielg_SQ004_SQ003"
# LimeSurvey Field type: F
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "[Ausbildungsplatzkontingente werden bereitgestellt.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 87] <- factor(data[, 87], levels=c(1,0),labels=c("1", "0"))
names(data)[87] <- "stratzielg_SQ004_SQ004"
# LimeSurvey Field type: F
data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "[Mitarbeitende nehmen an Fortbildungen teil.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 88] <- factor(data[, 88], levels=c(1,0),labels=c("1", "0"))
names(data)[88] <- "stratzielg_SQ005_SQ001"
# LimeSurvey Field type: F
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "[Mitarbeitende nehmen an Fortbildungen teil.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 89] <- factor(data[, 89], levels=c(1,0),labels=c("1", "0"))
names(data)[89] <- "stratzielg_SQ005_SQ002"
# LimeSurvey Field type: F
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "[Mitarbeitende nehmen an Fortbildungen teil.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 90] <- factor(data[, 90], levels=c(1,0),labels=c("1", "0"))
names(data)[90] <- "stratzielg_SQ005_SQ003"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "[Mitarbeitende nehmen an Fortbildungen teil.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 91] <- factor(data[, 91], levels=c(1,0),labels=c("1", "0"))
names(data)[91] <- "stratzielg_SQ005_SQ004"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 92] <- factor(data[, 92], levels=c(1,0),labels=c("1", "0"))
names(data)[92] <- "stratzielg_SQ006_SQ001"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 93] <- factor(data[, 93], levels=c(1,0),labels=c("1", "0"))
names(data)[93] <- "stratzielg_SQ006_SQ002"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 94] <- factor(data[, 94], levels=c(1,0),labels=c("1", "0"))
names(data)[94] <- "stratzielg_SQ006_SQ003"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 95] <- factor(data[, 95], levels=c(1,0),labels=c("1", "0"))
names(data)[95] <- "stratzielg_SQ006_SQ004"
# LimeSurvey Field type: F
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 96] <- factor(data[, 96], levels=c(1,0),labels=c("1", "0"))
names(data)[96] <- "stratzielg_SQ007_SQ001"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 97] <- factor(data[, 97], levels=c(1,0),labels=c("1", "0"))
names(data)[97] <- "stratzielg_SQ007_SQ002"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 98] <- factor(data[, 98], levels=c(1,0),labels=c("1", "0"))
names(data)[98] <- "stratzielg_SQ007_SQ003"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 99] <- factor(data[, 99], levels=c(1,0),labels=c("1", "0"))
names(data)[99] <- "stratzielg_SQ007_SQ004"
# LimeSurvey Field type: F
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 100] <- factor(data[, 100], levels=c(1,0),labels=c("1", "0"))
names(data)[100] <- "stratzielg_SQ008_SQ001"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 101] <- factor(data[, 101], levels=c(1,0),labels=c("1", "0"))
names(data)[101] <- "stratzielg_SQ008_SQ002"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 102] <- factor(data[, 102], levels=c(1,0),labels=c("1", "0"))
names(data)[102] <- "stratzielg_SQ008_SQ003"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 103] <- factor(data[, 103], levels=c(1,0),labels=c("1", "0"))
names(data)[103] <- "stratzielg_SQ008_SQ004"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 104] <- factor(data[, 104], levels=c(1,0),labels=c("1", "0"))
names(data)[104] <- "stratzielg_SQ009_SQ001"
# LimeSurvey Field type: F
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 105] <- factor(data[, 105], levels=c(1,0),labels=c("1", "0"))
names(data)[105] <- "stratzielg_SQ009_SQ002"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 106] <- factor(data[, 106], levels=c(1,0),labels=c("1", "0"))
names(data)[106] <- "stratzielg_SQ009_SQ003"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 107] <- factor(data[, 107], levels=c(1,0),labels=c("1", "0"))
names(data)[107] <- "stratzielg_SQ009_SQ004"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 108] <- factor(data[, 108], levels=c(1,0),labels=c("1", "0"))
names(data)[108] <- "stratzielg_SQ010_SQ001"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 109] <- factor(data[, 109], levels=c(1,0),labels=c("1", "0"))
names(data)[109] <- "stratzielg_SQ010_SQ002"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 110] <- factor(data[, 110], levels=c(1,0),labels=c("1", "0"))
names(data)[110] <- "stratzielg_SQ010_SQ003"
# LimeSurvey Field type: F
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 111] <- factor(data[, 111], levels=c(1,0),labels=c("1", "0"))
names(data)[111] <- "stratzielg_SQ010_SQ004"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt. ] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 112] <- factor(data[, 112], levels=c(1,0),labels=c("1", "0"))
names(data)[112] <- "stratzielg_SQ011_SQ001"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt. ] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 113] <- factor(data[, 113], levels=c(1,0),labels=c("1", "0"))
names(data)[113] <- "stratzielg_SQ011_SQ002"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt. ] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 114] <- factor(data[, 114], levels=c(1,0),labels=c("1", "0"))
names(data)[114] <- "stratzielg_SQ011_SQ003"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt. ] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 115] <- factor(data[, 115], levels=c(1,0),labels=c("1", "0"))
names(data)[115] <- "stratzielg_SQ011_SQ004"
# LimeSurvey Field type: F
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 116] <- factor(data[, 116], levels=c(1,0),labels=c("1", "0"))
names(data)[116] <- "stratzielg_SQ012_SQ001"
# LimeSurvey Field type: F
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 117] <- factor(data[, 117], levels=c(1,0),labels=c("1", "0"))
names(data)[117] <- "stratzielg_SQ012_SQ002"
# LimeSurvey Field type: F
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 118] <- factor(data[, 118], levels=c(1,0),labels=c("1", "0"))
names(data)[118] <- "stratzielg_SQ012_SQ003"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 119] <- factor(data[, 119], levels=c(1,0),labels=c("1", "0"))
names(data)[119] <- "stratzielg_SQ012_SQ004"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 120] <- factor(data[, 120], levels=c(1,0),labels=c("1", "0"))
names(data)[120] <- "stratzielg_SQ013_SQ001"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 121] <- factor(data[, 121], levels=c(1,0),labels=c("1", "0"))
names(data)[121] <- "stratzielg_SQ013_SQ002"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 122] <- factor(data[, 122], levels=c(1,0),labels=c("1", "0"))
names(data)[122] <- "stratzielg_SQ013_SQ003"
# LimeSurvey Field type: F
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 123] <- factor(data[, 123], levels=c(1,0),labels=c("1", "0"))
names(data)[123] <- "stratzielg_SQ013_SQ004"
# LimeSurvey Field type: F
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen.] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 124] <- factor(data[, 124], levels=c(1,0),labels=c("1", "0"))
names(data)[124] <- "stratzielg_SQ014_SQ001"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen.] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 125] <- factor(data[, 125], levels=c(1,0),labels=c("1", "0"))
names(data)[125] <- "stratzielg_SQ014_SQ002"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen.] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 126] <- factor(data[, 126], levels=c(1,0),labels=c("1", "0"))
names(data)[126] <- "stratzielg_SQ014_SQ003"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen.] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 127] <- factor(data[, 127], levels=c(1,0),labels=c("1", "0"))
names(data)[127] <- "stratzielg_SQ014_SQ004"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen:] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 128] <- factor(data[, 128], levels=c(1,0),labels=c("1", "0"))
names(data)[128] <- "stratzielg_SQ015_SQ001"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen:] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 129] <- factor(data[, 129], levels=c(1,0),labels=c("1", "0"))
names(data)[129] <- "stratzielg_SQ015_SQ002"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen:] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 130] <- factor(data[, 130], levels=c(1,0),labels=c("1", "0"))
names(data)[130] <- "stratzielg_SQ015_SQ003"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen:] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 131] <- factor(data[, 131], levels=c(1,0),labels=c("1", "0"))
names(data)[131] <- "stratzielg_SQ015_SQ004"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[Andere Strategien und Maßnahmen und zwar2:] [Zur Gleichstellung von Frau und Mann] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 132] <- factor(data[, 132], levels=c(1,0),labels=c("1", "0"))
names(data)[132] <- "stratzielg_SQ016_SQ001"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Andere Strategien und Maßnahmen und zwar2:] [Zur Gleichberechtigung von Menschen mit Beeinträchtigung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 133] <- factor(data[, 133], levels=c(1,0),labels=c("1", "0"))
names(data)[133] <- "stratzielg_SQ016_SQ002"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Andere Strategien und Maßnahmen und zwar2:] [Zur interkulturellen Öffnung] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 134] <- factor(data[, 134], levels=c(1,0),labels=c("1", "0"))
names(data)[134] <- "stratzielg_SQ016_SQ003"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Andere Strategien und Maßnahmen und zwar2:] [Zur Berücksichtigung des Lebensalters] Bitte geben Sie an, ob Sie eine der folgenden Strategien und Maßnahmen für eine der Zielgruppen in Ihrem Verantwortungsbereich umgesetzt haben.  Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt. Mehrfachantworten sind möglich."
data[, 135] <- factor(data[, 135], levels=c(1,0),labels=c("1", "0"))
names(data)[135] <- "stratzielg_SQ016_SQ004"
# LimeSurvey Field type: A
data[, 136] <- as.character(data[, 136])
attributes(data)$variable.labels[136] <- ""
names(data)[136] <- "stratzielgother"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Mitarbeitende besuchen Sprachkurse.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 137] <- factor(data[, 137], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[137] <- "stratikoe_SQ002"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[Die Essensangebote in der Kantine werden den Essgewohnheiten und -regeln der Mitarbeitenden zunehmend gerecht.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 138] <- factor(data[, 138], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[138] <- "stratikoe_SQ003"
# LimeSurvey Field type: F
data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[Diversity-Kompetenz bzw. interkulturelle Kompetenz wird als Teil des Anforderungsprofils für Mitarbeitende aktiv eingefordert.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 139] <- factor(data[, 139], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[139] <- "stratikoe_SQ004"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[Vor Entscheidungsfindungen werden regelmäßig Akteur_innen konsultiert, die die Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrungen einbringen.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 140] <- factor(data[, 140], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[140] <- "stratikoe_SQ005"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Es steht ein Gebets- und/oder einen Raum der Stille zur Verfügung.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 141] <- factor(data[, 141], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[141] <- "stratikoe_SQ006"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Es gibt ein Kontingent an Urlaubstagen, das Mitarbeitende für unterschiedliche religiöse Feiertage ausschöpfen können.] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
data[, 142] <- factor(data[, 142], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[142] <- "stratikoe_SQ007"
# LimeSurvey Field type: A
data[, 143] <- as.character(data[, 143])
attributes(data)$variable.labels[143] <- "[Sonstiges] Welche spezifischen Strategien und Maßnahmen zur Förderung der interkulturellen Öffnung werden in Ihrem Verantwortungsbereich umgesetzt?      Bitte beachten Sie, dass es sich hierbei um eine unvollständige Liste handelt, die u.a. in Zusammenarbeit mit der Thüringer Beauftragten für Integration, Migration und Flüchtlinge entstanden ist."
names(data)[143] <- "stratikoe_other"
# LimeSurvey Field type: F
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[Gleichstellungs-/Ausländer- und Integrationsbeauftragte auf landes- wie kommunaler Ebene] Wen konsultieren Sie, um die Perspektiven und Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrung in Entscheidungsfindungsprozesse miteinzubeziehen?   Mehrfachantworten sind möglich."
data[, 144] <- factor(data[, 144], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[144] <- "stratk_SQ001"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[Ausländerbeirat, Migrationsbeirat ] Wen konsultieren Sie, um die Perspektiven und Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrung in Entscheidungsfindungsprozesse miteinzubeziehen?   Mehrfachantworten sind möglich."
data[, 145] <- factor(data[, 145], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[145] <- "stratk_SQ002"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[Migrant_innenselbstorganisationen, Minderheitenvertreter_innen] Wen konsultieren Sie, um die Perspektiven und Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrung in Entscheidungsfindungsprozesse miteinzubeziehen?   Mehrfachantworten sind möglich."
data[, 146] <- factor(data[, 146], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[146] <- "stratk_SQ003"
# LimeSurvey Field type: F
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[Mitarbeitende mit Migrationshintergrund bzw. Mitarbeitende mit Rassismuserfahrungen] Wen konsultieren Sie, um die Perspektiven und Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrung in Entscheidungsfindungsprozesse miteinzubeziehen?   Mehrfachantworten sind möglich."
data[, 147] <- factor(data[, 147], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[147] <- "stratk_SQ004"
# LimeSurvey Field type: A
data[, 148] <- as.character(data[, 148])
attributes(data)$variable.labels[148] <- "[Sonstiges] Wen konsultieren Sie, um die Perspektiven und Belange von Menschen mit Migrationshintergrund bzw. Menschen mit Rassismuserfahrung in Entscheidungsfindungsprozesse miteinzubeziehen?   Mehrfachantworten sind möglich."
names(data)[148] <- "stratk_other"
# LimeSurvey Field type: A
data[, 149] <- as.character(data[, 149])
attributes(data)$variable.labels[149] <- "[Mitarbeitende haben eine gesteigerte Wertschätzung für Vielfalt.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 149] <- factor(data[, 149], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[149] <- "beistrat_SQ001"
# LimeSurvey Field type: A
data[, 150] <- as.character(data[, 150])
attributes(data)$variable.labels[150] <- "[Die Arbeitsatmosphäre hat sich verbessert.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 150] <- factor(data[, 150], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[150] <- "beistrat_SQ002"
# LimeSurvey Field type: A
data[, 151] <- as.character(data[, 151])
attributes(data)$variable.labels[151] <- "[Mitarbeitende sind besser dazu befähigt, verschiedene Perspektiven einzunehmen.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 151] <- factor(data[, 151], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[151] <- "beistrat_SQ003"
# LimeSurvey Field type: A
data[, 152] <- as.character(data[, 152])
attributes(data)$variable.labels[152] <- "[Arbeitsprozesse sind durch die Berücksichtigung von z.B.Lebensalter oder interkultureller Öffnung aufwendiger geworden.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 152] <- factor(data[, 152], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[152] <- "beistrat_SQ004"
# LimeSurvey Field type: A
data[, 153] <- as.character(data[, 153])
attributes(data)$variable.labels[153] <- "[Mitarbeitende haben sich kritisch mit eigenen Vorurteilen und diskriminierendem Verhalten auseinandergesetzt.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 153] <- factor(data[, 153], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[153] <- "beistrat_SQ005"
# LimeSurvey Field type: A
data[, 154] <- as.character(data[, 154])
attributes(data)$variable.labels[154] <- "[Die Potenziale der Mitarbeitenden werden besser genutzt bzw. kommen besser zum Einsatz.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 154] <- factor(data[, 154], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[154] <- "beistrat_SQ006"
# LimeSurvey Field type: A
data[, 155] <- as.character(data[, 155])
attributes(data)$variable.labels[155] <- "[Der Kontakt mit Bürger_innen bzw. Kund_innen gestaltet sich besser.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 155] <- factor(data[, 155], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[155] <- "beistrat_SQ007"
# LimeSurvey Field type: A
data[, 156] <- as.character(data[, 156])
attributes(data)$variable.labels[156] <- "[Mitarbeitende sind unsicherer geworden, wie sie sich „richtig“ verhalten sollen.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 156] <- factor(data[, 156], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[156] <- "beistrat_SQ008"
# LimeSurvey Field type: A
data[, 157] <- as.character(data[, 157])
attributes(data)$variable.labels[157] <- "[Die Außenwirkung der Einrichtung hat sich verbessert.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 157] <- factor(data[, 157], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[157] <- "beistrat_SQ009"
# LimeSurvey Field type: A
data[, 158] <- as.character(data[, 158])
attributes(data)$variable.labels[158] <- "[Die Zusammensetzung der Mitarbeitenden ist vielfältiger geworden. ] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 158] <- factor(data[, 158], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[158] <- "beistrat_SQ010"
# LimeSurvey Field type: A
data[, 159] <- as.character(data[, 159])
attributes(data)$variable.labels[159] <- "[Mitarbeitende können beobachtete Diskriminierungen besser ansprechen.  ] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 159] <- factor(data[, 159], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[159] <- "beistrat_SQ012"
# LimeSurvey Field type: A
data[, 160] <- as.character(data[, 160])
attributes(data)$variable.labels[160] <- "[Mitarbeitende haben ihre Diversitykompetenz erweitert.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 160] <- factor(data[, 160], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[160] <- "beistrat_SQ017"
# LimeSurvey Field type: A
data[, 161] <- as.character(data[, 161])
attributes(data)$variable.labels[161] <- "[Die Arbeitsabläufe sind effizienter. ] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 161] <- factor(data[, 161], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[161] <- "beistrat_SQ013"
# LimeSurvey Field type: A
data[, 162] <- as.character(data[, 162])
attributes(data)$variable.labels[162] <- "[Es gibt mehr Konflikte. ] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 162] <- factor(data[, 162], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[162] <- "beistrat_SQ014"
# LimeSurvey Field type: A
data[, 163] <- as.character(data[, 163])
attributes(data)$variable.labels[163] <- "[Im Großen und Ganzen hat sich nichts verändert.] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 163] <- factor(data[, 163], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[163] <- "beistrat_SQ015"
# LimeSurvey Field type: A
data[, 164] <- as.character(data[, 164])
attributes(data)$variable.labels[164] <- "[Die Strategien/ Maßnahmen haben etwas anderes bewirkt, und zwar: ] Welchen Beitrag hat die Umsetzung der Strategien und Maßnahmen in Ihrem Verantwortungsbereich insgesamt geleistet?  Bitte geben Sie an, inwieweit folgende Aussagen für Ihren Verantwortungsbereich zutreffen."
data[, 164] <- factor(data[, 164], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft gar nicht zu", "trifft eher nicht zu", "trifft eher zu", "trifft voll zu", "Keine Veränderung, da bereits vorher in hohem Maße gegeben"))
names(data)[164] <- "beistrat_SQ016"
# LimeSurvey Field type: A
data[, 165] <- as.character(data[, 165])
attributes(data)$variable.labels[165] <- ""
names(data)[165] <- "beistratother"
# LimeSurvey Field type: A
data[, 166] <- as.character(data[, 166])
attributes(data)$variable.labels[166] <- "[Es gibt ein Paten-/Mentoringprogramm zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 166] <- factor(data[, 166], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[166] <- "wirkstrat_SQ001"
# LimeSurvey Field type: A
data[, 167] <- as.character(data[, 167])
attributes(data)$variable.labels[167] <- "[Es gibt ein Paten-/Mentoringprogramm  zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 167] <- factor(data[, 167], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[167] <- "wirkstrat_SQ002"
# LimeSurvey Field type: A
data[, 168] <- as.character(data[, 168])
attributes(data)$variable.labels[168] <- "[Es gibt ein Paten-/Mentoringprogramm zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 168] <- factor(data[, 168], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[168] <- "wirkstrat_SQ003"
# LimeSurvey Field type: A
data[, 169] <- as.character(data[, 169])
attributes(data)$variable.labels[169] <- "[Es gibt ein Paten-/Mentoringprogramm zur Berücksichtung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 169] <- factor(data[, 169], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[169] <- "wirkstrat_SQ049"
# LimeSurvey Field type: A
data[, 170] <- as.character(data[, 170])
attributes(data)$variable.labels[170] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.)  zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 170] <- factor(data[, 170], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[170] <- "wirkstrat_SQ010"
# LimeSurvey Field type: A
data[, 171] <- as.character(data[, 171])
attributes(data)$variable.labels[171] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.) zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 171] <- factor(data[, 171], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[171] <- "wirkstrat_SQ011"
# LimeSurvey Field type: A
data[, 172] <- as.character(data[, 172])
attributes(data)$variable.labels[172] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.) zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 172] <- factor(data[, 172], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[172] <- "wirkstrat_SQ012"
# LimeSurvey Field type: A
data[, 173] <- as.character(data[, 173])
attributes(data)$variable.labels[173] <- "[Es gibt eine gezielte Ansprache zur Mitarbeit in der Einrichtung/Abteilung angesprochen (z. B. mit gesonderten Kampagnen, durch Kontakte zum Betriebsrat etc.) zur Berücksichtung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 173] <- factor(data[, 173], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[173] <- "wirkstrat_SQ050"
# LimeSurvey Field type: A
data[, 174] <- as.character(data[, 174])
attributes(data)$variable.labels[174] <- "[Praktikumsplatzkontingente werden bereitgestellt zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 174] <- factor(data[, 174], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[174] <- "wirkstrat_SQ004"
# LimeSurvey Field type: A
data[, 175] <- as.character(data[, 175])
attributes(data)$variable.labels[175] <- "[Praktikumsplatzkontingente werden bereitgestellt zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 175] <- factor(data[, 175], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[175] <- "wirkstrat_SQ005"
# LimeSurvey Field type: A
data[, 176] <- as.character(data[, 176])
attributes(data)$variable.labels[176] <- "[Praktikumsplatzkontingente werden bereitgestellt zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 176] <- factor(data[, 176], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[176] <- "wirkstrat_SQ006"
# LimeSurvey Field type: A
data[, 177] <- as.character(data[, 177])
attributes(data)$variable.labels[177] <- "[Praktikumsplatzkontingente werden bereitgestellt zur Berücksichtung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 177] <- factor(data[, 177], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[177] <- "wirkstrat_SQ051"
# LimeSurvey Field type: A
data[, 178] <- as.character(data[, 178])
attributes(data)$variable.labels[178] <- "[Ausbildungsplatzkontingente werden bereitgestellt zur Gleichstellung von Frau und Mann] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 178] <- factor(data[, 178], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[178] <- "wirkstrat_SQ007"
# LimeSurvey Field type: A
data[, 179] <- as.character(data[, 179])
attributes(data)$variable.labels[179] <- "[Ausbildungsplatzkontingente werden bereitgestellt zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 179] <- factor(data[, 179], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[179] <- "wirkstrat_SQ008"
# LimeSurvey Field type: A
data[, 180] <- as.character(data[, 180])
attributes(data)$variable.labels[180] <- "[Ausbildungsplatzkontingente werden bereitgestellt zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 180] <- factor(data[, 180], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[180] <- "wirkstrat_SQ009"
# LimeSurvey Field type: A
data[, 181] <- as.character(data[, 181])
attributes(data)$variable.labels[181] <- "[Ausbildungsplatzkontingente werden bereitgestellt zur Berücksichtung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 181] <- factor(data[, 181], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[181] <- "wirkstrat_SQ052"
# LimeSurvey Field type: A
data[, 182] <- as.character(data[, 182])
attributes(data)$variable.labels[182] <- "[Mitarbeitende nehmen an Fortbildungen teil zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 182] <- factor(data[, 182], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[182] <- "wirkstrat_SQ053"
# LimeSurvey Field type: A
data[, 183] <- as.character(data[, 183])
attributes(data)$variable.labels[183] <- "[Mitarbeitende nehmen an Fortbildungen teil zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 183] <- factor(data[, 183], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[183] <- "wirkstrat_SQ054"
# LimeSurvey Field type: A
data[, 184] <- as.character(data[, 184])
attributes(data)$variable.labels[184] <- "[Mitarbeitende nehmen an Fortbildungen teil zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 184] <- factor(data[, 184], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[184] <- "wirkstrat_SQ055"
# LimeSurvey Field type: A
data[, 185] <- as.character(data[, 185])
attributes(data)$variable.labels[185] <- "[Mitarbeitende nehmen an Fortbildungen teil zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 185] <- factor(data[, 185], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[185] <- "wirkstrat_SQ056"
# LimeSurvey Field type: A
data[, 186] <- as.character(data[, 186])
attributes(data)$variable.labels[186] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 186] <- factor(data[, 186], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[186] <- "wirkstrat_SQ057"
# LimeSurvey Field type: A
data[, 187] <- as.character(data[, 187])
attributes(data)$variable.labels[187] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 187] <- factor(data[, 187], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[187] <- "wirkstrat_SQ058"
# LimeSurvey Field type: A
data[, 188] <- as.character(data[, 188])
attributes(data)$variable.labels[188] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 188] <- factor(data[, 188], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[188] <- "wirkstrat_SQ059"
# LimeSurvey Field type: A
data[, 189] <- as.character(data[, 189])
attributes(data)$variable.labels[189] <- "[Es werden anonymisierte Bewerbungsverfahren durchgeführt zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 189] <- factor(data[, 189], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[189] <- "wirkstrat_SQ060"
# LimeSurvey Field type: A
data[, 190] <- as.character(data[, 190])
attributes(data)$variable.labels[190] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 190] <- factor(data[, 190], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[190] <- "wirkstrat_SQ061"
# LimeSurvey Field type: A
data[, 191] <- as.character(data[, 191])
attributes(data)$variable.labels[191] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 191] <- factor(data[, 191], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[191] <- "wirkstrat_SQ062"
# LimeSurvey Field type: A
data[, 192] <- as.character(data[, 192])
attributes(data)$variable.labels[192] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 192] <- factor(data[, 192], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[192] <- "wirkstrat_SQ063"
# LimeSurvey Field type: A
data[, 193] <- as.character(data[, 193])
attributes(data)$variable.labels[193] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 193] <- factor(data[, 193], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[193] <- "wirkstrat_SQ064"
# LimeSurvey Field type: A
data[, 194] <- as.character(data[, 194])
attributes(data)$variable.labels[194] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 194] <- factor(data[, 194], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[194] <- "wirkstrat_SQ065"
# LimeSurvey Field type: A
data[, 195] <- as.character(data[, 195])
attributes(data)$variable.labels[195] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 195] <- factor(data[, 195], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[195] <- "wirkstrat_SQ066"
# LimeSurvey Field type: A
data[, 196] <- as.character(data[, 196])
attributes(data)$variable.labels[196] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 196] <- factor(data[, 196], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[196] <- "wirkstrat_SQ067"
# LimeSurvey Field type: A
data[, 197] <- as.character(data[, 197])
attributes(data)$variable.labels[197] <- "[Es gibt Mitarbeitenden-Vorgesetztengespräche/ Feedbackrunden zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 197] <- factor(data[, 197], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[197] <- "wirkstrat_SQ068"
# LimeSurvey Field type: A
data[, 198] <- as.character(data[, 198])
attributes(data)$variable.labels[198] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 198] <- factor(data[, 198], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[198] <- "wirkstrat_SQ069"
# LimeSurvey Field type: A
data[, 199] <- as.character(data[, 199])
attributes(data)$variable.labels[199] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 199] <- factor(data[, 199], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[199] <- "wirkstrat_SQ070"
# LimeSurvey Field type: A
data[, 200] <- as.character(data[, 200])
attributes(data)$variable.labels[200] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 200] <- factor(data[, 200], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[200] <- "wirkstrat_SQ071"
# LimeSurvey Field type: A
data[, 201] <- as.character(data[, 201])
attributes(data)$variable.labels[201] <- "[Eine Beschwerdestelle wurde den Mitarbeitenden bekannt gemacht zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 201] <- factor(data[, 201], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[201] <- "wirkstrat_SQ072"
# LimeSurvey Field type: A
data[, 202] <- as.character(data[, 202])
attributes(data)$variable.labels[202] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 202] <- factor(data[, 202], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[202] <- "wirkstrat_SQ073"
# LimeSurvey Field type: A
data[, 203] <- as.character(data[, 203])
attributes(data)$variable.labels[203] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 203] <- factor(data[, 203], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[203] <- "wirkstrat_SQ074"
# LimeSurvey Field type: A
data[, 204] <- as.character(data[, 204])
attributes(data)$variable.labels[204] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 204] <- factor(data[, 204], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[204] <- "wirkstrat_SQ075"
# LimeSurvey Field type: A
data[, 205] <- as.character(data[, 205])
attributes(data)$variable.labels[205] <- "[In Fällen von Diskriminierung wird eine Beschwerdestelle konsultiert/ zur Schlichtung hinzugezogen zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 205] <- factor(data[, 205], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[205] <- "wirkstrat_SQ076"
# LimeSurvey Field type: A
data[, 206] <- as.character(data[, 206])
attributes(data)$variable.labels[206] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 206] <- factor(data[, 206], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[206] <- "wirkstrat_SQ077"
# LimeSurvey Field type: A
data[, 207] <- as.character(data[, 207])
attributes(data)$variable.labels[207] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 207] <- factor(data[, 207], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[207] <- "wirkstrat_SQ078"
# LimeSurvey Field type: A
data[, 208] <- as.character(data[, 208])
attributes(data)$variable.labels[208] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 208] <- factor(data[, 208], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[208] <- "wirkstrat_SQ079"
# LimeSurvey Field type: A
data[, 209] <- as.character(data[, 209])
attributes(data)$variable.labels[209] <- "[Es wurden ein Leitbild, Leitlinien oder ein Maßnahmenplan entwickelt zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 209] <- factor(data[, 209], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[209] <- "wirkstrat_SQ080"
# LimeSurvey Field type: A
data[, 210] <- as.character(data[, 210])
attributes(data)$variable.labels[210] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 210] <- factor(data[, 210], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[210] <- "wirkstrat_SQ081"
# LimeSurvey Field type: A
data[, 211] <- as.character(data[, 211])
attributes(data)$variable.labels[211] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 211] <- factor(data[, 211], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[211] <- "wirkstrat_SQ082"
# LimeSurvey Field type: A
data[, 212] <- as.character(data[, 212])
attributes(data)$variable.labels[212] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 212] <- factor(data[, 212], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[212] <- "wirkstrat_SQ083"
# LimeSurvey Field type: A
data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- "[Es wurde ein Organisationsentwicklungs-Prozess begonnen zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 213] <- factor(data[, 213], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[213] <- "wirkstrat_SQ084"
# LimeSurvey Field type: A
data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 214] <- factor(data[, 214], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[214] <- "wirkstrat_SQ085"
# LimeSurvey Field type: A
data[, 215] <- as.character(data[, 215])
attributes(data)$variable.labels[215] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 215] <- factor(data[, 215], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[215] <- "wirkstrat_SQ086"
# LimeSurvey Field type: A
data[, 216] <- as.character(data[, 216])
attributes(data)$variable.labels[216] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 216] <- factor(data[, 216], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[216] <- "wirkstrat_SQ087"
# LimeSurvey Field type: A
data[, 217] <- as.character(data[, 217])
attributes(data)$variable.labels[217] <- "[Es gibt eine Öffentlichkeitsarbeit, die Vielfalt berücksichtigt zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 217] <- factor(data[, 217], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[217] <- "wirkstrat_SQ088"
# LimeSurvey Field type: A
data[, 218] <- as.character(data[, 218])
attributes(data)$variable.labels[218] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 218] <- factor(data[, 218], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[218] <- "wirkstrat_SQ089"
# LimeSurvey Field type: A
data[, 219] <- as.character(data[, 219])
attributes(data)$variable.labels[219] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 219] <- factor(data[, 219], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[219] <- "wirkstrat_SQ090"
# LimeSurvey Field type: A
data[, 220] <- as.character(data[, 220])
attributes(data)$variable.labels[220] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 220] <- factor(data[, 220], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[220] <- "wirkstrat_SQ091"
# LimeSurvey Field type: A
data[, 221] <- as.character(data[, 221])
attributes(data)$variable.labels[221] <- "[Es gibt einen (Mitarbeitenden-)Austausch mit anderen Verwaltungen und / oder Organisationen zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 221] <- factor(data[, 221], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[221] <- "wirkstrat_SQ092"
# LimeSurvey Field type: A
data[, 222] <- as.character(data[, 222])
attributes(data)$variable.labels[222] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen: zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 222] <- factor(data[, 222], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[222] <- "wirkstrat_SQ093"
# LimeSurvey Field type: A
data[, 223] <- as.character(data[, 223])
attributes(data)$variable.labels[223] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen: zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 223] <- factor(data[, 223], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[223] <- "wirkstrat_SQ094"
# LimeSurvey Field type: A
data[, 224] <- as.character(data[, 224])
attributes(data)$variable.labels[224] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen: zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 224] <- factor(data[, 224], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[224] <- "wirkstrat_SQ095"
# LimeSurvey Field type: A
data[, 225] <- as.character(data[, 225])
attributes(data)$variable.labels[225] <- "[Ich habe an Schulungsangeboten zu folgenden Führungskonzepten teilgenommen: zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 225] <- factor(data[, 225], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[225] <- "wirkstrat_SQ096"
# LimeSurvey Field type: A
data[, 226] <- as.character(data[, 226])
attributes(data)$variable.labels[226] <- "[Andere umgesetzt Startegie/Maßnahme ({stratzielgother.NAOK}) zur Gleichstellung von Frau und Mann ] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 226] <- factor(data[, 226], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[226] <- "wirkstrat_SQ097"
# LimeSurvey Field type: A
data[, 227] <- as.character(data[, 227])
attributes(data)$variable.labels[227] <- "[Andere umgesetzt Startegie/Maßnahme ({stratzielgother.NAOK}) zur Gleichberechtigung von Menschen mit Beeinträchtigung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 227] <- factor(data[, 227], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[227] <- "wirkstrat_SQ098"
# LimeSurvey Field type: A
data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- "[Andere umgesetzt Startegie/Maßnahme ({stratzielgother.NAOK}) zur interkulturellen Öffnung] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 228] <- factor(data[, 228], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[228] <- "wirkstrat_SQ099"
# LimeSurvey Field type: A
data[, 229] <- as.character(data[, 229])
attributes(data)$variable.labels[229] <- "[Andere umgesetzt Startegie/Maßnahme ({stratzielgother.NAOK}) zur Berücksichtigung des Lebensalters] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 229] <- factor(data[, 229], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[229] <- "wirkstrat_SQ100"
# LimeSurvey Field type: A
data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- "[Mitarbeitende besuchen Sprachkurse.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 230] <- factor(data[, 230], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[230] <- "wirkstrat_SQ013"
# LimeSurvey Field type: A
data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- "[Die Essensangebote in der Kantine werden den Essgewohnheiten und -regeln der Mitarbeitenden zunehmend gerecht.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 231] <- factor(data[, 231], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[231] <- "wirkstrat_SQ014"
# LimeSurvey Field type: A
data[, 232] <- as.character(data[, 232])
attributes(data)$variable.labels[232] <- "[Diversity-Kompetenz bzw. interkulturelle Kompetenz wird als Teil des Anforderungsprofils für Mitarbeitende aktiv eingefordert.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 232] <- factor(data[, 232], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[232] <- "wirkstrat_SQ015"
# LimeSurvey Field type: A
data[, 233] <- as.character(data[, 233])
attributes(data)$variable.labels[233] <- "[Vor Entscheidungsfindungen werden regelmäßig Akteure konsultiert, die die Belange von Menschen mit Migrationshintergrund einbringen.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 233] <- factor(data[, 233], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[233] <- "wirkstrat_SQ016"
# LimeSurvey Field type: A
data[, 234] <- as.character(data[, 234])
attributes(data)$variable.labels[234] <- "[Es steht ein Gebets- und/oder ein Stille-Raum zur Verfügung.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 234] <- factor(data[, 234], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[234] <- "wirkstrat_SQ017"
# LimeSurvey Field type: A
data[, 235] <- as.character(data[, 235])
attributes(data)$variable.labels[235] <- "[Es gibt ein Kontingent an Urlaubstagen, das Mitarbeitende für unterschiedliche religiöse Feiertage ausschöpfen können.] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 235] <- factor(data[, 235], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[235] <- "wirkstrat_SQ018"
# LimeSurvey Field type: A
data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- "[{stratikoe_other.NAOK}] Ihrer Einschätzung nach: Wie wirksam sind die von Ihnen umgesetzten Strategien und Maßnahmen für die Förderung von Vielfalt und Chancengleichheit? In der nachfolgenden Liste sind nur die Strategien und Maßnahmen aufgelistet, die Sie angegeben haben."
data[, 236] <- factor(data[, 236], levels=c("A1","A2","A3","A4"),labels=c("gar nicht wirksam", "weniger wirksam", "eher wirksam", "sehr wirksam"))
names(data)[236] <- "wirkstrat_SQ048"
# LimeSurvey Field type: A
data[, 237] <- as.character(data[, 237])
attributes(data)$variable.labels[237] <- ""
names(data)[237] <- "wirkstratother"
# LimeSurvey Field type: A
data[, 238] <- as.character(data[, 238])
attributes(data)$variable.labels[238] <- "Haben Sie weitere/zukünftige Maßnahmen und Strategien geplant?"
data[, 238] <- factor(data[, 238], levels=c("A1"),labels=c("nein"))
names(data)[238] <- "planstrat"
# LimeSurvey Field type: A
data[, 239] <- as.character(data[, 239])
attributes(data)$variable.labels[239] <- "[Sonstiges] Haben Sie weitere/zukünftige Maßnahmen und Strategien geplant?"
names(data)[239] <- "planstrat_other"
# LimeSurvey Field type: F
data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[bürokratische Barrieren] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 240] <- factor(data[, 240], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[240] <- "hindstrat_SQ006"
# LimeSurvey Field type: A
data[, 241] <- as.character(data[, 241])
attributes(data)$variable.labels[241] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[241] <- "hindstrat_SQ006comment"
# LimeSurvey Field type: F
data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[Zeitmangel] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 242] <- factor(data[, 242], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[242] <- "hindstrat_SQ009"
# LimeSurvey Field type: A
data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[243] <- "hindstrat_SQ009comment"
# LimeSurvey Field type: F
data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[keine ausreichende finanzielle Unterstützung] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 244] <- factor(data[, 244], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[244] <- "hindstrat_SQ002"
# LimeSurvey Field type: A
data[, 245] <- as.character(data[, 245])
attributes(data)$variable.labels[245] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[245] <- "hindstrat_SQ002comment"
# LimeSurvey Field type: F
data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[fehlende gesetzliche Grundlage, und zwar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 246] <- factor(data[, 246], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[246] <- "hindstrat_SQ012"
# LimeSurvey Field type: A
data[, 247] <- as.character(data[, 247])
attributes(data)$variable.labels[247] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[247] <- "hindstrat_SQ012comment"
# LimeSurvey Field type: F
data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Mangel an Vielfalt wird nicht als Problem wahrgenommen] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 248] <- factor(data[, 248], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[248] <- "hindstrat_SQ003"
# LimeSurvey Field type: A
data[, 249] <- as.character(data[, 249])
attributes(data)$variable.labels[249] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[249] <- "hindstrat_SQ003comment"
# LimeSurvey Field type: F
data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[weil sich unsere Einrichtung als Ganzes als neutral betrachtet] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 250] <- factor(data[, 250], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[250] <- "hindstrat_SQ004"
# LimeSurvey Field type: A
data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[251] <- "hindstrat_SQ004comment"
# LimeSurvey Field type: F
data[, 252] <- as.numeric(data[, 252])
attributes(data)$variable.labels[252] <- "[keine ausreichende Unterstützung von der (höheren) Leitungsebene] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 252] <- factor(data[, 252], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[252] <- "hindstrat_SQ005"
# LimeSurvey Field type: A
data[, 253] <- as.character(data[, 253])
attributes(data)$variable.labels[253] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[253] <- "hindstrat_SQ005comment"
# LimeSurvey Field type: F
data[, 254] <- as.numeric(data[, 254])
attributes(data)$variable.labels[254] <- "[kein förderliches öffentliches Meinungsklima] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 254] <- factor(data[, 254], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[254] <- "hindstrat_SQ001"
# LimeSurvey Field type: A
data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[255] <- "hindstrat_SQ001comment"
# LimeSurvey Field type: F
data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[fehlende Verwaltungsrichtlinien, und zwar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 256] <- factor(data[, 256], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[256] <- "hindstrat_SQ011"
# LimeSurvey Field type: A
data[, 257] <- as.character(data[, 257])
attributes(data)$variable.labels[257] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[257] <- "hindstrat_SQ011comment"
# LimeSurvey Field type: F
data[, 258] <- as.numeric(data[, 258])
attributes(data)$variable.labels[258] <- "[es gibt nicht genügend geeignetes Personal (z. B. mit Migrationshintergrund)] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 258] <- factor(data[, 258], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[258] <- "hindstrat_SQ007"
# LimeSurvey Field type: A
data[, 259] <- as.character(data[, 259])
attributes(data)$variable.labels[259] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[259] <- "hindstrat_SQ007comment"
# LimeSurvey Field type: F
data[, 260] <- as.numeric(data[, 260])
attributes(data)$variable.labels[260] <- "[Das Team trägt die Maßnahmen/ Strategien nicht mit] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 260] <- factor(data[, 260], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[260] <- "hindstrat_SQ008"
# LimeSurvey Field type: A
data[, 261] <- as.character(data[, 261])
attributes(data)$variable.labels[261] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[261] <- "hindstrat_SQ008comment"
# LimeSurvey Field type: F
data[, 262] <- as.numeric(data[, 262])
attributes(data)$variable.labels[262] <- "[andere Gründe, und zwar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 262] <- factor(data[, 262], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[262] <- "hindstrat_SQ013"
# LimeSurvey Field type: A
data[, 263] <- as.character(data[, 263])
attributes(data)$variable.labels[263] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[263] <- "hindstrat_SQ013comment"
# LimeSurvey Field type: F
data[, 264] <- as.numeric(data[, 264])
attributes(data)$variable.labels[264] <- "[es bestand/besteht keine Notwendigkeit] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
data[, 264] <- factor(data[, 264], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[264] <- "hindstrat_SQ010"
# LimeSurvey Field type: A
data[, 265] <- as.character(data[, 265])
attributes(data)$variable.labels[265] <- "[Kommentar] Ihrer Erfahrung nach: Woran liegt es, wenn sich Maßnahmen und Strategien zur Förderung von Vielfalt und Chancengleichheit nicht umsetzen lassen?     Bitte kreuzen Sie nur Gründe an, die Sie selbst bereits als hinderlich erlebt haben. Mehrfachantworten sind möglich."
names(data)[265] <- "hindstrat_SQ010comment"
# LimeSurvey Field type: A
data[, 266] <- as.character(data[, 266])
attributes(data)$variable.labels[266] <- "Welche unterstützenden Rahmenbedingungen würden Sie benötigen, um die genannten und / oder weitere Strategien in Ihrem Arbeitsalltag umzusetzen?"
names(data)[266] <- "stratbed"
# LimeSurvey Field type: A
data[, 267] <- as.character(data[, 267])
attributes(data)$variable.labels[267] <- "Welche unterstützenden Rahmenbedingungen würden Sie benötigen, um Strategien und Maßnahmen zur Förderung von Chancengerechtigkeit und Vielfalt umzusetzen?"
names(data)[267] <- "bedkeinstrat"
# LimeSurvey Field type: A
data[, 268] <- as.character(data[, 268])
attributes(data)$variable.labels[268] <- "[Behinderung/ Beeinträchtigung ] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 268] <- factor(data[, 268], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[268] <- "mgeshand_SQ002"
# LimeSurvey Field type: A
data[, 269] <- as.character(data[, 269])
attributes(data)$variable.labels[269] <- "[Geschlecht] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 269] <- factor(data[, 269], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[269] <- "mgeshand_SQ004"
# LimeSurvey Field type: A
data[, 270] <- as.character(data[, 270])
attributes(data)$variable.labels[270] <- "[Hohes Lebensalter] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 270] <- factor(data[, 270], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[270] <- "mgeshand_SQ005"
# LimeSurvey Field type: A
data[, 271] <- as.character(data[, 271])
attributes(data)$variable.labels[271] <- "[Junges Lebensalter] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 271] <- factor(data[, 271], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[271] <- "mgeshand_SQ006"
# LimeSurvey Field type: A
data[, 272] <- as.character(data[, 272])
attributes(data)$variable.labels[272] <- "[Ostdeutsch sozialisiert] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 272] <- factor(data[, 272], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[272] <- "mgeshand_SQ007"
# LimeSurvey Field type: A
data[, 273] <- as.character(data[, 273])
attributes(data)$variable.labels[273] <- "[Westdeutsch sozialisiert] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 273] <- factor(data[, 273], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[273] <- "mgeshand_SQ013"
# LimeSurvey Field type: A
data[, 274] <- as.character(data[, 274])
attributes(data)$variable.labels[274] <- "[Religion ] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 274] <- factor(data[, 274], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[274] <- "mgeshand_SQ008"
# LimeSurvey Field type: A
data[, 275] <- as.character(data[, 275])
attributes(data)$variable.labels[275] <- "[Sexuelle Orientierung / Identität] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 275] <- factor(data[, 275], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[275] <- "mgeshand_SQ009"
# LimeSurvey Field type: A
data[, 276] <- as.character(data[, 276])
attributes(data)$variable.labels[276] <- "[Ethnische Herkunft/ rassistische Diskriminierung] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 276] <- factor(data[, 276], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[276] <- "mgeshand_SQ003"
# LimeSurvey Field type: A
data[, 277] <- as.character(data[, 277])
attributes(data)$variable.labels[277] <- "[Soziale Herkunft / sozio-ökonomische Lage] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 277] <- factor(data[, 277], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[277] <- "mgeshand_SQ010"
# LimeSurvey Field type: A
data[, 278] <- as.character(data[, 278])
attributes(data)$variable.labels[278] <- "[Körpergewichtsdiskriminierung] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 278] <- factor(data[, 278], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[278] <- "mgeshand_SQ011"
# LimeSurvey Field type: A
data[, 279] <- as.character(data[, 279])
attributes(data)$variable.labels[279] <- "[andere, und zwar] Wie hoch schätzen Sie den gesellschaftlichen Handlungsbedarf zur Förderung von  Chancengerechtigkeit für die folgenden Dimensionen ein? Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 279] <- factor(data[, 279], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht / keine Einschätzung"))
names(data)[279] <- "mgeshand_SQ012"
# LimeSurvey Field type: A
data[, 280] <- as.character(data[, 280])
attributes(data)$variable.labels[280] <- ""
names(data)[280] <- "mgeshandother"
# LimeSurvey Field type: A
data[, 281] <- as.character(data[, 281])
attributes(data)$variable.labels[281] <- "[Behinderung/ Beeinträchtigung ] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 281] <- factor(data[, 281], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[281] <- "mhandab_SQ002"
# LimeSurvey Field type: A
data[, 282] <- as.character(data[, 282])
attributes(data)$variable.labels[282] <- "[Geschlecht] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 282] <- factor(data[, 282], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[282] <- "mhandab_SQ004"
# LimeSurvey Field type: A
data[, 283] <- as.character(data[, 283])
attributes(data)$variable.labels[283] <- "[Hohes Lebensalter] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 283] <- factor(data[, 283], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[283] <- "mhandab_SQ005"
# LimeSurvey Field type: A
data[, 284] <- as.character(data[, 284])
attributes(data)$variable.labels[284] <- "[Junges Lebensalter] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 284] <- factor(data[, 284], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[284] <- "mhandab_SQ006"
# LimeSurvey Field type: A
data[, 285] <- as.character(data[, 285])
attributes(data)$variable.labels[285] <- "[Ostdeutsch sozialisiert] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 285] <- factor(data[, 285], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[285] <- "mhandab_SQ007"
# LimeSurvey Field type: A
data[, 286] <- as.character(data[, 286])
attributes(data)$variable.labels[286] <- "[Westdeutsch sozialisiert] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 286] <- factor(data[, 286], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[286] <- "mhandab_SQ013"
# LimeSurvey Field type: A
data[, 287] <- as.character(data[, 287])
attributes(data)$variable.labels[287] <- "[Religion ] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 287] <- factor(data[, 287], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[287] <- "mhandab_SQ008"
# LimeSurvey Field type: A
data[, 288] <- as.character(data[, 288])
attributes(data)$variable.labels[288] <- "[Sexuelle Orientierung/ Identität] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 288] <- factor(data[, 288], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[288] <- "mhandab_SQ009"
# LimeSurvey Field type: A
data[, 289] <- as.character(data[, 289])
attributes(data)$variable.labels[289] <- "[Ethnische Herkunft/ rassistische Diskriminierung] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 289] <- factor(data[, 289], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[289] <- "mhandab_SQ003"
# LimeSurvey Field type: A
data[, 290] <- as.character(data[, 290])
attributes(data)$variable.labels[290] <- "[Soziale Herkunft/ sozio-ökonomische Lage] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 290] <- factor(data[, 290], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[290] <- "mhandab_SQ010"
# LimeSurvey Field type: A
data[, 291] <- as.character(data[, 291])
attributes(data)$variable.labels[291] <- "[Körpergewichtsdiskriminierung] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 291] <- factor(data[, 291], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[291] <- "mhandab_SQ011"
# LimeSurvey Field type: A
data[, 292] <- as.character(data[, 292])
attributes(data)$variable.labels[292] <- "[andere und zwar:] Wie hoch schätzen Sie in Ihrem Arbeitsbereich den Handlungsbedarf zur Förderung von Chancengerechtigkeit für die folgenden Dimensionen ein?   Bitte geben Sie ihre Einschätzung an auf einer Skala von 1 = überhaupt nicht wichtig bis 5 = absolut notwendig."
data[, 292] <- factor(data[, 292], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=überhaupt nicht wichtig", "von geringer Bedeutung", "von mittlerer Bedeutung", "sehr wichtig", "5=absolut notwendig", "weiß nicht/keine Einschätzung"))
names(data)[292] <- "mhandab_SQ012"
# LimeSurvey Field type: A
data[, 293] <- as.character(data[, 293])
attributes(data)$variable.labels[293] <- ""
names(data)[293] <- "mhandabother"
# LimeSurvey Field type: A
data[, 294] <- as.character(data[, 294])
attributes(data)$variable.labels[294] <- "[Die Mitarbeitenden gehen respektvoll miteinander um. ] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 294] <- factor(data[, 294], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[294] <- "klimat_SQ001"
# LimeSurvey Field type: A
data[, 295] <- as.character(data[, 295])
attributes(data)$variable.labels[295] <- "[Ich habe Diskriminierung von Mitarbeitenden beobachtet.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 295] <- factor(data[, 295], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[295] <- "klimat_SQ002"
# LimeSurvey Field type: A
data[, 296] <- as.character(data[, 296])
attributes(data)$variable.labels[296] <- "[Den Mitarbeitenden wird vertraut. ] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 296] <- factor(data[, 296], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[296] <- "klimat_SQ003"
# LimeSurvey Field type: A
data[, 297] <- as.character(data[, 297])
attributes(data)$variable.labels[297] <- "[Auf Fragen und Probleme der Mitarbeitenden wird schnell reagiert. ] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 297] <- factor(data[, 297], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[297] <- "klimat_SQ004"
# LimeSurvey Field type: A
data[, 298] <- as.character(data[, 298])
attributes(data)$variable.labels[298] <- "[Die Arbeit der Mitarbeitenden wird geschätzt.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 298] <- factor(data[, 298], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[298] <- "klimat_SQ005"
# LimeSurvey Field type: A
data[, 299] <- as.character(data[, 299])
attributes(data)$variable.labels[299] <- "[Beschwerden von Mitarbeitenden werden ernst genommen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 299] <- factor(data[, 299], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[299] <- "klimat_SQ006"
# LimeSurvey Field type: A
data[, 300] <- as.character(data[, 300])
attributes(data)$variable.labels[300] <- "[Die Mitarbeitenden werden von Vorgesetzten mit Respekt behandelt.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 300] <- factor(data[, 300], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[300] <- "klimat_SQ007"
# LimeSurvey Field type: A
data[, 301] <- as.character(data[, 301])
attributes(data)$variable.labels[301] <- "[Ich wurde auf der Arbeit diskriminiert.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 301] <- factor(data[, 301], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[301] <- "klimat_SQ008"
# LimeSurvey Field type: A
data[, 302] <- as.character(data[, 302])
attributes(data)$variable.labels[302] <- "[Ich vertraue meinen Vorgesetzen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 302] <- factor(data[, 302], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[302] <- "klimat_SQ009"
# LimeSurvey Field type: A
data[, 303] <- as.character(data[, 303])
attributes(data)$variable.labels[303] <- "[Ich erlebe häufig Konflikte mit meinen Kolleg_innen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 303] <- factor(data[, 303], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[303] <- "klimat_SQ010"
# LimeSurvey Field type: A
data[, 304] <- as.character(data[, 304])
attributes(data)$variable.labels[304] <- "[Ich habe Vertrauen in die Entscheidungsstrukturen (Hierarchien) meiner Behörde/Einrichtung.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf das Arbeitsklima an Ihrem Arbeitsplatz zustimmen?   1= stimme nicht zu und 5= stimme zu"
data[, 304] <- factor(data[, 304], levels=c("A2","A3","A4","A5","A6","A7"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils / teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[304] <- "klimat_SQ011"
# LimeSurvey Field type: A
data[, 305] <- as.character(data[, 305])
attributes(data)$variable.labels[305] <- "[Die Einstellung von Kandidat_innen mit Migrationshintergrund hat einen hohen Stellenwert.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 305] <- factor(data[, 305], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[305] <- "klimadp_SQ001"
# LimeSurvey Field type: A
data[, 306] <- as.character(data[, 306])
attributes(data)$variable.labels[306] <- "[Meine Vorgesetzen verfolgen Beschwerden im Zusammenhang mit Vielfalt.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 306] <- factor(data[, 306], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[306] <- "klimadp_SQ002"
# LimeSurvey Field type: A
data[, 307] <- as.character(data[, 307])
attributes(data)$variable.labels[307] <- "[Über Diskriminierung kann offen gesprochen werden.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 307] <- factor(data[, 307], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[307] <- "klimadp_SQ003"
# LimeSurvey Field type: A
data[, 308] <- as.character(data[, 308])
attributes(data)$variable.labels[308] <- "[Für diversitätsbezogene Veranstaltungen (z.B. Beeinträchtigung/Gleichstellung) gibt es organisatorische Unterstützung.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 308] <- factor(data[, 308], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[308] <- "klimadp_SQ004"
# LimeSurvey Field type: A
data[, 309] <- as.character(data[, 309])
attributes(data)$variable.labels[309] <- "[Ich weiß, welche Regelungen und Verfahren es gibt, wenn ich sexuell belästigt und/oder diskriminiert werde.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 309] <- factor(data[, 309], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[309] <- "klimadp_SQ005"
# LimeSurvey Field type: A
data[, 310] <- as.character(data[, 310])
attributes(data)$variable.labels[310] <- "[Ich kann beobachtete Diskriminierung melden.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 310] <- factor(data[, 310], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[310] <- "klimadp_SQ014"
# LimeSurvey Field type: A
data[, 311] <- as.character(data[, 311])
attributes(data)$variable.labels[311] <- "[Es werden Vorkehrungen getroffen, um die Bedarfe von Mitarbeitenden mit Beeinträchtigung/Behinderung zu berücksichtigen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 311] <- factor(data[, 311], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[311] <- "klimadp_SQ006"
# LimeSurvey Field type: A
data[, 312] <- as.character(data[, 312])
attributes(data)$variable.labels[312] <- "[Ich bekomme die Ressourcen, die ich brauche, um meine Arbeit effektiv zu erledigen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 312] <- factor(data[, 312], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[312] <- "klimadp_SQ007"
# LimeSurvey Field type: A
data[, 313] <- as.character(data[, 313])
attributes(data)$variable.labels[313] <- "[Ich kann an Weiterbildungsmaßnahmen zu Diversity- und Antidiskriminierung teilnehmen. ] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 313] <- factor(data[, 313], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[313] <- "klimadp_SQ008"
# LimeSurvey Field type: A
data[, 314] <- as.character(data[, 314])
attributes(data)$variable.labels[314] <- "[Ich fühle mich in der Definition von Vielfalt in der Behörde/Einrichtung mitgedacht.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 314] <- factor(data[, 314], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[314] <- "klimadp_SQ009"
# LimeSurvey Field type: A
data[, 315] <- as.character(data[, 315])
attributes(data)$variable.labels[315] <- "[Ich habe das Gefühl, dass andere meinen Beitrag in der Behörde/Einrichtung schätzen. ] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 315] <- factor(data[, 315], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[315] <- "klimadp_SQ010"
# LimeSurvey Field type: A
data[, 316] <- as.character(data[, 316])
attributes(data)$variable.labels[316] <- "[Ich habe das Gefühl, dass mir meine Fähigkeiten und Kompetenzen abgesprochen werden.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 316] <- factor(data[, 316], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[316] <- "klimadp_SQ011"
# LimeSurvey Field type: A
data[, 317] <- as.character(data[, 317])
attributes(data)$variable.labels[317] <- "[Antidiskriminierungs- und Belästigungsrichtlinien werden in der Behörde/Einrichtung umgesetzt.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 317] <- factor(data[, 317], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[317] <- "klimadp_SQ012"
# LimeSurvey Field type: A
data[, 318] <- as.character(data[, 318])
attributes(data)$variable.labels[318] <- "[Ich habe an Schulungsangeboten zu Diversity und Antidiskriminierung teilgenommen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 318] <- factor(data[, 318], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[318] <- "klimadp_SQ013"
# LimeSurvey Field type: A
data[, 319] <- as.character(data[, 319])
attributes(data)$variable.labels[319] <- "[Ich glaube, dass ich Einfluss auf die Gestaltung der Leitlinien, Verfahren und Vorgehensweisen habe.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 319] <- factor(data[, 319], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[319] <- "klimaink_SQ001"
# LimeSurvey Field type: A
data[, 320] <- as.character(data[, 320])
attributes(data)$variable.labels[320] <- "[Meine Kolleg_innen bedanken sich für die Arbeit, die ich leiste.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 320] <- factor(data[, 320], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[320] <- "klimaink_SQ002"
# LimeSurvey Field type: A
data[, 321] <- as.character(data[, 321])
attributes(data)$variable.labels[321] <- "[Es gibt keinerlei Toleranz für jegliche Form sexueller Belästigung.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 321] <- factor(data[, 321], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[321] <- "klimaink_SQ003"
# LimeSurvey Field type: A
data[, 322] <- as.character(data[, 322])
attributes(data)$variable.labels[322] <- "[Wenn ich Diskriminierung anspreche, muss ich keine negativen Konsequenzen befürchten.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 322] <- factor(data[, 322], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[322] <- "klimaink_SQ011"
# LimeSurvey Field type: A
data[, 323] <- as.character(data[, 323])
attributes(data)$variable.labels[323] <- "[Ich muss meine Werte und Überzeugungen nicht aufgeben, um von meinen Kolleg_innen bei der Arbeit akzeptiert zu werden.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 323] <- factor(data[, 323], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[323] <- "klimaink_SQ006"
# LimeSurvey Field type: A
data[, 324] <- as.character(data[, 324])
attributes(data)$variable.labels[324] <- "[Jede Person, unabhängig von Einstellungen und Herkunft, wird ermutigt ihre Ideen offen zu teilen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 324] <- factor(data[, 324], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[324] <- "klimaink_SQ007"
# LimeSurvey Field type: A
data[, 325] <- as.character(data[, 325])
attributes(data)$variable.labels[325] <- "[Menschen werden so akzeptiert, wie sie sind.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 325] <- factor(data[, 325], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[325] <- "klimaink_SQ008"
# LimeSurvey Field type: A
data[, 326] <- as.character(data[, 326])
attributes(data)$variable.labels[326] <- "[Alle arbeiten eng zusammen, um Ziele zu erreichen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 326] <- factor(data[, 326], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[326] <- "klimaink_SQ009"
# LimeSurvey Field type: A
data[, 327] <- as.character(data[, 327])
attributes(data)$variable.labels[327] <- "[Unterschiede werden begrüßt und wertgeschätzt.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Teilhabe in Ihrer Behörde/Einrichtung zustimmen?  1= stimme nicht zu und 5= stimme zu"
data[, 327] <- factor(data[, 327], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[327] <- "klimaink_SQ010"
# LimeSurvey Field type: A
data[, 328] <- as.character(data[, 328])
attributes(data)$variable.labels[328] <- "[Ich würde meine Behörde/Einrichtung anderen als einen guten Arbeitsplatz empfehlen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 328] <- factor(data[, 328], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[328] <- "klimaeng_SQ001"
# LimeSurvey Field type: A
data[, 329] <- as.character(data[, 329])
attributes(data)$variable.labels[329] <- "[Meine Arbeit bildet auch bei wechselnden Regierungen eine neutrale Konstante.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 329] <- factor(data[, 329], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[329] <- "klimaeng_SQ003"
# LimeSurvey Field type: A
data[, 330] <- as.character(data[, 330])
attributes(data)$variable.labels[330] <- "[Gute Arbeitsergebnisse zu erzielen, ist ein wichtiger Teil meines Selbstverständnisses.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 330] <- factor(data[, 330], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[330] <- "klimaeng_SQ005"
# LimeSurvey Field type: A
data[, 331] <- as.character(data[, 331])
attributes(data)$variable.labels[331] <- "[Es ist mir sehr wichtig, dass ich meine Arbeit gewissenhaft ausführe.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 331] <- factor(data[, 331], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[331] <- "klimaeng_SQ007"
# LimeSurvey Field type: A
data[, 332] <- as.character(data[, 332])
attributes(data)$variable.labels[332] <- "[Ich bin motiviert, mich über das übliche Maß hinaus einzubringen.] Ihren Erfahrungen und Einschätzungen nach: Inwieweit würden Sie folgenden Aussagen in Bezug auf Ihren Arbeitsplatz zustimmen?  1 = stimme nicht zu und 5 = stimme zu"
data[, 332] <- factor(data[, 332], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1=stimme nicht zu", "stimme eher nicht zu", "teils/teils", "stimme eher zu", "5=stimme zu", "weiß nicht"))
names(data)[332] <- "klimaeng_SQ006"
# LimeSurvey Field type: A
data[, 333] <- as.character(data[, 333])
attributes(data)$variable.labels[333] <- "Welche weiteren Maßnahmen würden Sie sich zur Verankerung von Diversität und Chancengerechtigkeit wünschen?"
names(data)[333] <- "wunmass"
# LimeSurvey Field type: F
data[, 334] <- as.numeric(data[, 334])
attributes(data)$variable.labels[334] <- "[weiblich] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
data[, 334] <- factor(data[, 334], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[334] <- "gender_SQ001"
# LimeSurvey Field type: F
data[, 335] <- as.numeric(data[, 335])
attributes(data)$variable.labels[335] <- "[männlich] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
data[, 335] <- factor(data[, 335], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[335] <- "gender_SQ002"
# LimeSurvey Field type: F
data[, 336] <- as.numeric(data[, 336])
attributes(data)$variable.labels[336] <- "[divers] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
data[, 336] <- factor(data[, 336], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[336] <- "gender_SQ003"
# LimeSurvey Field type: F
data[, 337] <- as.numeric(data[, 337])
attributes(data)$variable.labels[337] <- "[trans*] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
data[, 337] <- factor(data[, 337], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[337] <- "gender_SQ004"
# LimeSurvey Field type: F
data[, 338] <- as.numeric(data[, 338])
attributes(data)$variable.labels[338] <- "[inter*] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
data[, 338] <- factor(data[, 338], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[338] <- "gender_SQ005"
# LimeSurvey Field type: A
data[, 339] <- as.character(data[, 339])
attributes(data)$variable.labels[339] <- "[Sonstiges] Welchem Geschlecht3 ordnen Sie sich zu?  Mehrfachantworten sind möglich."
names(data)[339] <- "gender_other"
# LimeSurvey Field type: A
data[, 340] <- as.character(data[, 340])
attributes(data)$variable.labels[340] <- "In welchem Jahr sind sie geboren?"
data[, 340] <- factor(data[, 340], levels=c("A4","A5","A6","A7","A8","A9","A10","A11","A12","A13","A14","A15","A16","A17","A18","A19","A20","A21","A22","A23","A24","A25","A26","A27","A28","A29","A30","A31","A32","A33","A34","A35","A36","A37","A38","A39","A40","A41","A42","A43","A44","A45","A46","A47","A48","A49","A50","A51","A52","A53","A54","A55","A56","A57","A58","A59"),labels=c("1950", "1951", "1952", "1953", "1954", "1955", "1956", "1957", "1958", "1959", "1960", "1961", "1962", "1963", "1964", "1965", "1966", "1967", "1968", "1969", "1970", "1971", "1972", "1973", "1974", "1975", "1976", "1977", "1978", "1979", "1980", "1981", "1982", "1983", "1984", "1985", "1986", "1987", "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005"))
names(data)[340] <- "gebjahr"
# LimeSurvey Field type: F
data[, 341] <- as.numeric(data[, 341])
attributes(data)$variable.labels[341] <- "[Single] Welche Lebenssituation trifft auf Sie zu?"
data[, 341] <- factor(data[, 341], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[341] <- "lebsit_SQ002"
# LimeSurvey Field type: F
data[, 342] <- as.numeric(data[, 342])
attributes(data)$variable.labels[342] <- "[Alleinerziehend mit einem Kind] Welche Lebenssituation trifft auf Sie zu?"
data[, 342] <- factor(data[, 342], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[342] <- "lebsit_SQ003"
# LimeSurvey Field type: F
data[, 343] <- as.numeric(data[, 343])
attributes(data)$variable.labels[343] <- "[Alleinerziehend mit zwei oder mehr Kinder] Welche Lebenssituation trifft auf Sie zu?"
data[, 343] <- factor(data[, 343], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[343] <- "lebsit_SQ004"
# LimeSurvey Field type: F
data[, 344] <- as.numeric(data[, 344])
attributes(data)$variable.labels[344] <- "[Paar] Welche Lebenssituation trifft auf Sie zu?"
data[, 344] <- factor(data[, 344], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[344] <- "lebsit_SQ005"
# LimeSurvey Field type: F
data[, 345] <- as.numeric(data[, 345])
attributes(data)$variable.labels[345] <- "[Paar mit einem Kind] Welche Lebenssituation trifft auf Sie zu?"
data[, 345] <- factor(data[, 345], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[345] <- "lebsit_SQ006"
# LimeSurvey Field type: F
data[, 346] <- as.numeric(data[, 346])
attributes(data)$variable.labels[346] <- "[Paar mit zwei oder mehr Kindern] Welche Lebenssituation trifft auf Sie zu?"
data[, 346] <- factor(data[, 346], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[346] <- "lebsit_SQ007"
# LimeSurvey Field type: F
data[, 347] <- as.numeric(data[, 347])
attributes(data)$variable.labels[347] <- "[Pflegende_r Angehörige_r] Welche Lebenssituation trifft auf Sie zu?"
data[, 347] <- factor(data[, 347], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[347] <- "lebsit_SQ008"
# LimeSurvey Field type: A
data[, 348] <- as.character(data[, 348])
attributes(data)$variable.labels[348] <- "[Sonstiges] Welche Lebenssituation trifft auf Sie zu?"
names(data)[348] <- "lebsit_other"
# LimeSurvey Field type: A
data[, 349] <- as.character(data[, 349])
attributes(data)$variable.labels[349] <- "Wo sind Sie geboren?"
data[, 349] <- factor(data[, 349], levels=c("A18","A19","A20"),labels=c("In der DDR (bis 3.10.1990); in den Bundesländern Brandenburg, Mecklenburg-Vorpommern, Sachsen, Sachsen-Anhalt, Thüringen", "In den Bundesländern Baden-Württemberg, Bayern, Bremen, Hamburg, Hessen, Niedersachsen, Nordrhein-Westfalen, Rheinland-P", "im Ausland"))
names(data)[349] <- "gebort"
# LimeSurvey Field type: A
data[, 350] <- as.character(data[, 350])
attributes(data)$variable.labels[350] <- "{vigOptions1=vigRand*3-2}"
names(data)[350] <- "vigAssign1"
# LimeSurvey Field type: A
data[, 351] <- as.character(data[, 351])
attributes(data)$variable.labels[351] <- "{vigOptions2=vigRand*3-1}"
names(data)[351] <- "vigAssign2"
# LimeSurvey Field type: A
data[, 352] <- as.character(data[, 352])
attributes(data)$variable.labels[352] <- "{vigOptions3=vigRand*3}"
names(data)[352] <- "vigAssign3"
# LimeSurvey Field type: F
data[, 353] <- as.numeric(data[, 353])
attributes(data)$variable.labels[353] <- "Zuweisung Vignette 1"
data[, 353] <- factor(data[, 353], levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108),labels=c("Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt"))
names(data)[353] <- "vigOptions1"
# LimeSurvey Field type: F
data[, 354] <- as.numeric(data[, 354])
attributes(data)$variable.labels[354] <- "Zuweisung Vignette 2"
data[, 354] <- factor(data[, 354], levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108),labels=c("Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt"))
names(data)[354] <- "vigOptions2"
# LimeSurvey Field type: F
data[, 355] <- as.numeric(data[, 355])
attributes(data)$variable.labels[355] <- "Zuweisung Vignette 3"
data[, 355] <- factor(data[, 355], levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108),labels=c("Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Vuong Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktion is", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funk", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Michael Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funktio", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Fu", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Herr Yassin El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiter geworden. In dieser Funkt", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktio", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Lieu Phan aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funktion i", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser F", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Michaela Brandt aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funk", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Münster ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Fu", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt", "Frau Aida El-Sheikh aus Jena ist 49 Jahre alt und ist vor einem Jahr Zentralabteilungsleiterin geworden. In dieser Funkt"))
names(data)[355] <- "vigOptions3"
# LimeSurvey Field type: F
data[, 356] <- as.numeric(data[, 356])
attributes(data)$variable.labels[356] <- "[Bitte schieben Sie den Regler auf die im Bildungssystem insgesamt verbrachten Jahre.] Wie viele Jahre haben Sie das Bildungssystem4 in der DDR besucht?   "
names(data)[356] <- "bildalt_SQ001"
# LimeSurvey Field type: F
data[, 357] <- as.numeric(data[, 357])
attributes(data)$variable.labels[357] <- "[Bitte schieben Sie den Regler auf die im Bildungssystem insgesamt verbrachten Jahre.] Wie viele Jahre haben Sie nach dem 3.10.1990 in den Bundesländern Brandenburg, Mecklenburg-Vorpommern, Sachsen, Sachsen-Anhalt, Thüringen und Berlin (Ost) das Bildungssystem5 besucht?"
names(data)[357] <- "bildneu_SQ021"
# LimeSurvey Field type: A
data[, 358] <- as.character(data[, 358])
attributes(data)$variable.labels[358] <- "Was ist Ihr höchster Bildungsabschluss?"
data[, 358] <- factor(data[, 358], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"),labels=c("kein Abschluss", "Hauptschulabschluss ohne berufliche Ausbildung", "Hauptschulabschluss und berufliche Ausbildung", "Mittlere Reife oder POS6-Abschluss und keine berufliche Ausbildung", "Mittlere Reife oder POS-Abschluss und berufliche Ausbildung", "Fachhochschulreife/Abitur, EOS7und keine berufliche Ausbildung", "Fachhochschulreife/Abitur, EOS und berufliche Ausbildung", "Fachhochschulabschluss", "Hochschulabschluss", "Promotion und / oder Habilitation"))
names(data)[358] <- "bildab"
# LimeSurvey Field type: A
data[, 359] <- as.character(data[, 359])
attributes(data)$variable.labels[359] <- "Wie lautet Ihr aktueller Berufsstatus?"
data[, 359] <- factor(data[, 359], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12","A13"),labels=c("Auszubildende_r / Anwärter_in", "ungelernte_r Arbeiter_in", "angelernte_r Arbeiter_in", "gelernte_r oder Facharbeiter_in", "Meister_in", "Beamte_r im einfachen Dienst", "Beamte_r im mittleren Dienst", "Beamte_r im gehobenen Dienst", "Beamte_r im höheren Dienst (z.B. Staatssekretär_in); Richter_in", "Angestellte_r mit ausführender Tätigkeit (z.B. Bürobot_in, Postverteiler_in)", "Angestellte_r mit qualifizierter Tätigkeit (z.B. Sachbearbeiter_in, Buchhalter_in)", "Angestellte_r mit hochqualifizierter Tätigkeit (wissenschaftliche_r Mitarbeiter_in, Abteilungsleiter_in)", "Angestellte_r mit umfassender Führungstätigkeit (z.B. Behördenleiter_in)"))
names(data)[359] <- "aktberuf"
# LimeSurvey Field type: A
data[, 360] <- as.character(data[, 360])
attributes(data)$variable.labels[360] <- "[Sonstiges] Wie lautet Ihr aktueller Berufsstatus?"
names(data)[360] <- "aktberuf_other"
# LimeSurvey Field type: A
data[, 361] <- as.character(data[, 361])
attributes(data)$variable.labels[361] <- "Die Ergebnisse der Umfrage sollen u.a. nach dem Einkommen ausgewertet werden. Dabei genügen Einkommensgruppen.   Es würde uns helfen, wenn Sie die Einkommensgruppe nennen könnten, zu der Sie gehören.   Bei den Angaben handelt es sich um das monatliche Nettoeinkommen8 in Euro."
data[, 361] <- factor(data[, 361], levels=c("A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12","A13","A14","A15","A16"),labels=c("491 € oder weniger", "492 – 683", "684 – 815", "816 – 921", "922 – 1082", "1083 – 1188", "1189 – 1310", "1311 – 1417", "1418 – 1619", "1620 – 1833", "1834 – 2125", "2126 – 2692", "2693 – 3500", "3501 – 5000", "5001 € oder mehr"))
names(data)[361] <- "einkgr"
# LimeSurvey Field type: A
data[, 362] <- as.character(data[, 362])
attributes(data)$variable.labels[362] <- "Stellen Sie sich bitte eine Leiter mit 10 Sprossen vor, die Ihre persönliche Einschätzung zu Ihrer Position in der Gesellschaft darstellen soll.  Wo würden Sie sich auf der Leiter platzieren?     10= höchste Bildung, höchstes Einkommen und höchstes berufliches Ansehen  1= niedrige Bildung, niedriges Einkommen und geringes berufliches Ansehen"
data[, 362] <- factor(data[, 362], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"),labels=c("10", "9", "8", "7", "6", "5", "4", "3", "2", "1"))
names(data)[362] <- "sozstatus"
# LimeSurvey Field type: A
data[, 363] <- as.character(data[, 363])
attributes(data)$variable.labels[363] <- "Fühlen Sie sich einer Glaubensgemeinschaft oder Weltanschauung zugehörig?"
data[, 363] <- factor(data[, 363], levels=c("A2"),labels=c("nein"))
names(data)[363] <- "reli"
# LimeSurvey Field type: A
data[, 364] <- as.character(data[, 364])
attributes(data)$variable.labels[364] <- "[Sonstiges] Fühlen Sie sich einer Glaubensgemeinschaft oder Weltanschauung zugehörig?"
names(data)[364] <- "reli_other"
# LimeSurvey Field type: A
data[, 365] <- as.character(data[, 365])
attributes(data)$variable.labels[365] <- "Welche der folgenden Aussagen trifft auf Sie zu?"
data[, 365] <- factor(data[, 365], levels=c("A1","A2","A3","A4","A5","A6","A8","A7"),labels=c("Sie selbst sind nach 1955 auf das heutige Gebiet der Bundesrepublik Deutschland zugewandert, eingebürgert oder haben ein", "Mindestens ein Elternteil ist nach 1955 auf das heutige Gebiet der Bundesrepublik Deutschland zugewandert, eingebürgert ", "Mindestens ein Großelternteil ist nach 1955 aus einem anderen Land auf das heutige Gebiet der Bundesrepublik zugewandert", "Sie selbst sind als Schutzsuchende unter Berufung auf humanitäre Gründe nach Deutschland geflohen.", "Mindestens ein Elternteil ist als Schutzsuchende unter Berufung auf humanitäre Gründe nach Deutschland geflohen.", "Mindestens ein Großelternteil ist als Schutzsuchende unter Berufung auf humanitäre Gründe nach Deutschland geflohen.", "Mindestens ein Großelternteil mit deutscher Staatszugehörigkeit und Wohnsitz in den früheren deutschen Ostgebieten, ist ", "Nichts davon trifft zu."))
names(data)[365] <- "mh"
# LimeSurvey Field type: A
data[, 366] <- as.character(data[, 366])
attributes(data)$variable.labels[366] <- "Welches ist bei der vorherigen Frage das Herkunfts- oder Bezugsland?  Sie können auch mehr als ein Land angeben. Bitte trennen Sie ihre Angaben durch Kommata."
names(data)[366] <- "migland"
# LimeSurvey Field type: F
data[, 367] <- as.numeric(data[, 367])
attributes(data)$variable.labels[367] <- "[Alleinerziehend  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 367] <- factor(data[, 367], levels=c(1,0),labels=c("1", "0"))
names(data)[367] <- "diskallg_SQ002_A1"
# LimeSurvey Field type: F
data[, 368] <- as.numeric(data[, 368])
attributes(data)$variable.labels[368] <- "[Alleinerziehend  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 368] <- factor(data[, 368], levels=c(1,0),labels=c("1", "0"))
names(data)[368] <- "diskallg_SQ002_A2"
# LimeSurvey Field type: F
data[, 369] <- as.numeric(data[, 369])
attributes(data)$variable.labels[369] <- "[Geschlecht  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 369] <- factor(data[, 369], levels=c(1,0),labels=c("1", "0"))
names(data)[369] <- "diskallg_SQ003_A1"
# LimeSurvey Field type: F
data[, 370] <- as.numeric(data[, 370])
attributes(data)$variable.labels[370] <- "[Geschlecht  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 370] <- factor(data[, 370], levels=c(1,0),labels=c("1", "0"))
names(data)[370] <- "diskallg_SQ003_A2"
# LimeSurvey Field type: F
data[, 371] <- as.numeric(data[, 371])
attributes(data)$variable.labels[371] <- "[Geschlechtsidentität9] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 371] <- factor(data[, 371], levels=c(1,0),labels=c("1", "0"))
names(data)[371] <- "diskallg_SQ004_A1"
# LimeSurvey Field type: F
data[, 372] <- as.numeric(data[, 372])
attributes(data)$variable.labels[372] <- "[Geschlechtsidentität9] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 372] <- factor(data[, 372], levels=c(1,0),labels=c("1", "0"))
names(data)[372] <- "diskallg_SQ004_A2"
# LimeSurvey Field type: F
data[, 373] <- as.numeric(data[, 373])
attributes(data)$variable.labels[373] <- "[Sexuelle Orientierung] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 373] <- factor(data[, 373], levels=c(1,0),labels=c("1", "0"))
names(data)[373] <- "diskallg_SQ020_A1"
# LimeSurvey Field type: F
data[, 374] <- as.numeric(data[, 374])
attributes(data)$variable.labels[374] <- "[Sexuelle Orientierung] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 374] <- factor(data[, 374], levels=c(1,0),labels=c("1", "0"))
names(data)[374] <- "diskallg_SQ020_A2"
# LimeSurvey Field type: F
data[, 375] <- as.numeric(data[, 375])
attributes(data)$variable.labels[375] <- "[Ethnische Herkunft/ rassistische Gründe  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 375] <- factor(data[, 375], levels=c(1,0),labels=c("1", "0"))
names(data)[375] <- "diskallg_SQ005_A1"
# LimeSurvey Field type: F
data[, 376] <- as.numeric(data[, 376])
attributes(data)$variable.labels[376] <- "[Ethnische Herkunft/ rassistische Gründe  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 376] <- factor(data[, 376], levels=c(1,0),labels=c("1", "0"))
names(data)[376] <- "diskallg_SQ005_A2"
# LimeSurvey Field type: F
data[, 377] <- as.numeric(data[, 377])
attributes(data)$variable.labels[377] <- "[Hohes Lebensalter  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 377] <- factor(data[, 377], levels=c(1,0),labels=c("1", "0"))
names(data)[377] <- "diskallg_SQ006_A1"
# LimeSurvey Field type: F
data[, 378] <- as.numeric(data[, 378])
attributes(data)$variable.labels[378] <- "[Hohes Lebensalter  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 378] <- factor(data[, 378], levels=c(1,0),labels=c("1", "0"))
names(data)[378] <- "diskallg_SQ006_A2"
# LimeSurvey Field type: F
data[, 379] <- as.numeric(data[, 379])
attributes(data)$variable.labels[379] <- "[Junges Lebensalter  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 379] <- factor(data[, 379], levels=c(1,0),labels=c("1", "0"))
names(data)[379] <- "diskallg_SQ007_A1"
# LimeSurvey Field type: F
data[, 380] <- as.numeric(data[, 380])
attributes(data)$variable.labels[380] <- "[Junges Lebensalter  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 380] <- factor(data[, 380], levels=c(1,0),labels=c("1", "0"))
names(data)[380] <- "diskallg_SQ007_A2"
# LimeSurvey Field type: F
data[, 381] <- as.numeric(data[, 381])
attributes(data)$variable.labels[381] <- "[Gewicht  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 381] <- factor(data[, 381], levels=c(1,0),labels=c("1", "0"))
names(data)[381] <- "diskallg_SQ008_A1"
# LimeSurvey Field type: F
data[, 382] <- as.numeric(data[, 382])
attributes(data)$variable.labels[382] <- "[Gewicht  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 382] <- factor(data[, 382], levels=c(1,0),labels=c("1", "0"))
names(data)[382] <- "diskallg_SQ008_A2"
# LimeSurvey Field type: F
data[, 383] <- as.numeric(data[, 383])
attributes(data)$variable.labels[383] <- "[Sprache  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 383] <- factor(data[, 383], levels=c(1,0),labels=c("1", "0"))
names(data)[383] <- "diskallg_SQ009_A1"
# LimeSurvey Field type: F
data[, 384] <- as.numeric(data[, 384])
attributes(data)$variable.labels[384] <- "[Sprache  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 384] <- factor(data[, 384], levels=c(1,0),labels=c("1", "0"))
names(data)[384] <- "diskallg_SQ009_A2"
# LimeSurvey Field type: F
data[, 385] <- as.numeric(data[, 385])
attributes(data)$variable.labels[385] <- "[Akzent  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 385] <- factor(data[, 385], levels=c(1,0),labels=c("1", "0"))
names(data)[385] <- "diskallg_SQ010_A1"
# LimeSurvey Field type: F
data[, 386] <- as.numeric(data[, 386])
attributes(data)$variable.labels[386] <- "[Akzent  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 386] <- factor(data[, 386], levels=c(1,0),labels=c("1", "0"))
names(data)[386] <- "diskallg_SQ010_A2"
# LimeSurvey Field type: F
data[, 387] <- as.numeric(data[, 387])
attributes(data)$variable.labels[387] <- "[Regionaler Dialekt  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 387] <- factor(data[, 387], levels=c(1,0),labels=c("1", "0"))
names(data)[387] <- "diskallg_SQ011_A1"
# LimeSurvey Field type: F
data[, 388] <- as.numeric(data[, 388])
attributes(data)$variable.labels[388] <- "[Regionaler Dialekt  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 388] <- factor(data[, 388], levels=c(1,0),labels=c("1", "0"))
names(data)[388] <- "diskallg_SQ011_A2"
# LimeSurvey Field type: F
data[, 389] <- as.numeric(data[, 389])
attributes(data)$variable.labels[389] <- "[Beeinträchtigung/ Behinderung  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 389] <- factor(data[, 389], levels=c(1,0),labels=c("1", "0"))
names(data)[389] <- "diskallg_SQ012_A1"
# LimeSurvey Field type: F
data[, 390] <- as.numeric(data[, 390])
attributes(data)$variable.labels[390] <- "[Beeinträchtigung/ Behinderung  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 390] <- factor(data[, 390], levels=c(1,0),labels=c("1", "0"))
names(data)[390] <- "diskallg_SQ012_A2"
# LimeSurvey Field type: F
data[, 391] <- as.numeric(data[, 391])
attributes(data)$variable.labels[391] <- "[Chronische Erkrankung] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 391] <- factor(data[, 391], levels=c(1,0),labels=c("1", "0"))
names(data)[391] <- "diskallg_SQ013_A1"
# LimeSurvey Field type: F
data[, 392] <- as.numeric(data[, 392])
attributes(data)$variable.labels[392] <- "[Chronische Erkrankung] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 392] <- factor(data[, 392], levels=c(1,0),labels=c("1", "0"))
names(data)[392] <- "diskallg_SQ013_A2"
# LimeSurvey Field type: F
data[, 393] <- as.numeric(data[, 393])
attributes(data)$variable.labels[393] <- "[Ostdeutsche Sozialisation  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 393] <- factor(data[, 393], levels=c(1,0),labels=c("1", "0"))
names(data)[393] <- "diskallg_SQ014_A1"
# LimeSurvey Field type: F
data[, 394] <- as.numeric(data[, 394])
attributes(data)$variable.labels[394] <- "[Ostdeutsche Sozialisation  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 394] <- factor(data[, 394], levels=c(1,0),labels=c("1", "0"))
names(data)[394] <- "diskallg_SQ014_A2"
# LimeSurvey Field type: F
data[, 395] <- as.numeric(data[, 395])
attributes(data)$variable.labels[395] <- "[Westdeutsche Sozialisation  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 395] <- factor(data[, 395], levels=c(1,0),labels=c("1", "0"))
names(data)[395] <- "diskallg_SQ015_A1"
# LimeSurvey Field type: F
data[, 396] <- as.numeric(data[, 396])
attributes(data)$variable.labels[396] <- "[Westdeutsche Sozialisation  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 396] <- factor(data[, 396], levels=c(1,0),labels=c("1", "0"))
names(data)[396] <- "diskallg_SQ015_A2"
# LimeSurvey Field type: F
data[, 397] <- as.numeric(data[, 397])
attributes(data)$variable.labels[397] <- "[Befristeter Aufenthaltstitel  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 397] <- factor(data[, 397], levels=c(1,0),labels=c("1", "0"))
names(data)[397] <- "diskallg_SQ016_A1"
# LimeSurvey Field type: F
data[, 398] <- as.numeric(data[, 398])
attributes(data)$variable.labels[398] <- "[Befristeter Aufenthaltstitel  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 398] <- factor(data[, 398], levels=c(1,0),labels=c("1", "0"))
names(data)[398] <- "diskallg_SQ016_A2"
# LimeSurvey Field type: F
data[, 399] <- as.numeric(data[, 399])
attributes(data)$variable.labels[399] <- "[Lediger Familienstand  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 399] <- factor(data[, 399], levels=c(1,0),labels=c("1", "0"))
names(data)[399] <- "diskallg_SQ017_A1"
# LimeSurvey Field type: F
data[, 400] <- as.numeric(data[, 400])
attributes(data)$variable.labels[400] <- "[Lediger Familienstand  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 400] <- factor(data[, 400], levels=c(1,0),labels=c("1", "0"))
names(data)[400] <- "diskallg_SQ017_A2"
# LimeSurvey Field type: F
data[, 401] <- as.numeric(data[, 401])
attributes(data)$variable.labels[401] <- "[Religion/ Weltanschauung / zugeschriebene Religion  ] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 401] <- factor(data[, 401], levels=c(1,0),labels=c("1", "0"))
names(data)[401] <- "diskallg_SQ018_A1"
# LimeSurvey Field type: F
data[, 402] <- as.numeric(data[, 402])
attributes(data)$variable.labels[402] <- "[Religion/ Weltanschauung / zugeschriebene Religion  ] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 402] <- factor(data[, 402], levels=c(1,0),labels=c("1", "0"))
names(data)[402] <- "diskallg_SQ018_A2"
# LimeSurvey Field type: F
data[, 403] <- as.numeric(data[, 403])
attributes(data)$variable.labels[403] <- "[Ich wurde nicht diskriminiert.] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 403] <- factor(data[, 403], levels=c(1,0),labels=c("1", "0"))
names(data)[403] <- "diskallg_SQ022_A1"
# LimeSurvey Field type: F
data[, 404] <- as.numeric(data[, 404])
attributes(data)$variable.labels[404] <- "[Ich wurde nicht diskriminiert.] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 404] <- factor(data[, 404], levels=c(1,0),labels=c("1", "0"))
names(data)[404] <- "diskallg_SQ022_A2"
# LimeSurvey Field type: F
data[, 405] <- as.numeric(data[, 405])
attributes(data)$variable.labels[405] <- "[Anderer Bezug, und zwar:] [Diskriminierung im Arbeitskontext] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 405] <- factor(data[, 405], levels=c(1,0),labels=c("1", "0"))
names(data)[405] <- "diskallg_SQ021_A1"
# LimeSurvey Field type: F
data[, 406] <- as.numeric(data[, 406])
attributes(data)$variable.labels[406] <- "[Anderer Bezug, und zwar:] [Diskriminierung außerhalb des Arbeitskontextes] Bitte geben Sie an, in Bezug auf welche Merkmale Sie in den letzten 5 Jahren in Deutschland diskriminiert wurden. Sie können dabei zwischen Diskriminierung im Arbeitskontext– und außerhalb des Arbeitskontextes unterscheiden.  Diese Liste beansprucht keine Vollständigkeit. Mehrfachantworten sind möglich."
data[, 406] <- factor(data[, 406], levels=c(1,0),labels=c("1", "0"))
names(data)[406] <- "diskallg_SQ021_A2"
# LimeSurvey Field type: A
data[, 407] <- as.character(data[, 407])
attributes(data)$variable.labels[407] <- ""
names(data)[407] <- "diskallgother"
# LimeSurvey Field type: A
data[, 408] <- as.character(data[, 408])
attributes(data)$variable.labels[408] <- "Rassistische Diskriminierung erfahren vor allem Menschen, die als „fremd“ oder nicht „weiß“ wahrgenommen werden. Wie häufig werden Sie in Deutschland so wahrgenommen?"
data[, 408] <- factor(data[, 408], levels=c("A1","A2","A3","A4","A5"),labels=c("nie", "selten", "gelegentlich", "oft", "(fast) immer"))
names(data)[408] <- "fremdwahr"
# LimeSurvey Field type: F
data[, 409] <- as.numeric(data[, 409])
attributes(data)$variable.labels[409] <- "[wegen meiner „Hautfarbe\"] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 409] <- factor(data[, 409], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[409] <- "fremdwahrbez_w1"
# LimeSurvey Field type: F
data[, 410] <- as.numeric(data[, 410])
attributes(data)$variable.labels[410] <- "[wegen meiner Kleidung] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 410] <- factor(data[, 410], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[410] <- "fremdwahrbez_w2"
# LimeSurvey Field type: F
data[, 411] <- as.numeric(data[, 411])
attributes(data)$variable.labels[411] <- "[wegen meines physischen Äußeren] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 411] <- factor(data[, 411], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[411] <- "fremdwahrbez_w3"
# LimeSurvey Field type: F
data[, 412] <- as.numeric(data[, 412])
attributes(data)$variable.labels[412] <- "[wegen meiner religiösen Kopfbedeckung] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 412] <- factor(data[, 412], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[412] <- "fremdwahrbez_w4"
# LimeSurvey Field type: F
data[, 413] <- as.numeric(data[, 413])
attributes(data)$variable.labels[413] <- "[wegen meiner Haare] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 413] <- factor(data[, 413], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[413] <- "fremdwahrbez_w5"
# LimeSurvey Field type: F
data[, 414] <- as.numeric(data[, 414])
attributes(data)$variable.labels[414] <- "[wegen meines Akzents] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 414] <- factor(data[, 414], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[414] <- "fremdwahrbez_w6"
# LimeSurvey Field type: F
data[, 415] <- as.numeric(data[, 415])
attributes(data)$variable.labels[415] <- "[wegen meines Bartes] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 415] <- factor(data[, 415], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[415] <- "fremdwahrbez_w7"
# LimeSurvey Field type: F
data[, 416] <- as.numeric(data[, 416])
attributes(data)$variable.labels[416] <- "[wegen meines Namen] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 416] <- factor(data[, 416], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[416] <- "fremdwahrbez_w8"
# LimeSurvey Field type: F
data[, 417] <- as.numeric(data[, 417])
attributes(data)$variable.labels[417] <- "[weiß nicht] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
data[, 417] <- factor(data[, 417], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[417] <- "fremdwahrbez_w9"
# LimeSurvey Field type: A
data[, 418] <- as.character(data[, 418])
attributes(data)$variable.labels[418] <- "[Sonstiges] Was glauben Sie, in Bezug auf welches Merkmal wurden Sie als „fremd“ oder „nicht weiß“ wahrgenommen?"
names(data)[418] <- "fremdwahrbez_other"
# LimeSurvey Field type: F
data[, 419] <- as.numeric(data[, 419])
attributes(data)$variable.labels[419] <- "[Weiß] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 419] <- factor(data[, 419], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[419] <- "selbstbez_SQ001"
# LimeSurvey Field type: F
data[, 420] <- as.numeric(data[, 420])
attributes(data)$variable.labels[420] <- "[Person of Colour ] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 420] <- factor(data[, 420], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[420] <- "selbstbez_SQ002"
# LimeSurvey Field type: F
data[, 421] <- as.numeric(data[, 421])
attributes(data)$variable.labels[421] <- "[Schwarz] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 421] <- factor(data[, 421], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[421] <- "selbstbez_SQ003"
# LimeSurvey Field type: F
data[, 422] <- as.numeric(data[, 422])
attributes(data)$variable.labels[422] <- "[Afrodeutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 422] <- factor(data[, 422], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[422] <- "selbstbez_SQ008"
# LimeSurvey Field type: F
data[, 423] <- as.numeric(data[, 423])
attributes(data)$variable.labels[423] <- "[Jüdisch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 423] <- factor(data[, 423], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[423] <- "selbstbez_SQ004"
# LimeSurvey Field type: F
data[, 424] <- as.numeric(data[, 424])
attributes(data)$variable.labels[424] <- "[Russischsprachig Jüdisch ] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 424] <- factor(data[, 424], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[424] <- "selbstbez_SQ005"
# LimeSurvey Field type: F
data[, 425] <- as.numeric(data[, 425])
attributes(data)$variable.labels[425] <- "[Russlanddeutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 425] <- factor(data[, 425], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[425] <- "selbstbez_SQ012"
# LimeSurvey Field type: F
data[, 426] <- as.numeric(data[, 426])
attributes(data)$variable.labels[426] <- "[Deutsch-Kasachisch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 426] <- factor(data[, 426], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[426] <- "selbstbez_SQ017"
# LimeSurvey Field type: F
data[, 427] <- as.numeric(data[, 427])
attributes(data)$variable.labels[427] <- "[Muslimisch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 427] <- factor(data[, 427], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[427] <- "selbstbez_SQ006"
# LimeSurvey Field type: F
data[, 428] <- as.numeric(data[, 428])
attributes(data)$variable.labels[428] <- "[Sinti und Roma] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 428] <- factor(data[, 428], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[428] <- "selbstbez_SQ007"
# LimeSurvey Field type: F
data[, 429] <- as.numeric(data[, 429])
attributes(data)$variable.labels[429] <- "[Vietnamesisch-Deutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 429] <- factor(data[, 429], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[429] <- "selbstbez_SQ014"
# LimeSurvey Field type: F
data[, 430] <- as.numeric(data[, 430])
attributes(data)$variable.labels[430] <- "[Asiatisch-Deutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 430] <- factor(data[, 430], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[430] <- "selbstbez_SQ010"
# LimeSurvey Field type: F
data[, 431] <- as.numeric(data[, 431])
attributes(data)$variable.labels[431] <- "[Arabisch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 431] <- factor(data[, 431], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[431] <- "selbstbez_SQ009"
# LimeSurvey Field type: F
data[, 432] <- as.numeric(data[, 432])
attributes(data)$variable.labels[432] <- "[Polnisch-Deutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 432] <- factor(data[, 432], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[432] <- "selbstbez_SQ011"
# LimeSurvey Field type: F
data[, 433] <- as.numeric(data[, 433])
attributes(data)$variable.labels[433] <- "[Türkisch-Deutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 433] <- factor(data[, 433], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[433] <- "selbstbez_SQ013"
# LimeSurvey Field type: F
data[, 434] <- as.numeric(data[, 434])
attributes(data)$variable.labels[434] <- "[Ukrainisch-Deutsch] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
data[, 434] <- factor(data[, 434], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[434] <- "selbstbez_SQ015"
# LimeSurvey Field type: A
data[, 435] <- as.character(data[, 435])
attributes(data)$variable.labels[435] <- "[Sonstiges] Welche der folgenden (Selbst-)Bezeichnungen trifft am ehesten auf Sie zu?  Diese Liste orientiert sich an den geografischen Bezügen und Selbstbezeichnungen von zahlenmäßig großen Gruppen in Deutschland und Thüringen sowie an den nach der UN-Antirassismuskonvention schutzwürdigen Gruppen. Da sich diese Bezeichnungen mit der Zeit ändern, fragen wir danach, welche „am ehesten“ für Sie passend erscheinen.Die Liste ist nicht vollständig und kann im letzten Feld - auch durch andere Schreibweisen - ergänzt werden.      Mehrfachantworten sind möglich."
names(data)[435] <- "selbstbez_other"
# LimeSurvey Field type: F
data[, 436] <- as.numeric(data[, 436])
attributes(data)$variable.labels[436] <- "Haben Sie eine Beeinträchtigung, durch die Ihre gesellschaftliche Teilhabe behindert wird?"
data[, 436] <- factor(data[, 436], levels=c(1,2),labels=c("Ja", "Nein"))
names(data)[436] <- "beeint"
# LimeSurvey Field type: F
data[, 437] <- as.numeric(data[, 437])
attributes(data)$variable.labels[437] <- "[Ich möchte meine Beeinträchtigung nicht näher beschreiben. ] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 437] <- factor(data[, 437], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[437] <- "beeintwas_SQ001"
# LimeSurvey Field type: F
data[, 438] <- as.numeric(data[, 438])
attributes(data)$variable.labels[438] <- "[chronische somatische Erkrankung] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 438] <- factor(data[, 438], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[438] <- "beeintwas_SQ002"
# LimeSurvey Field type: F
data[, 439] <- as.numeric(data[, 439])
attributes(data)$variable.labels[439] <- "[Hörbeeinträchtigung /Taubheit] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 439] <- factor(data[, 439], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[439] <- "beeintwas_SQ003"
# LimeSurvey Field type: F
data[, 440] <- as.numeric(data[, 440])
attributes(data)$variable.labels[440] <- "[Lernschwierigkeit / Legasthenie] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 440] <- factor(data[, 440], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[440] <- "beeintwas_SQ004"
# LimeSurvey Field type: F
data[, 441] <- as.numeric(data[, 441])
attributes(data)$variable.labels[441] <- "[Mobilitäts- und Bewegungsbeeinträchtigung ] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 441] <- factor(data[, 441], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[441] <- "beeintwas_SQ005"
# LimeSurvey Field type: F
data[, 442] <- as.numeric(data[, 442])
attributes(data)$variable.labels[442] <- "[psychosoziale Beeinträchtigung ] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 442] <- factor(data[, 442], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[442] <- "beeintwas_SQ006"
# LimeSurvey Field type: F
data[, 443] <- as.numeric(data[, 443])
attributes(data)$variable.labels[443] <- "[kognitive Beeinträchtigung] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 443] <- factor(data[, 443], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[443] <- "beeintwas_SQ011"
# LimeSurvey Field type: F
data[, 444] <- as.numeric(data[, 444])
attributes(data)$variable.labels[444] <- "[Sehbeeinträchtigung/Blindheit] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 444] <- factor(data[, 444], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[444] <- "beeintwas_SQ007"
# LimeSurvey Field type: F
data[, 445] <- as.numeric(data[, 445])
attributes(data)$variable.labels[445] <- "[Sprach- / Sprechbeeinträchtigung] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 445] <- factor(data[, 445], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[445] <- "beeintwas_SQ008"
# LimeSurvey Field type: F
data[, 446] <- as.numeric(data[, 446])
attributes(data)$variable.labels[446] <- "[Suchterfahrung] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 446] <- factor(data[, 446], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[446] <- "beeintwas_SQ009"
# LimeSurvey Field type: F
data[, 447] <- as.numeric(data[, 447])
attributes(data)$variable.labels[447] <- "[Trauma] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
data[, 447] <- factor(data[, 447], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[447] <- "beeintwas_SQ010"
# LimeSurvey Field type: A
data[, 448] <- as.character(data[, 448])
attributes(data)$variable.labels[448] <- "[Sonstiges] Was für eine Beeinträchtigung haben Sie, durch die Ihre gesellschaftliche Teilhabe behindert wird?  Mehrfachantworten sind möglich."
names(data)[448] <- "beeintwas_other"
# LimeSurvey Field type: A
data[, 449] <- as.character(data[, 449])
attributes(data)$variable.labels[449] <- "Im Zusammenhang mit Ihrer Beeinträchtigung: In welchem Ausmaß werden Sie durch Hindernisse/ Barrieren in Ihrer gesellschaftlichen Teilhabe eingeschränkt?"
data[, 449] <- factor(data[, 449], levels=c("A1","A2","A3","A4","A5"),labels=c("sehr stark", "stark", "mittel", "wenig", "überhaupt nicht"))
names(data)[449] <- "beeintaus"
# LimeSurvey Field type: F
data[, 450] <- as.numeric(data[, 450])
attributes(data)$variable.labels[450] <- "Liegt eine (amtlich) festgestellte (Schwer-)Behinderung vor?"
data[, 450] <- factor(data[, 450], levels=c(1,2),labels=c("Ja", "Nein"))
names(data)[450] <- "beh"
# LimeSurvey Field type: A
data[, 451] <- as.character(data[, 451])
attributes(data)$variable.labels[451] <- "Welcher Grad der Behinderung liegt vor?"
data[, 451] <- factor(data[, 451], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"),labels=c("20", "30", "40", "50", "60", "70", "80", "90", "100", "Ich möchte meine Behinderung nicht näher beschreiben."))
names(data)[451] <- "gradbeh"
# LimeSurvey Field type: F
data[, 452] <- as.numeric(data[, 452])
attributes(data)$variable.labels[452] <- "[kann/ möchte ich nicht beantworten] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 452] <- factor(data[, 452], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[452] <- "sexo_SQ001"
# LimeSurvey Field type: F
data[, 453] <- as.numeric(data[, 453])
attributes(data)$variable.labels[453] <- "[asexuell] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 453] <- factor(data[, 453], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[453] <- "sexo_SQ002"
# LimeSurvey Field type: F
data[, 454] <- as.numeric(data[, 454])
attributes(data)$variable.labels[454] <- "[bisexuell] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 454] <- factor(data[, 454], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[454] <- "sexo_SQ003"
# LimeSurvey Field type: F
data[, 455] <- as.numeric(data[, 455])
attributes(data)$variable.labels[455] <- "[lesbisch] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 455] <- factor(data[, 455], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[455] <- "sexo_SQ004"
# LimeSurvey Field type: F
data[, 456] <- as.numeric(data[, 456])
attributes(data)$variable.labels[456] <- "[heterosexuell ] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 456] <- factor(data[, 456], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[456] <- "sexo_SQ005"
# LimeSurvey Field type: F
data[, 457] <- as.numeric(data[, 457])
attributes(data)$variable.labels[457] <- "[homosexuell ] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 457] <- factor(data[, 457], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[457] <- "sexo_SQ006"
# LimeSurvey Field type: F
data[, 458] <- as.numeric(data[, 458])
attributes(data)$variable.labels[458] <- "[queer] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 458] <- factor(data[, 458], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[458] <- "sexo_SQ007"
# LimeSurvey Field type: F
data[, 459] <- as.numeric(data[, 459])
attributes(data)$variable.labels[459] <- "[schwul ] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
data[, 459] <- factor(data[, 459], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[459] <- "sexo_SQ008"
# LimeSurvey Field type: A
data[, 460] <- as.character(data[, 460])
attributes(data)$variable.labels[460] <- "[Sonstiges] Welche der folgenden Bezeichnungen beschreibt am besten Ihre sexuelle Orientierung/Identität?"
names(data)[460] <- "sexo_other"
# LimeSurvey Field type: A
data[, 461] <- as.character(data[, 461])
attributes(data)$variable.labels[461] <- "{vigOptions1.shown}  Wie bewerten Sie das Vorhaben?"
data[, 461] <- factor(data[, 461], levels=c("A2","A3","A4","A5","A6"),labels=c("1 = sehr gut", "2 = gut", "3 = akzeptabel", "4 = schlecht", "5 = sehr schlecht"))
names(data)[461] <- "vig1"
# LimeSurvey Field type: A
data[, 462] <- as.character(data[, 462])
attributes(data)$variable.labels[462] <- "{vigOptions2.shown}  Wie bewerten Sie das Vorhaben?"
data[, 462] <- factor(data[, 462], levels=c("A2","A3","A4","A5","A6"),labels=c("1 = sehr gut", "2 = gut", "3 = akzeptabel", "4 = schlecht", "5 = sehr schlecht"))
names(data)[462] <- "vig2"
# LimeSurvey Field type: A
data[, 463] <- as.character(data[, 463])
attributes(data)$variable.labels[463] <- "{vigOptions3.shown}  Wie bewerten Sie das Vorhaben?"
data[, 463] <- factor(data[, 463], levels=c("A2","A3","A4","A5","A6"),labels=c("1 = sehr gut", "2 = gut", "3 = akzeptabel", "4 = schlecht", "5 = sehr schlecht"))
names(data)[463] <- "vig3"
# LimeSurvey Field type: A
data[, 464] <- as.character(data[, 464])
attributes(data)$variable.labels[464] <- "Haben Sie noch Anmerkungen oder Kommentare zur Befragung, die Sie uns gerne mitteilen möchten?   Sollten Sie weitere Rückfragen zur Befragung haben, können Sie sich gerne an uns wenden: befragung@vielfaltentscheidet.org"
names(data)[464] <- "endew"
# LimeSurvey Field type: A
data[, 465] <- as.character(data[, 465])
attributes(data)$variable.labels[465] <- "Haben Sie Anmerkungen oder Kommentare zur Befragung, die Sie uns gerne mitteilen möchten?"
names(data)[465] <- "endepoc"
# LimeSurvey Field type: A
data[, 466] <- as.character(data[, 466])
attributes(data)$variable.labels[466] <- "{if(diskallg_SQ005_A1.NAOK == \"1\" OR diskallg_SQ005_A2.NAOK == \"1\" OR diskallg_SQ016_A1.NAOK == \"1\" OR diskallg_SQ016_A2.NAOK == \"1\" OR fremdwahr.NAOK == \"A4\" OR fremdwahr.NAOK == \"A5\" OR fremdwahrbez_w4.NAOK == \"Y\" OR selbstbez_SQ002.NAOK == \"Y\" OR selbstbez_SQ003.NAOK == \"Y\" OR selbstbez_SQ004.NAOK == \"Y\" OR selbstbez_SQ006.NAOK == \"Y\" OR selbstbez_SQ007.NAOK == \"Y\" OR selbstbez_SQ008.NAOK == \"Y\" OR selbstbez_SQ014.NAOK == \"Y\" OR selbstbez_SQ009.NAOK == \"Y\" OR selbstbez_SQ010.NAOK == \"Y\" OR selbstbez_SQ013.NAOK == \"Y\", \"https://befragung.vielfaltentscheidet.de/index.php/384833?lang=de&newtest=Y\", \"https://vielfaltentscheidet.de\")}"
names(data)[466] <- "endurl"
# Variable name was incorrect and was changed from  to q_ .

saveRDS(data, file = paste(outpath, "example_data.rds", sep = "/"))
        
        