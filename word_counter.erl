-module(word_counter).
-export([count_it/1]).

count_it("") -> 0;
count_it(S) -> 
  Pos = string:str(S, " "),
  NewString = string:sub_string(S, Pos+1),
  if 
      Pos /= 0 -> 1 + count_it(NewString);
      true -> 1
  end.