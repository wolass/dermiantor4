text1 <- paste0(
 # DG
 ifelse(input$asthma!="ja",
        "<p><strong>Diagnose:</strong> atopische Dermatitis</p>",
        "<p><strong>Diagnosen:</strong> 1) atopische Dermatitis<br>
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2) Asthma bronchiale</p>"),
                "<p><strong>Zusammenfassende Beurteilung:</strong></p>",
                ifelse(input$bekannt=="ja",
                       "<p>Die ausführliche Anamnese des Patienten bitten wir 
                       als bekannt voraussetzen zu dürfen und verweisen auf unsere 
                       vorherigen Berichte.</p>",
                       ""),
                "Derzeit erfolgt die Therapie mit Dupixent 300 mg 1 x pro ",
                input$interval,
                " Wochen sowie topische Therapie mit ",
                input$TCS_basis,
                " bei Bedarf. Zur Pflege wird ",
                input$Pflege,
                "mehrmals täglich angewendet. ",
                ifelse(input$Ciclosporin=="ja"," Da kein ausreichendes Ansprechen 
                auf Cyclosoporin vorhanden war,", "Aufgrund von therapieresistentem 
                Verlauf"),
                " haben wir am ",
                format(input$einleitungDupi,"%d.%m.%Y"),
                " Dupilumab 300mg s.c. 1x pro 2 Wochen eingeleitet. ",
                "Nach ",
                input$Wochen_zu_Verbesserung,
                " Wochen kam es zu einer signifikanten Reduktion des 
                initialen Hautbefundes sodass sich der Hautbefund seit ",
                input$good_since,
                " Monaten stabil, mit nur vereinzelndem Ekzemstellen zeigt (",
                input$BSA,
                "% der Körperoberfläche). "
)
