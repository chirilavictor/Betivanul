#sectiune1 - baza de date cu raspunsuri pentru utilizator
#nivel1 - 1 bere pe ora
      # - 50ml tarie: vodca, coniac, rom, gin 40% pe ora
      # - 100ml vin pe ora
      # - raspuns 1 pahar => 250ml apa
#nivel2 - 2 beri pe ora
        # - 100ml tarie 40% pe ora
        # - 200ml vin pe ora
        # - raspuns 2 pahare => 500ml apa
#nivel3 - 3 beri pe ora
        # - 200ml tarie 40% pe ora
        # - 400ml vin pe ora
        # - raspuns 3 pahare => 750ml apa
#nivel4 - >4 beri pe ora
        # - >300ml tarie 40% pe ora
        # - >600ml vin pe ora
        # - raspuns 4 pahare => 1L apa

nivel1 = [
  "Vad ca abia ai inceput, baga un pahar cu apa(250 ml) ca sa poti rezista.",
  "Esti la inceput, seara este lunga si nu se stie nicodata cum se termina. Bea un pahar cu apa(250ml).",
  "Petrecerea abia a inceput, dai pe gat un pahar cu apa(250 ml).",
  "1 pahar cu apa(250 ml) si poti continua petrecerea.",
  "Ce? Ti-e frica ca te-ai imbatat numai de la atat? Baga repede un pahar cu apa(250ml).",
  "Inca esti treaz si poti vorbi coerent. Daca vrei sa ramai asa baga un pahar cu apa(250ml)."
  ]
nivel2 = [
  "Te-ai incalzit un pic, nu-i asa? Baga 2 pahare cu apa(500ml)",
  "Parca vad cum zambesti si te distrezi. Repede 2 pahare cu apa(500ml)",
  "Petrecerea este in toi, ia 2 pahare cu apa(500ml) ca sa ramana asa."
  ]
nivel3 = [
  "Vezi ca incepi sa scapi lucrurile de sub control! Bea 3 pahare cu apa(750ml).",
  "Ca sa nu-ti plesneasca capul maine bea 3 pahare cu apa(750ml).",
  "Vrei sa fii clampa in jumate de ora? Bea repede 3 pahare cu apa(750ml)",
  "Acu-i acu, ori te faci clampa ori te mentii. 3 pahare cu apa(750ml)",
  "Ce faci? O iei pe ulei? Baga repede 3 pahare cu apa(750ml)",
  "Te incingi cam tare, nu crezi? 3 pahare cu apa(750ml)",
  "Mai usurel cu alcoolul - 3 pahare cu apa(750ml)",
  "Mai ai un nivel si te trimit acasa - 3 pahare cu apa(750ml)",
  "Vrei sa dormi pe canapea? 3 pahare cu apa(750ml)",
  "Vrei scandal? - 3 pahare cu apa(750ml)",
  "Daca nu bei acum 3 pahare cu apa(750ml) maine ai sa bati covoarele.",
  "Incetisor cu alcoolul - 3 pahare cu apa(750ml)"
  ]
nivel4 = [
  "Bai, eu it spun sa bei apa, tu ce bei acolo?Repede 4 pahare cu APA(1L)",
  "Esti beat manga. Bea repede 4 pahare cu apa(1L).",
  "Fara comentarii - 4 pahare cu apa(1L).",
  "Auzi betivanule, baga 4 pahare cu apa(1L).",
  "Daca nu cazi pana la bucatarie si adormi acolo, bea 4 pahare cu apa(1L).",
  "Probabil maine nici nu o sa-ti aduci aminte pe unde ai umblat. Bea 4 pahare cu apa.",
  "E clar te-a scapat femeia de sub control. 4 pahare cu apa(1L)",
  "Esti clampa - 4 pahare cu apa(1L)",
  "Ai scapat de sub control - 4 pahare cu apa(1L)",
  "Te-ai imbata ca porcul - 4 pahare cu apa(1L)",
  "Hai sa-ti spun ceva: glumele tale sunt proaste. 4 pahare cu apa(1L).",
  "Deci in seara asta dormi pe canapea. 4 pahare cu apa(1L)",
  "Maine trebuie sa cumperi flori si bomoane - 4 pahare cu apa(1L)",
  "Mda, si acum ce vrei? Bea 4 pahare cu apa(1L) si culcate.",
  "Pe scurt: 4 pahare cu apa(1L) si la culcare.",
  "Mai ai bani de taxi? 4 pahare cu apa(1L)",
  "Da-te jos de pe bar ca esti clampa - 4 pahare cu apa(1L).",
  "In juma' de ora imbratisezi buda - 4 pahare cu apa(1L)",
  "Treci acasa ca te-ai imbata, porcule - 4 pahare cu apa(1L)",
  "Boule asa cum ai stiut sa bei alcool asa bea acum 4 pahare cu apa(1L)",
  "Ma mir ca mai poti tasta - 4 pahare cu apa(1L)"
]
#sectiunea2 - primirea si prelucrarea datelor primite de la utilizator
# foarte util acum ar fi niste liste prestabilite din care sa aleaga utilizatorul - gen droplist cu bifari
print "Ce tip de bautura ai baut in ultima ora? Bere, tarie sau vin: "
tip_bautura = gets.chomp.downcase
  

#punem in fiecare variabila cate un numar random a.i. la fiecare reincarcare a programului utilizatorul sa primeasca un raspuns diferit
rand_nivel1 = rand(0..5)
rand_nivel2 = rand(0..2)
rand_nivel3 = rand(0..11)
rand_nivel4 = rand(0..20)

#in functie de tipul de bautura scriptul de mai jos ofera un anumit raspuns
case tip_bautura
   when "bere"
     print "Cate beri in ultima ora: "
     nr_beri = gets.chomp.to_i  #am observat ca metoda .to_i(to integer) ignora orice alt caracter care nu este cifra. Deci daca va scrie "2 beri" se returneaza doar rezultatul "2"
     if nr_beri <= 1
       puts nivel1[rand_nivel1]
     elsif nr_beri <= 2
        puts nivel2[rand_nivel2]
      elsif nr_beri <= 3
        puts nivel3[rand_nivel3]
      else 
        puts nivel4[rand_nivel4]
     end
    when "tarie"
     print "Cati ml de tarie ai baut in ultima ora: "
     ml_tarie = gets.chomp.to_i
     if ml_tarie <= 50
       puts nivel1[rand_nivel1]
     elsif ml_tarie <= 100
        puts nivel2[rand_nivel2]
      elsif ml_tarie <= 200
        puts nivel3[rand_nivel3]
      else 
        puts nivel4[rand_nivel4]
     end
    when "vin"
     print "Cati ml de vin ai baut in ultima ora: "
     ml_vin = gets.chomp.to_i
     if ml_vin <= 100
       puts nivel1[rand_nivel1]
     elsif ml_vin <= 200
        puts nivel2[rand_nivel2]
      elsif ml_vin <= 400
        puts nivel3[rand_nivel3]
      else 
        puts nivel4[rand_nivel4]
     end
     
 else
         print "Mai reincarca programul odata si tasteaza corect: bere, tarie sau vin. " 
        #am incercat sa reinitializez scriptul punandu-l intr-o metoda  pe care sa o reapelez aici dar nu am reusit. Trebuie sa mai sap putin. 
     end
