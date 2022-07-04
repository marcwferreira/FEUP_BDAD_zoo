Create Trigger verificarTemperatura
After insert On Habitation
For Each Row
when ( ( (SELECT temperature FROM Habitat WHERE Habitat.id == New.habitat) >= (SELECT maxTemp FROM Habitation WHERE Habitation.habitat == New.habitat)) or ((SELECT temperature FROM Habitat WHERE Habitat.id == New.habitat) <= (SELECT minTemp FROM Habitation WHERE Habitation.habitat == New.habitat)))
Begin
  SELECT raise(rollback, 'Temperatura fora dos parâmetros de habitação');
  End;
