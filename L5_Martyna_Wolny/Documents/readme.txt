Laboratorium 5: TIER protocol i tidy data

Oryginalne dane dostępne są w pliku weather.txt w folderze /Original_Data. Plik został skopiowany również do folderu /Analysis_Data.

Skrypt do analizy danych znajduje się /CommandFiles/weather_analysis.ipynb. Kod został dodatkowo opisany komentarzami o czynnościach wykonywanych.

Dane po analizie są dostępne w:
* /Analysis_Data/weather.csv - plik zawiera kopię danych z oryginalnego pliku weather.txt; dane zostały oczyszczone w celu ułatwienia edycji
** Pierwsza kolumna zawiera dane (id, rok, miesiąc, nazwa zmiennych)
** Następne kolumny zawierają wartości dla danego dnia w miesiącu

* /Analysis_Data/weather_2010.csv - plik zawiera dane pogodowe z roku 2010
** Pierwsza kolumna zawiera dane (id, rok, miesiąc, nazwa zmiennych)
** Następne kolumny zawierają wartości dla danego dnia w miesiącu

* /Analysis_Data/weather_2010_5_months.csv - plik zawiera dane pogodowe z roku 2010 dla pierwszych 5 miesięcy; dane zostały wyodrębione z pliku weather.csv
** Id - string; id stacji pogodowej
** Date - string; data
** MIN TEMP - zmienna; minimalna temperatura w miesiącu
** MAX TEMP - zmienna; maksymalna temperatura w miesiącu
** AVERAGE PRCP - zmienna; średnia ilość opadów w miesiącu