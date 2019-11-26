(* ::Package:: *)

(* ::Input:: *)
(*ChemList={};*)
(*PhysicsList={};*)
(*BioList={};*)
(*MathList={};*)
(*AstroList={};*)
(*GeneralList={};*)
(*EarthList={};*)


(* ::Input:: *)
(*Chemistry[string_]:=If[StringSplit[string][[2]]=="CHEMISTRY",AppendTo[ChemList,string]]*)
(*Physics[string_]:=If[StringSplit[string][[2]]=="PHYSICS",AppendTo[PhysicsList,string]]*)
(*Biology[string_]:=If[StringSplit[string][[2]]=="BIOLOGY",AppendTo[BioList,string]]*)
(*Math[string_]:=If[StringSplit[string][[2]]=="MATH",AppendTo[MathList,string]]*)
(*Astronomy[string_]:=If[StringSplit[string][[2]]=="ASTRONOMY",AppendTo[AstroList,string]]*)
(*GeneralScience[string_]:=If[StringSplit[string][[2]]=="GENERAL",AppendTo[GeneralList,string]]*)
(*EarthScience[string_]:=If[StringSplit[string][[2]]=="EARTH",AppendTo[EarthList,string]]*)


(* ::Input:: *)
(*urls=Import["/Users/S-Rangan/Desktop/Science Bowl Project/science.osti.gov_24th_Nov_2019.csv"]//Flatten;*)


(* ::Input:: *)
(*getPDF[url_]:=StringSplit[Import[url,"Plaintext"],"TOSS-UP"]//StringTrim;*)


(* ::Input:: *)
(*total=Map[getPDF,urls]//Flatten;*)


(* ::Input:: *)
(*Map[Chemistry,total];*)
(*Map[Physics,total];*)
(*Map[Biology,total];*)
(*Map[Math,total];*)
(*Map[Astronomy,total];*)
(*Map[GeneralScience,total];*)
(*Map[EarthScience,total];*)


(* ::Input:: *)
(*ChemCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_chem.pdf","Plaintext"];*)
(*ChemList=Join[ChemList,Flatten@Drop[Partition[StringSplit[ChemCSUN,"M-9"],2],1]]//Flatten;*)
(**)
(*PhysicsCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_phys.pdf","Plaintext"];*)
(*PhysicsList=Join[PhysicsList,Flatten@Drop[Partition[StringSplit[PhysicsCSUN,"S-9"],2],1]]//Flatten;*)
(**)
(*BioCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_biol.pdf","Plaintext"];*)
(*BioList=Join[BioList,Flatten@Drop[Partition[StringSplit[BioCSUN,"L-9"],2],1]]//Flatten;*)
(**)
(*AstroCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_astr.pdf", "Plaintext"];*)
(*AstroList=Join[AstroList,Flatten@Drop[Partition[StringSplit[AstroCSUN,"R-9"],2],1]]//Flatten;*)
(**)
(*GeneralCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_genr.pdf", "Plaintext"];*)
(*GeneralList=Join[GeneralList,Flatten@Drop[Partition[StringSplit[GeneralCSUN,"R-9"],2],1]]//Flatten;*)
(**)
(*EarthCSUN=Import["https://www.csun.edu/science/ref/games/questions/97_ersc.pdf", "Plaintext"];*)
(*EarthList=Join[EarthList,Flatten@Drop[Partition[StringSplit[EarthCSUN,"C-9"],2],1]]//Flatten;*)


(* ::Input:: *)
(*subjectList={ChemList,PhysicsList,BioList,MathList,AstroList,GeneralList,EarthList};*)
(*urls//Length*)
(*Length/@subjectList*)


(* ::Input:: *)
(*randomQuestion[SubjectNumber_]:=RandomChoice@subjectList[[SubjectNumber]]*)


(* ::Input:: *)
(*example=Row[randomQuestion/@RandomInteger[{1,7},23],"*)
(**)
(*"];*)


(* ::Input:: *)
(*Export["exampleRound.pdf",Style[example,FontFamily->"Times",FontSize->9]]*)
(*SystemOpen[DirectoryName[AbsoluteFileName["exampleRound.pdf"]]]*)
