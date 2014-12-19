import Data.List

windows list n = filter ((>=n) . length) $ map (take n) $ tails list

main = print $ head $ head $ filter ((>0) . length) [[palindrome | palindrome<-(windows text a), palindrome == (reverse palindrome)] | a<-[length text,(length text)-1..2]]
       where text = "jegtroringenkanleveetheltlivutenkj_rlighetmenkj_rlighetenharmangeansikterih*stkomdetutenboksomhetererlikkj_rlighetdenbest+ravsamtalermedselgereavgatemagasinetsomn+eretablertimangenorskebyerallehardeenhistorie+fortelleomkj_rlighetsomnoeavgj*rendeentendetertilenpartneretfamiliemedlemenvennelleretkj_ledyrmangeharopplevd+blisveketogselv+sviktemenutrolignokblirikkekj_rlighetsevnen*delagtallikeveldenbyggesoppigjengangp+gangkj_rligheteneretsted+festeblikketdengirossretningognoe+styreetterdengirossverdisommenneskerognoe+leveforp+sammem+tesomkj_rligheteneretfundamentimenneskelivetergrunnlovenetfundamentfornasjonennorgefor200+rsidensamletengruppemennsegp+eidsvollfor+lagelovensomskullebligrunnlagettildetselvstendigenorgegrunnlovensomdengangblevedtattharutvikletsegipaktmedtidenogsikreridagdetnorskefolkrettigheterviletttarforgittihverdagenrettighetersommenneskerimangeandrelandbarekandr*mmeomogsomdeslossformedlivetsominnsatsjegh+peratvigjennomjubileumsfeiringeni2014vilbliminnetomhvagrunnlovenegentligbetyrforosss+vikanfortsette+arbeideforverdienev+reb+deherhjemmeoginternasjonaltjegharlysttil+nevnenoeneksemplerp+hvordangrunnlovenvirkerinnp+enkeltmenneskerslivtenkdegatduskriveretkritiskinnleggomlandetsstyrep+sosialemedier"