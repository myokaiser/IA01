;;; TP03 IA01
;;; Marie Guigon - William Schenten

;;---------------------------------------------BASE ATTRACTIONS---------------------------------------------
(setq *ATTRACTIONS* NIL)

(defun attr_constructor (conditions attraction description)
    (let ((id (gentemp "A")))
        (set id (list (list 'conditions conditions) (list 'attraction attraction)(list 'description description)))
        (pushnew id *ATTRACTIONS*)
    )
)

(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Adventureland)   (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Adventure Isle" "Plaisir en famille garanti ! Prenez votre courage à deux mains pour explorer ce territoire mystérieux. Saurez-vous percer les secrets qui entourent Skull Rock?")
(attr_constructor '((jeune_ado ado adulte)              (indiana)                    (Attraction_grands_frissons) (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Indiana Jones™ et le Temple du Péril" "Accrochez-vous, et attention au départ ! Ce wagonnet vous entraînera à toute allure en dessous et à travers des ruines mystérieuses au beau milieu de la jungle.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "La Cabane des Robinson" "Bravez les pistes des contrebandiers d Adventure Isle et découvrez la splendide cabane dans les arbres construite par la famille Robinson, originaire de Suisse, après un naufrage.")
(attr_constructor '((enfant jeune_ado)                  (Pas_de_restriction)         (Divertissement)             (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "La Plage des Pirates" "Ohé, du bateau ! Attrapez un sabre et préparez-vous à de joyeux combats dans cette aire de jeux pour apprentis flibustiers.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Le Galion des Pirates" "Branle-bas de combat ! Sautez à bord de ce bateau pirate pour rejoindre son équipage de flibustiers. Ahhh !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Adventureland)   (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "Le Passage Enchanté d'Aladdin" "Émerveillez-vous devant des scènes miniatures de la cité d Agrabah et laissez-vous conter l histoire d Aladdin comme vous ne l avez jamais entendue.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (fermé)  (moyen a_du_temps a_bcp_de_temps)) "Pirates of the Caribbean" "Frissonnez dans ce pillage de pirates périlleux, avec la présence inédite du Capitaine Jack Sparrow et de son équipage sans foi ni loi.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Spectacle)                  (Discoveryland)   (fermé)  (moyen a_du_temps a_bcp_de_temps)) "Mickey et son orchestre PhilharMagique" "Laissez-vous emporter par la magie de l’animation Disney avec ce film-concert 4D, spécialement revisité pour Disneyland Paris, qui met en vedette les Personnages Disney comme jamais")
(attr_constructor '((enfant jeune_ado ado adulte)       (autopia)                    (Attraction_grands_frissons) (Discoveryland)   (ouvert) (a_du_temps a_bcp_de_temps)) "Autopia" "Prenez place à bord de votre petit bolide et foncez au milieu de décors à couper le souffle !")
(attr_constructor '((enfant jeune_ado ado adulte)       (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (fermé)  (a_du_temps a_bcp_de_temps)) "Buzz Lightyear Laser Blast" "Décollez pour l espace et aidez Buzz à vaincre Zurg avec votre laser dans ce pas de tir intergalactique.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "Les Mystères du Nautilus" "Poursuivez votre quête à travers Discoveryland® et naviguez avec votre équipage jusqu au Nautilus de Jules Verne où vous attend une surprise tentaculaire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (ouvert) (a_du_temps a_bcp_de_temps)) "Orbitron" "Pilotez votre propre vaisseau spatial et survolez Discoveryland, parmi une constellation étincelante de planètes en orbite.")
(attr_constructor '((enfant jeune_ado ado adulte)       (ST_BTM)                     (Attraction_grands_frissons) (Discoveryland)   (fermé)  (a_du_temps a_bcp_de_temps)) "Star Tours : L’Aventure Continue" "Ressentez le pouvoir de la Force avec cette attraction qui vous propulsera à travers la galaxie Star Wars.")
(attr_constructor '((jeune_ado ado adulte)              (SW)                         (Attraction_grands_frissons) (Discoveryland)   (fermé)  (a_du_temps a_bcp_de_temps)) "Star Wars Hyperspace Mountain" "Au volant de votre vaisseau spatial, combattez l’Empire dans cette version intégralement revisitée d’une des attractions phares du Parc.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Alice's Curious Labyrinth" "Vivez votre propre aventure au Pays des Merveilles, avec toujours sur les lèvres un sourire aussi large que celui du Chat du Cheshire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (fermé)  (a_du_temps a_bcp_de_temps)) "Blanche-Neige et les Sept Nains" "Traversez le pays enchanté de Blanche-Neige dans un wagonnet de mine et découvrez comment les 7 nains l ont aidée à vaincre la méchante reine.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Casey Jr. – le Petit Train du Cirque" "Montez à bord du joyeux petit train du cirque tiré de l’histoire de Dumbo pour un beau voyage à la découverte des merveilles miniatures de Storybook Land.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (a_du_temps a_bcp_de_temps)) "Dumbo the Flying Elephant" "Envolez-vous avec le célèbre Dumbo pour découvrir un panorama magique qui vous laissera sans voix.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (fermé)  (moyen a_du_temps a_bcp_de_temps)) "It's a small world" "Embarquez pour un joyeux tour du monde, avec des poupées de tous les continents qui chantent et dansent sur l air de  it s a small world .")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "La Galerie de la Belle au Bois Dormant" "Revivez l histoire de la Belle au Bois Dormant dans le plus merveilleux des décors.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "La Tanière du Dragon" "Aventurez-vous sous le Château de la Belle au Bois Dormant à la rencontre d un monstre légendaire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Le Carrousel de Lancelot" "Choisissez votre monture et prenez les rênes sur le carrousel de Sir Lancelot en personne.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Le Château de la Belle au Bois Dormant" "Regardez le visage de vos bambins s illuminer devant ce château de légende, célèbre dans le monde entier. Le Château de la Belle au Bois Dormant s est récemment refait une beauté pour vous faire rêver encore de longues années !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Le Pays des Contes de Fées" "Mettez le cap sur des paysages miniatures magiques inspirés par les grandes œuvres littéraires et les légendaires classiques Disney.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (fermé)  (moyen a_du_temps a_bcp_de_temps)) "Les Voyages de Pinocchio" "Venez partager en compagnie de Jiminy Cricket la quête incroyable de Pinocchio pour tenter de devenir un vrai petit garçon. Une histoire qui ne vous laissera pas de bois !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Mad Hatter's Tea Cups" "Rendez-vous au Pays des Merveilles pour tournoyer et virevolter autour d une théière géante à bord d une tasse colorée.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (fermé)  (a_bcp_de_temps)) "Pavillon des Princesses" "Gravez à jamais vos propres instants magiques !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (fermé)  (a_bcp_de_temps)) "Peter Pan's Flight" "Prenez les voiles à bord d’un galion magique dans le ciel étoilé de Londres, en direction du Pays Imaginaire. Une aventure qui vous mènera à la rencontre d’Indiens, de pirates et de sirènes.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (fermé)  (a_bcp_de_temps)) "Rencontre avec Mickey" "Direction les coulisses pour rencontrer Mickey entre deux spectacles de magie. Vous pourrez même poser en sa compagnie pour une photo souvenir et découvrir certains secrets Disney bien gardés.")
(attr_constructor '((enfant jeune_ado ado adulte)       (ST_BTM)                     (Attraction_grands_frissons) (Frontierland)    (ouvert) (a_bcp_de_temps)) "Big Thunder Mountain" "Accrochez-vous bien, car le wagonnet de la mine s apprête à transporter toute votre famille dans une aventure palpitante autour d une montagne hantée...")
(attr_constructor '((enfant jeune_ado)                  (Pas_de_restriction)         (Divertissement)             (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Frontierland Playground" "Caché sur les rives de Rivers of the Far West, nos plus jeunes visiteurs pourront se lancer dans une myriade d aventures dans cette aire de jeux entourée des magnifiques paysages de l Ouest américain.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Frontierland)    (fermé)  (moyen a_du_temps a_bcp_de_temps)) "Phantom Manor" "Êtes-vous prêt pour le grand frisson ? Alors mettez le cap sur ce parcours mystérieux et fascinant, où fantômes et esprits vous attendent à chaque tournant.")
(attr_constructor '((enfant jeune_ado ado adulte)       (Pas_de_restriction)         (Aventure)                   (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Rustler Roundup Shootin' Gallery" "Vous pensez tirer plus vite que votre ombre ? Choisissez votre cible, par exemple un cactus plein d épines ou Pat Hibulaire, et dégainez votre meilleur coup.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Thunder Mesa Riverboat Landing" "Embarquez à bord d’un vieux bateau à aubes pour profiter d une croisière paisible parmi les plus beaux paysages de l’Ouest.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "Discovery Arcade" "Eurêka ! Découvrez l’âge d’or des inventions grâce à des modèles réduits de certaines des plus grandes créations du XXe siècle qui ont révolutionné le monde.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (a_du_temps a_bcp_de_temps)) "Disneyland Railroad" "Bienvenue à bord ! Embarquez dans un authentique train à vapeur et faites une balade autour du Parc Disneyland.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Horse-Drawn Streetcars" "Installez-vous confortablement pour sillonner Main Street, U.S.A.® à bord d’un tramway inspiré du XIXe siècle.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Les jardins féériques" "Promenez-vous dans Les Jardins Féériques aux abords de Central Plaza, spécialement créé pour notre 30? Anniversaire, et redécouvrez les Personnages Disney comme vous ne les avez jamais vus auparavant. N oubliez pas de vous y rendre de jour comme de nuit : vous y vivrez deux expériences complètement différentes !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (fermé)  (presse moyen a_du_temps a_bcp_de_temps)) "Liberty Arcade" "Promenez-vous dans Main Street, U.S.A.® et faites la lumière sur l’histoire du plus célèbre symbole de l’Amérique.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Main Street Vehicles" "Remontez le temps jusqu au début du siècle dernier et partez en virée dans l un des véhicules les plus légendaires de ces cent dernières années.")
;;---------------------------------------------BASE REGLES---------------------------------------------
(setq *REGLES* NIL)

(defun regle_constructor (conditions conclusion)
    (let ((id (gentemp "R")))
        (set id (list (list 'conditions conditions) (list 'conclusion conclusion)))
        (pushnew id *REGLES*)
    )
)

(regle_constructor '((aime_vitesse eq Oui)) 'taille_pers) ;;activation de la branche taille pour les attraction à grands frissons
(regle_constructor '((aime_vitesse eq Oui)) 'Attraction_grands_frissons) 
(regle_constructor '((aime_vitesse eq Non)) 'type_attraction) ;;redirection vers type_attraction
(regle_constructor '((aime_vitesse eq Non)) 'Pas_de_restriction) ;;ajout label sans restriction

(regle_constructor '((taille_pers < 0.81)) 'non_autorise)
(regle_constructor '((taille_pers >= 0.81)(taille_pers < 1.02)) 'autopia)
(regle_constructor '((taille_pers >= 1.02)(taille_pers < 1.20)) 'ST_BTM)
(regle_constructor '((taille_pers >= 1.20)(taille_pers < 1.40)) 'SW)
(regle_constructor '((taille_pers >= 1.40)) 'indiana)

(regle_constructor '((type_attraction eq Promenade)) 'Promenade)
(regle_constructor '((type_attraction eq Divertissement)) 'Divertissement)
(regle_constructor '((type_attraction eq Aventure)) 'Aventure)
(regle_constructor '((type_attraction eq Spectacle)) 'Spectacle)

(regle_constructor '((age < 5)) 'petit)
(regle_constructor '((age >= 5)(age < 10)) 'enfant)
(regle_constructor '((age >= 10)(age < 15)) 'jeune_ado)
(regle_constructor '((age >= 15)(age < 18)) 'ado)
(regle_constructor '((age >= 18)) 'adulte)

(regle_constructor '((attente < 10)) 'presse)
(regle_constructor '((attente >= 10)(attente < 20)) 'moyen)
(regle_constructor '((attente >= 20)(attente < 40)) 'a_du_temps)
(regle_constructor '((attente >= 40)) 'a_bcp_de_temps)

(regle_constructor '((type_parc eq Fantasyland)) 'Fantasyland)
(regle_constructor '((type_parc eq Discoveryland)) 'Discoveryland)
(regle_constructor '((type_parc eq Adventureland)) 'Adventureland)
(regle_constructor '((type_parc eq Frontierland)) 'Frontierland)
(regle_constructor '((type_parc eq Fantasyland)) 'Fantasyland)
(regle_constructor '((type_parc eq Main_Street_USA)) 'Main_Street_USA)
(regle_constructor '((type_parc eq Neutre)) 'type_film) ;;relié à la question film

(regle_constructor '((type_film eq Princesse)) 'Fantasyland)
(regle_constructor '((type_film eq Pirates)) 'Frontierland)
(regle_constructor '((type_film eq Science-fiction)) 'Discoveryland)
(regle_constructor '((type_film eq Super-héros)) 'Adventureland)
(regle_constructor '((type_film eq Aventure)) 'Adventureland)
(regle_constructor '((type_film eq Espace)) 'Discoveryland)
(regle_constructor '((type_film eq Féérique)) 'Fantasyland)
(regle_constructor '((type_film eq Animaux)) 'Fantasyland)

(regle_constructor '((ciel eq ouvert)) 'ouvert)
(regle_constructor '((ciel eq fermé)) 'fermé)


;;---------------------------------------------BASE QUESTIONS---------------------------------------------
(setq *QUESTIONS* NIL)

(defun quest_constructor (question reponse)
    (let ((id (gentemp "Q")))
        (set id (list (list 'question question) (list 'reponse reponse)))
        (pushnew id *QUESTIONS*)
    )
)

(quest_constructor "Quel est votre âge ? (un nombre est demandé)" 'age)

(quest_constructor "Quelle est votre taille (certaines attractions pourraient ne pas convenir) ? (Veuillez notez la taille en mètre)" 'taille_pers)

(quest_constructor "Aimez vous les attractions à grande vitesse ? (Oui ou Non)" 'aime_vitesse)

(quest_constructor "Dans ce cas, quel type d'attraction préférez-vous? (Promenade, Aventure en famille, Divertissement pour les plus petits, Spectacle)" 'type_attraction)

(quest_constructor "Quel est votre parc préféré parmi les 5 disponibles ? (Adventureland, Discoveryland, Fantasyland, Frontierland, Main_Street_USA ou Neutre)" 'type_parc)
(quest_constructor "Quel est votre type de film préféré (cette information pourrait nous aider à vous diriger vers le parc qui vous convient le plus) ? (Princesse, Pirates, Animaux, Science-fiction, Super-héros, Espace, Féérique, Aventure)" 'type_film)

(quest_constructor "Combien de temps maximum souhaitez vous attendre par attraction ? (5 min, 10 min, 20 min, 30 min, ...)" 'attente)

(quest_constructor "Préferrez vous les attractions à ciel ouvert ou fermé ? (ouvert, fermé)" 'ciel)

;;---------------------------------------------FONCTIONS---------------------------------------------
;;------------------REGLES------------------
(defun conditions_regle (regle) ;;permet d'extraire les conditions de la regle passee en argument
    (cadr (assoc 'conditions regle)) 
)

(defun conclusion_regle (regle) ;;permet d'extraire la conclusion de la regle passee en argument
    (cadr (assoc 'conclusion regle)) 
)

(defun eval_conditions (regle) ;; transforme les prémisses d'une règle en expression correcte pour LISP donc avec le symbole préfixé
    (let ((condition (cadr (assoc 'conditions regle)))) ;; ex dans la base de regle nous avons (ciel eq fermé), la fonction va la réécrire de catte manière (eq ciel fermé)
        (if (= (length condition) 1)
            (progn (setq instruction (car condition))
                `(,(cadr instruction) ,(car instruction) ',(caddr instruction))
            )
            (append (list 'and) (mapcar #'(lambda (x) `(,(cadr x) ,(car x) ',(caddr x))) condition))   
        )
    )
)

(defun activation_regle (premisse)  ;; recherche toutes les règles qui incluent la prémisse recherchée
    (setq *FAITS* (remove (car *FAITS*) *FAITS*)) ;; supprime la var_question de la base de faits
    (dolist (R *REGLES*)
        (if (assoc premisse (conditions_regle (symbol-value R)));;la fonction symbol-value permet d'inspecter l'interieur des symboles générés par gentemp dans des fonctions
            (if (eval (eval_conditions (symbol-value R))) ;; on évalue la condition réecrite (avec eval) en lisp grâce à eval_conditions définie juste au-dessus
                (pushnew (conclusion_regle (symbol-value R)) *FAITS*) ;; on met la valeur de conclusion de la règle R valide dans *FAITS*
            )
        )
    )
)
;;------------------QUESTIONS------------------
(defun affiche_question (question) ;;affiche la question 
    (cadr (assoc 'question question))
)

(defun var_question (question) ;;on affiche la variable de la question comme taille_pers, type_parc,etc et est utilisée dans d'autres fonctions pour retrouver les règles en lien avec la question
    (cadr (assoc 'reponse question))
)

(defun but_question (conclusion BDD) ;;cherche les questions qui ont pour but un critere
  (let ((result)) ;;ex pour conclusion = type_film, on aura la question Q84 portant sur le genre de film préféré de l'utilisateur
  (dolist (Q BDD)
        (if (eq (var_question (symbol-value Q)) conclusion)
            (pushnew Q result)
        )
    )result) ;;affiche la liste des questions correspondant à la conclusion rentrée en argument
)

(defun reader_question (question)
    (let ((reponse NIL) (possibilites NIL))
    (format t "~%~S" (affiche_question question)) ;; Pose la question
    (dolist (R *REGLES*)
        (if (assoc (var_question question) (conditions_regle (symbol-value R))) ;;recherche toutes les règles ayant pour prémisse la conclusion de la question : ex si on a type_film en conclusion de question, le dolist va chercher toutes les règles ayant pour prémisse type_film
            (pushnew (caddar (conditions_regle (symbol-value R))) possibilites) ;; insert une valeur possible en lien avec la question posée : ex pour type_film nous aurons la liste (Princesse Pirates Science-fiction SUper-héros Aventure Espace Féérique)
        )
    ) ;;(print possibilites) ;; liste des possibilités des choix de réponse
    (if (numberp (car possibilites)) ;; si la première valeur de la liste possibilite est de type numérique, la question attend une réponse numérique
        (while (not (numberp reponse)) ;; tant que la réponse fournise ne correspond pas à un nombre
            (print "votre reponse :")
            (setq reponse (read));; ce que rentre l'utilisateur est mis dans reponse
        ) ;;condition else, la question posée attend une réponse qui correspond à une valeur d'une liste qu'on précise dans la question
        (while (not (member reponse possibilites)) ;; tant que la réponse fournise ne correspond pas à une des valeurs de possibilités, on relance la ligne de lecture de réponse
            (print "votre reponse :")
            (setq reponse (read))
        ) 
    )
    (set (var_question question) reponse) ;; stockage de la reponse utilisateur dans la variable de question
    (pushnew (var_question question) *FAITS*) ;; on insère dans la BDF la variable répondue
    (mapcar #'(lambda (x) (setf *BDQ* (remove x *BDQ*))) (but_question (var_question question) *BDQ*))
    )
)

(defun choix_question (BDF);; pose la question en fonction des éléments contenus dans la BDF sachant que les questions posées sont en lien direct avec l'ordre des conditions des attractions
    (let ((result NIL) (longueur (+ (length BDF) 1)) (i 1)) ;;BDF prend toutes les valeurs que l'utilisateur rentre (longueur max 6)
    
    (dolist (element (conditions_attraction (symbol-value (car *RESULTATS*))));;RESULTATS contient toutes les attractions du parc et on enlèvera au fur et à mesure
       ;;on parcourt toutes les conditions de la première attraction de RESULTATS
	 (if (= i longueur)
            (setq conclusion (car element)) ;;*FAITS* étant la base de faits, elle inclue tous les éléments permettant de trouver ou non une attraction, sa longueur maximale est de 6
        ) ;;en fonction du nombre de valeur contenu dans *FAITS*, on va être capable de savoir quel est la prochaine valeur à déterminer et donc quelle est la prochaine question à poser
        (setq i (+ i 1)))
    ;;(format t "conclusion choix_question : ~%~S" conclusion) ;;affichage de la valeur trouvée par la fonction (par ex: Frontierland)
    (dolist (R *REGLES*)
        (if (eq (conclusion_regle (symbol-value R)) conclusion) ;; on regarde quelles sont les règles qui nous permettent d'avoir en conclusion la valeur trouvée juste avant (ex : ici on va chercher toutes les règles menant à une conclusion de la valeur Frontierland)
            (setq result (caar (conditions_regle (symbol-value R)))) ;;on insert la prémisse de la règle permettant d'avoir la conclusion qu'on souhaite (ex : ici, type_parc)
        )
    );;(format t "result choix_question : ~%~S" result) ;;affichage de la prémisse trouvée
    (car (but_question result *BDQ*)) ;;renvoie la question qui a pour conclusion la prémisse de la règle
    )
)

;;------------------ATTRACTIONS------------------
(defun conditions_attraction (attraction) ;;permet d'extraire les critères\conditions associées à l'attraction passé en argument
    (cadr (assoc 'conditions attraction))
)

(defun nom_attraction (attraction) ;;permet d'extraire le nom de l'attraction passé en argument
    (cadr (assoc 'attraction attraction))
)

(defun description_attraction (attraction) ;;permet d'extraire la description associée à l'attraction passé en argument
    (cadr (assoc 'description attraction))
)

(defun restriction_attraction (critere) ;;retourne la liste des attractions répondant au critère rentré par l'utilisateur lors de la phase question
    (dolist (A *ATTRACTIONS*)
        (let ((conditions (conditions_attraction (symbol-value A))) (i 0)) ;; le compteur i permet de savoir si le critere est existant dans l'attraction A
            (dolist (element conditions) ;; nous traitons le critère de cette façon car certaines conditions contiennent plusieurs valeurs possibles (ex : age, taille)
                (if (member critere element)
                    (setq i (+ i 1)) ;; si la chaine de caractere correspondant au critère a été trouvé dans la section condition de l'attraction A, i passe à 1
                )
            )
        (if (eq i 0) (setf *RESULTATS* (remove A *RESULTATS*))) ;; on supprime les résultats désormais impossible à obtenir après le choix de l'utilisateur, réduisant le champs des possibilités
        )
    )
    *RESULTATS*
)

(defun resultat ();;permet de stopper la boucle de moteur
  (if (not *RESULTATS*) 'T1 ;;quand il n'y a aucune attraction donc pas de résultat possible on renvoie T1
    (if (= (length *RESULTATS*) 1) 'T2 ;;si il nous reste plus qu'une attraction, on renvoie T2 car ça ne sert à rien de continuer
      (if (or (not *BDQ*) (= (length (conditions_attraction (symbol-value(car *RESULTATS*)))) (length *FAITS*))) 'T3 NIL) ;;si il y a plus de questions ou la longueur des conditions de l'attraction est égale à la longueur de la liste faits (donc 6 max), dans ce cas on renvoie T3 la condition d'arrêt
    )
  )
)

(defun verification (reponse);;regarde les redirections des questions car il va regarder la conclusion d'une règle et voir si celle-ci correspond au prémisse d'une autre règle
  (let ((question NIL)) ;;ex : si on répond neutre à la question liée au parc (car nous ne connaissons pas assez Disneyland ou qu'on a pas réellement d'avis sur la question) 
  (dolist (Q *BDQ*) ;; la règle activée va donner en conclusion type_film, ce qui va enclencher les questions qui ont pour prémisses type_film (qui est une autre manière d'attribué un parc à l'utilisateur)
    (if (member reponse (assoc 'reponse (symbol-value Q))) ;; même scénario pour la question et les règles aime_vitesse
        (setq question Q)
      )
    )question ;; retourne la question qui doit être posée en conséquence 
  )
)

;;---------------------------------------------MOTEUR---------------------------------------------
(defun moteur ()
    (setq *FAITS* NIL)
    (setf *RESULTATS* (copy-list *ATTRACTIONS*)) ;;nous copions le contenu et non l'adresse du contenu car si on supprime une attraction ça supprime dans la base ATTRACTIONS aussi et on veut pas 
    (setf *BDQ* (copy-list *QUESTIONS*))

    (while (not (resultat)) ;; tant que la fonction (resultat) renvoie nil, on continue la boucle
        (reader_question (symbol-value (choix_question *FAITS*)));;on pose une question
        (activation_regle (car *FAITS*));;la valeur répondue à la question va servir de premisse à la fonction activation_regle 
        (if (verification (car *FAITS*)) ;;si la question est de type redirection, on relance une nouvelle question
            (progn (reader_question (symbol-value (verification (car *FAITS*))))
                (activation_regle (car *FAITS*))
            )
        )
        (restriction_attraction (car *FAITS*)) ;; on ressert l'étendu des résultats possibles après la question
    )
    (cond ((eq (resultat) 'T1) ;;en fonction de la valeur de la fonction resultat, on affiche l'un des messages suivants
           (format t "~% Désolé, nous n'avons pas réussi à trouver l'attraction qui vous convient... ~%")
        )
        ((eq (resultat) 'T2)
           (format t "~% voici l'attraction qui vous correspond le mieux : ~%")
           (format t "~% ~S ~S ~%" (nom_attraction (symbol-value (car *RESULTATS*))) (description_attraction (symbol-value (car *RESULTATS*))))
        )
        ((eq (resultat) 'T3)
            (format t "~% voici les attractions qui vous correspond le mieux : ~%")
            (dolist (element *RESULTATS*)
                (format t "~% ~S ~S ~%" (nom_attraction (symbol-value element)) (description_attraction (symbol-value element)))
        ))
    )
)







