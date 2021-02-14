# Feuxdecarrefour_no_counter

Un carrefour à feux est une intersection dont le trafic est réglé par des feux de signalisation lumineux pilotés par un contrôleur. Dans ce projet on désire automatiser la gestion d’un feu de carrefour, réglant la circulation d’une intersection de deux voies avec un cas de 2 signalisations lumineuses principales (F1 et F2), deux signalisations lumineuses ; une pour tourner à gauche de voie 1 vers la voie 2 et une pour tourner à gauche du voie 2 vers la voie 1(FT1 et FT2) et deux feux pour le passage piétons du voies 1 et 2(FP1 et FP2).

Le système doit être constitué de :
• Des voyants rouges pour interdire le passage des véhicules et d’autres pour interdire le passage des piétons.
• Des voyants orangés pour la préparation à l’interdiction de passage.
• Des voyants verts pour l’autorisation de passage des véhicules et d’autres pour l’autorisation de passage des piétons.
Ces voyants doivent opérés d’une façon automatique qui règle la circulation des véhicules.

* Fonctionnement 

L’état initial est lorsque le feu F1 de la voie 1 est en vert et le feu F2 de la voie 2 est rouge, les 2 feux pour le changement de voie FT1 et FT2 sont rouges, les piétons de la voie 2 peuvent passer. Après un signal d'horloge, FT1 devient vert pour que les voitures de la voie 1 peuvent tourner à droite et FP2 devient rouge pour interdire le passage des piétons. Ensuite, FT1 et F1 deviennent orangés pour la préparation à l’interdiction de passage des véhicules de la voie 1. Après un signal d'horloge, F1 et FT1 deviennent rouges, F2 devient vert et les piétons de la voie 1 peuvent passer. L’autorisation de passage des véhicules de la voie 2 dure 2 signal d'horloge dont le 1er signal FT2 est rouge, puis, ça devient vert, lorsque FT2 devient vert, FP1 devient rouge pour interdire le passage des piétons de la voie 1. Après, F2 et FT2 deviennent orangés pendantun signal d'horloge. Puis, on passe encore à l’état initial pour que le cycle se répète.



On définit :
• R1, O1 et V1 les feux de F1
• R2, O2 et V2 les feux de F2.
• RT1, OT1 et VT1 les feux de FT1.
• RT2, OT2 et VT2 les feux de FT2.
• RP1 et VP1 les feux de FP1.
• RP2 et VP2 les feux de FP2.
