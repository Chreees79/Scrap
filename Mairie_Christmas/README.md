Merci à toi, ô correcteur!!

Le CEO de Get-email Corp a besoin de nos services. Il voudrait toutes les adresses e-mail des mairies du Val d'Oise. Nous devrons donc enregistrer les données dans un array de hash suivant ce format :

a = [
  { "ville_1" => "email_1" },
  { "ville_2" => "email_2" }, 
  etc
]
Et décomposedr le programme en 2 sous-problème simples:

- être capable d'obtenir un e-mail de mairie à partir de la page de cette dernière ( pas en partant du listing complet des mairies). 
- être capable de coder une méthode get_townhall_urls qui récupère les URLs de chaque ville du Val d'Oise.


Pour les tests : des tests de fonctionnement de base et des tests de cohérence du résultat.

Merci à toi !

                                        __ __
                                      ,;::\::\
                                    ,'/' `/'`/
                                _\,: '.,-'.-':.
                              -./"'  :    :  :\/,
                                ::.  ,:____;__; :-
                                :"  ( .`-*'o*',);
                                \.. ` `---'`' /
                                  `:._..-   _.'
                                  ,;  .     `.
                                /"'| |       \
                                ::. ) :        :
                                |" (   \       |
                                :.(_,  :       ;
                                \'`-'_/      /
                                  `...   , _,'
                                  |,|  : |
                                  |`|  | |
                                  |,|  | |
                              ,--.;`|  | '..--.
                              /;' "' ;  '..--. ))
                              \:.___(___   ) ))'
                                    SSt`-'-''
