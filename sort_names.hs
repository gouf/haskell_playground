import Data.List

names = [
  ("lan", "Curtis"),
  ("Bernard", "Summber"),
  ("Peter", "Hook"),
  ("Stephen", "Morris")]

compareLastNames name1 name2 =
  if lastName1 > lastName2
  then GT
  else if lastName1 < lastName2
    then LT
    else EQ
  where lastName1 = snd name1
        lastName2 = snd name2

-- sortBy compareLastNames names
