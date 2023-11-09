# Autor  
- Jakub Brambor 151871  
- Informatyka 5 semestr rok 2023/2024  


# Inspiracja
- Gra Rush Hour - ulubiona gra logiczna z dzieciństwa.  
- Gra Chants of Sennaar - w grze komputerowej była zawarta wariacja tej łamigłówki, co przypomniało mi o jej oryginale.  

# Pliki i ich opis
- `/pddl_solution/domain.pddl` - przykładowa dziedzina (rozwiązane zadanie)  
- `/pddl_solution/problem.pddl` - przykładowy problem (rozwiązane zadanie)  
- `/pddl_solution/plan.txt` - plan wygenerowany za pomocą powyższej domeny i problemu  
- `/impreza_w_hobbitonie.png` - wizualizacja problemu  
- `/problem.pddl` - początkowa wersja problemu, do której dostęp będzie mieć student  

# Treść zadania
Na 111 urodziny Bilbo Bagginsa zjechało się prawie całe Shire. Przyjechał również jego stary przyjaciel - czarodziej Gandalf, który przyjechał powozem z zapasem magicznych fajerwerków. Merry i Pippin w trakcie tej imprezy zdenerwowali Gandalfa, włamując się na zaplecze logistyczne imprezy, na którym zaparkowane były powozy, w tym powóz Gandalfa z fajerwerkami. Merry i Pippin postanowili przetestować fajerwerki bez pozwolenia czarodzieja, za co on ich ukarał.

Gandalf po imprezie musi się wybrać na spotkanie z Sarumanem - potrzebuje więc swojego powozu (literka G). Jednakże tak łatwo jego powóz nie wyjedzie, gdyż drogę do wyjścia zastawiły inne. Chcąc zrobić na złość Merremu i Pippinowi, założył na wszystkie powozy (łącznie z swoim) magiczną blokadę na koła, która sprawia, że nie mogą one się ruszać. Aby móc zdjąć magiczną blokadę (dla jednego powozu na raz), Gandalf udostępnił hobbitom magiczne urządzenie.

Magiczne urządzenie jest wyposażone w:
- korbkę (niebieski okrąg umieszczony na trybie OFF)
- tryby
    - tryb OFF
    - tryby neutralne (nieoznaczone czerwone kwadraty)
    - tryby aktywujące koła powozu (opisane czerwone kwadraty)
- przejścia między trybami (czarne linie)

Korbka między trybami może poruszać się w każdą stronę po czarnych liniach. Korbka jest na początku umieszczona na trybie OFF.
Przykładowo, aby przejść z trybu OFF do trybu R, przechodzimy do jednego stanu neutralnego, a dopiero potem do trybu R. Działanie urządzenia można przyrównać do skrzyni biegów.

Gdy korbka znajduje się na odpowiednio opisanym trybie, wtedy koła danego powozu się odblokowują i można ów powóz przesuwać po zapleczu logistycznym. Dodatkowo, Gandalf zażyczył sobie, aby **hobbici oddali jemu magiczne urządzenie z korbką umieszczoną na trybie "OFF"**.
Na zapleczu jest dość ciasno, więc powozy nie mogą skręcać ani zmieniać kierunku jazdy (oczywiście mogą zmienić zwrot). Powozy umieszczone poziomo można przesuwać tylko i wyłącznie poziomo, a powozy umieszczone pionowo można przesuwać tylko i wyłącznie pionowo.
Hobbitów czeka słuszna kara za rozrabianie. Aby ukrócić swoje udręki, podzielili się pracą. Merry będzie przesuwać powozy, a Pippin będzie obsługiwać magiczne urządzenie. Pomóż hobbitom rozwiązać problem.

**UWAGA:** Kierunek poruszania się powozów jest wyznaczony przez kierunek ich ustawienia. Przykładowo, jak powóz zajmuje trzy pola w poziomie, to może poruszać się tylko poziomo.

**W pliku problem.pddl zadeklarowana jest już plansza będąca odpowiednikiem zaplecza logistycznego w hobbitonie.**
