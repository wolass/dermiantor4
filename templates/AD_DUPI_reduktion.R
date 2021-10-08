text1 <- paste0("<p><strong>Diagnose:</strong> atopische Dermatitis</p>",
                ifelse(input$asthma=="ja",
                       "<p>allergisches Asthma</p>",""),
                "<p><strong>Zusammenfassende Beurteilung:</strong></p>",
                ifelse(input$bekannt=="ja",
                       "<p>Die ausführliche Anamnese des Patienten bitten wir 
                       als bekannt voraussetzen zu dürfen und verweisen auf unsere 
                       vorherigen Berichte.</p>",
                       ""),
                "<p>Unter der Diagnose einer atopischen Dermatitis erfolgt seit ",
                format(input$einleitungDupi,"%d.%m.%Y"),
                " eine Therapie mit Dupilumab 300 mg s.c. alle zwei Wochen. 
                Diese wird sehr gut vertragen. Seit ",
                format(input$reduktion,"%d.%m.%Y"),
                " wurde die Systemtherapie mit Dupilumab, bei sehr gutem Wirkung, 
                auf 300 mg alle ",
                input$interval,
                " Wochen umgestellt. Aktuell besteht weiterhin eine signifikante 
                Reduktion des initialen Hautbefundes, mit nur vereinzelndem 
                Ekzemstellen am unteren Extremitäten und keine Nebenwirkung. 
                Topische Cortisonhaltige Externa werden bei Bedarf 
                (2x wöchentlich) benutzt.</p>"
)