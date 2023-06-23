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

(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Adventureland)   (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Adventure Isle" "Plaisir en famille garanti ! Prenez votre courage � deux mains pour explorer ce territoire myst�rieux. Saurez-vous percer les secrets qui entourent Skull Rock?")
(attr_constructor '((jeune_ado ado adulte)              (indiana)                    (Attraction_grands_frissons) (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Indiana Jones� et le Temple du P�ril" "Accrochez-vous, et attention au d�part ! Ce wagonnet vous entra�nera � toute allure en dessous et � travers des ruines myst�rieuses au beau milieu de la jungle.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "La Cabane des Robinson" "Bravez les pistes des contrebandiers d Adventure Isle et d�couvrez la splendide cabane dans les arbres construite par la famille Robinson, originaire de Suisse, apr�s un naufrage.")
(attr_constructor '((enfant jeune_ado)                  (Pas_de_restriction)         (Divertissement)             (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "La Plage des Pirates" "Oh�, du bateau ! Attrapez un sabre et pr�parez-vous � de joyeux combats dans cette aire de jeux pour apprentis flibustiers.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Le Galion des Pirates" "Branle-bas de combat ! Sautez � bord de ce bateau pirate pour rejoindre son �quipage de flibustiers. Ahhh !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Adventureland)   (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "Le Passage Enchant� d'Aladdin" "�merveillez-vous devant des sc�nes miniatures de la cit� d Agrabah et laissez-vous conter l histoire d Aladdin comme vous ne l avez jamais entendue.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Adventureland)   (ferm�)  (moyen a_du_temps a_bcp_de_temps)) "Pirates of the Caribbean" "Frissonnez dans ce pillage de pirates p�rilleux, avec la pr�sence in�dite du Capitaine Jack Sparrow et de son �quipage sans foi ni loi.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Spectacle)                  (Discoveryland)   (ferm�)  (moyen a_du_temps a_bcp_de_temps)) "Mickey et son orchestre PhilharMagique" "Laissez-vous emporter par la magie de l�animation Disney avec ce film-concert 4D, sp�cialement revisit� pour Disneyland Paris, qui met en vedette les Personnages Disney comme jamais")
(attr_constructor '((enfant jeune_ado ado adulte)       (autopia)                    (Attraction_grands_frissons) (Discoveryland)   (ouvert) (a_du_temps a_bcp_de_temps)) "Autopia" "Prenez place � bord de votre petit bolide et foncez au milieu de d�cors � couper le souffle !")
(attr_constructor '((enfant jeune_ado ado adulte)       (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (ferm�)  (a_du_temps a_bcp_de_temps)) "Buzz Lightyear Laser Blast" "D�collez pour l espace et aidez Buzz � vaincre Zurg avec votre laser dans ce pas de tir intergalactique.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "Les Myst�res du Nautilus" "Poursuivez votre qu�te � travers Discoveryland� et naviguez avec votre �quipage jusqu au Nautilus de Jules Verne o� vous attend une surprise tentaculaire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Discoveryland)   (ouvert) (a_du_temps a_bcp_de_temps)) "Orbitron" "Pilotez votre propre vaisseau spatial et survolez Discoveryland, parmi une constellation �tincelante de plan�tes en orbite.")
(attr_constructor '((enfant jeune_ado ado adulte)       (ST_BTM)                     (Attraction_grands_frissons) (Discoveryland)   (ferm�)  (a_du_temps a_bcp_de_temps)) "Star Tours : L�Aventure Continue" "Ressentez le pouvoir de la Force avec cette attraction qui vous propulsera � travers la galaxie Star Wars.")
(attr_constructor '((jeune_ado ado adulte)              (SW)                         (Attraction_grands_frissons) (Discoveryland)   (ferm�)  (a_du_temps a_bcp_de_temps)) "Star Wars Hyperspace Mountain" "Au volant de votre vaisseau spatial, combattez l�Empire dans cette version int�gralement revisit�e d�une des attractions phares du Parc.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Alice's Curious Labyrinth" "Vivez votre propre aventure au Pays des Merveilles, avec toujours sur les l�vres un sourire aussi large que celui du Chat du Cheshire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ferm�)  (a_du_temps a_bcp_de_temps)) "Blanche-Neige et les Sept Nains" "Traversez le pays enchant� de Blanche-Neige dans un wagonnet de mine et d�couvrez comment les 7 nains l ont aid�e � vaincre la m�chante reine.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Casey Jr. � le Petit Train du Cirque" "Montez � bord du joyeux petit train du cirque tir� de l�histoire de Dumbo pour un beau voyage � la d�couverte des merveilles miniatures de Storybook Land.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (a_du_temps a_bcp_de_temps)) "Dumbo the Flying Elephant" "Envolez-vous avec le c�l�bre Dumbo pour d�couvrir un panorama magique qui vous laissera sans voix.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ferm�)  (moyen a_du_temps a_bcp_de_temps)) "It's a small world" "Embarquez pour un joyeux tour du monde, avec des poup�es de tous les continents qui chantent et dansent sur l air de  it s a small world .")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "La Galerie de la Belle au Bois Dormant" "Revivez l histoire de la Belle au Bois Dormant dans le plus merveilleux des d�cors.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "La Tani�re du Dragon" "Aventurez-vous sous le Ch�teau de la Belle au Bois Dormant � la rencontre d un monstre l�gendaire.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Le Carrousel de Lancelot" "Choisissez votre monture et prenez les r�nes sur le carrousel de Sir Lancelot en personne.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Le Ch�teau de la Belle au Bois Dormant" "Regardez le visage de vos bambins s illuminer devant ce ch�teau de l�gende, c�l�bre dans le monde entier. Le Ch�teau de la Belle au Bois Dormant s est r�cemment refait une beaut� pour vous faire r�ver encore de longues ann�es !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Le Pays des Contes de F�es" "Mettez le cap sur des paysages miniatures magiques inspir�s par les grandes �uvres litt�raires et les l�gendaires classiques Disney.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ferm�)  (moyen a_du_temps a_bcp_de_temps)) "Les Voyages de Pinocchio" "Venez partager en compagnie de Jiminy Cricket la qu�te incroyable de Pinocchio pour tenter de devenir un vrai petit gar�on. Une histoire qui ne vous laissera pas de bois !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Mad Hatter's Tea Cups" "Rendez-vous au Pays des Merveilles pour tournoyer et virevolter autour d une th�i�re g�ante � bord d une tasse color�e.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ferm�)  (a_bcp_de_temps)) "Pavillon des Princesses" "Gravez � jamais vos propres instants magiques !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Fantasyland)     (ferm�)  (a_bcp_de_temps)) "Peter Pan's Flight" "Prenez les voiles � bord d�un galion magique dans le ciel �toil� de Londres, en direction du Pays Imaginaire. Une aventure qui vous m�nera � la rencontre d�Indiens, de pirates et de sir�nes.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Fantasyland)     (ferm�)  (a_bcp_de_temps)) "Rencontre avec Mickey" "Direction les coulisses pour rencontrer Mickey entre deux spectacles de magie. Vous pourrez m�me poser en sa compagnie pour une photo souvenir et d�couvrir certains secrets Disney bien gard�s.")
(attr_constructor '((enfant jeune_ado ado adulte)       (ST_BTM)                     (Attraction_grands_frissons) (Frontierland)    (ouvert) (a_bcp_de_temps)) "Big Thunder Mountain" "Accrochez-vous bien, car le wagonnet de la mine s appr�te � transporter toute votre famille dans une aventure palpitante autour d une montagne hant�e...")
(attr_constructor '((enfant jeune_ado)                  (Pas_de_restriction)         (Divertissement)             (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Frontierland Playground" "Cach� sur les rives de Rivers of the Far West, nos plus jeunes visiteurs pourront se lancer dans une myriade d aventures dans cette aire de jeux entour�e des magnifiques paysages de l Ouest am�ricain.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Frontierland)    (ferm�)  (moyen a_du_temps a_bcp_de_temps)) "Phantom Manor" "�tes-vous pr�t pour le grand frisson ? Alors mettez le cap sur ce parcours myst�rieux et fascinant, o� fant�mes et esprits vous attendent � chaque tournant.")
(attr_constructor '((enfant jeune_ado ado adulte)       (Pas_de_restriction)         (Aventure)                   (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Rustler Roundup Shootin' Gallery" "Vous pensez tirer plus vite que votre ombre ? Choisissez votre cible, par exemple un cactus plein d �pines ou Pat Hibulaire, et d�gainez votre meilleur coup.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Aventure)                   (Frontierland)    (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Thunder Mesa Riverboat Landing" "Embarquez � bord d�un vieux bateau � aubes pour profiter d une croisi�re paisible parmi les plus beaux paysages de l�Ouest.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "Discovery Arcade" "Eur�ka ! D�couvrez l��ge d�or des inventions gr�ce � des mod�les r�duits de certaines des plus grandes cr�ations du XXe si�cle qui ont r�volutionn� le monde.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (a_du_temps a_bcp_de_temps)) "Disneyland Railroad" "Bienvenue � bord ! Embarquez dans un authentique train � vapeur et faites une balade autour du Parc Disneyland.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (moyen a_du_temps a_bcp_de_temps)) "Horse-Drawn Streetcars" "Installez-vous confortablement pour sillonner Main Street, U.S.A.� � bord d�un tramway inspir� du XIXe si�cle.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Les jardins f��riques" "Promenez-vous dans Les Jardins F��riques aux abords de Central Plaza, sp�cialement cr�� pour notre 30? Anniversaire, et red�couvrez les Personnages Disney comme vous ne les avez jamais vus auparavant. N oubliez pas de vous y rendre de jour comme de nuit : vous y vivrez deux exp�riences compl�tement diff�rentes !")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Promenade)                  (Main_Street_USA) (ferm�)  (presse moyen a_du_temps a_bcp_de_temps)) "Liberty Arcade" "Promenez-vous dans Main Street, U.S.A.� et faites la lumi�re sur l�histoire du plus c�l�bre symbole de l�Am�rique.")
(attr_constructor '((petit enfant jeune_ado ado adulte) (Pas_de_restriction)         (Divertissement)             (Main_Street_USA) (ouvert) (presse moyen a_du_temps a_bcp_de_temps)) "Main Street Vehicles" "Remontez le temps jusqu au d�but du si�cle dernier et partez en vir�e dans l un des v�hicules les plus l�gendaires de ces cent derni�res ann�es.")
;;---------------------------------------------BASE REGLES---------------------------------------------
(setq *REGLES* NIL)

(defun regle_constructor (conditions conclusion)
    (let ((id (gentemp "R")))
        (set id (list (list 'conditions conditions) (list 'conclusion conclusion)))
        (pushnew id *REGLES*)
    )
)

(regle_constructor '((aime_vitesse eq Oui)) 'taille_pers) ;;activation de la branche taille pour les attraction � grands frissons
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
(regle_constructor '((type_parc eq Neutre)) 'type_film) ;;reli� � la question film

(regle_constructor '((type_film eq Princesse)) 'Fantasyland)
(regle_constructor '((type_film eq Pirates)) 'Frontierland)
(regle_constructor '((type_film eq Science-fiction)) 'Discoveryland)
(regle_constructor '((type_film eq Super-h�ros)) 'Adventureland)
(regle_constructor '((type_film eq Aventure)) 'Adventureland)
(regle_constructor '((type_film eq Espace)) 'Discoveryland)
(regle_constructor '((type_film eq F��rique)) 'Fantasyland)
(regle_constructor '((type_film eq Animaux)) 'Fantasyland)

(regle_constructor '((ciel eq ouvert)) 'ouvert)
(regle_constructor '((ciel eq ferm�)) 'ferm�)


;;---------------------------------------------BASE QUESTIONS---------------------------------------------
(setq *QUESTIONS* NIL)

(defun quest_constructor (question reponse)
    (let ((id (gentemp "Q")))
        (set id (list (list 'question question) (list 'reponse reponse)))
        (pushnew id *QUESTIONS*)
    )
)

(quest_constructor "Quel est votre �ge ? (un nombre est demand�)" 'age)

(quest_constructor "Quelle est votre taille (certaines attractions pourraient ne pas convenir) ? (Veuillez notez la taille en m�tre)" 'taille_pers)

(quest_constructor "Aimez vous les attractions � grande vitesse ? (Oui ou Non)" 'aime_vitesse)

(quest_constructor "Dans ce cas, quel type d'attraction pr�f�rez-vous? (Promenade, Aventure en famille, Divertissement pour les plus petits, Spectacle)" 'type_attraction)

(quest_constructor "Quel est votre parc pr�f�r� parmi les 5 disponibles ? (Adventureland, Discoveryland, Fantasyland, Frontierland, Main_Street_USA ou Neutre)" 'type_parc)
(quest_constructor "Quel est votre type de film pr�f�r� (cette information pourrait nous aider � vous diriger vers le parc qui vous convient le plus) ? (Princesse, Pirates, Animaux, Science-fiction, Super-h�ros, Espace, F��rique, Aventure)" 'type_film)

(quest_constructor "Combien de temps maximum souhaitez vous attendre par attraction ? (5 min, 10 min, 20 min, 30 min, ...)" 'attente)

(quest_constructor "Pr�ferrez vous les attractions � ciel ouvert ou ferm� ? (ouvert, ferm�)" 'ciel)

;;---------------------------------------------FONCTIONS---------------------------------------------
;;------------------REGLES------------------
(defun conditions_regle (regle) ;;permet d'extraire les conditions de la regle passee en argument
    (cadr (assoc 'conditions regle)) 
)

(defun conclusion_regle (regle) ;;permet d'extraire la conclusion de la regle passee en argument
    (cadr (assoc 'conclusion regle)) 
)

(defun eval_conditions (regle) ;; transforme les pr�misses d'une r�gle en expression correcte pour LISP donc avec le symbole pr�fix�
    (let ((condition (cadr (assoc 'conditions regle)))) ;; ex dans la base de regle nous avons (ciel eq ferm�), la fonction va la r��crire de catte mani�re (eq ciel ferm�)
        (if (= (length condition) 1)
            (progn (setq instruction (car condition))
                `(,(cadr instruction) ,(car instruction) ',(caddr instruction))
            )
            (append (list 'and) (mapcar #'(lambda (x) `(,(cadr x) ,(car x) ',(caddr x))) condition))   
        )
    )
)

(defun activation_regle (premisse)  ;; recherche toutes les r�gles qui incluent la pr�misse recherch�e
    (setq *FAITS* (remove (car *FAITS*) *FAITS*)) ;; supprime la var_question de la base de faits
    (dolist (R *REGLES*)
        (if (assoc premisse (conditions_regle (symbol-value R)));;la fonction symbol-value permet d'inspecter l'interieur des symboles g�n�r�s par gentemp dans des fonctions
            (if (eval (eval_conditions (symbol-value R))) ;; on �value la condition r�ecrite (avec eval) en lisp gr�ce � eval_conditions d�finie juste au-dessus
                (pushnew (conclusion_regle (symbol-value R)) *FAITS*) ;; on met la valeur de conclusion de la r�gle R valide dans *FAITS*
            )
        )
    )
)
;;------------------QUESTIONS------------------
(defun affiche_question (question) ;;affiche la question 
    (cadr (assoc 'question question))
)

(defun var_question (question) ;;on affiche la variable de la question comme taille_pers, type_parc,etc et est utilis�e dans d'autres fonctions pour retrouver les r�gles en lien avec la question
    (cadr (assoc 'reponse question))
)

(defun but_question (conclusion BDD) ;;cherche les questions qui ont pour but un critere
  (let ((result)) ;;ex pour conclusion = type_film, on aura la question Q84 portant sur le genre de film pr�f�r� de l'utilisateur
  (dolist (Q BDD)
        (if (eq (var_question (symbol-value Q)) conclusion)
            (pushnew Q result)
        )
    )result) ;;affiche la liste des questions correspondant � la conclusion rentr�e en argument
)

(defun reader_question (question)
    (let ((reponse NIL) (possibilites NIL))
    (format t "~%~S" (affiche_question question)) ;; Pose la question
    (dolist (R *REGLES*)
        (if (assoc (var_question question) (conditions_regle (symbol-value R))) ;;recherche toutes les r�gles ayant pour pr�misse la conclusion de la question : ex si on a type_film en conclusion de question, le dolist va chercher toutes les r�gles ayant pour pr�misse type_film
            (pushnew (caddar (conditions_regle (symbol-value R))) possibilites) ;; insert une valeur possible en lien avec la question pos�e : ex pour type_film nous aurons la liste (Princesse Pirates Science-fiction SUper-h�ros Aventure Espace F��rique)
        )
    ) ;;(print possibilites) ;; liste des possibilit�s des choix de r�ponse
    (if (numberp (car possibilites)) ;; si la premi�re valeur de la liste possibilite est de type num�rique, la question attend une r�ponse num�rique
        (while (not (numberp reponse)) ;; tant que la r�ponse fournise ne correspond pas � un nombre
            (print "votre reponse :")
            (setq reponse (read));; ce que rentre l'utilisateur est mis dans reponse
        ) ;;condition else, la question pos�e attend une r�ponse qui correspond � une valeur d'une liste qu'on pr�cise dans la question
        (while (not (member reponse possibilites)) ;; tant que la r�ponse fournise ne correspond pas � une des valeurs de possibilit�s, on relance la ligne de lecture de r�ponse
            (print "votre reponse :")
            (setq reponse (read))
        ) 
    )
    (set (var_question question) reponse) ;; stockage de la reponse utilisateur dans la variable de question
    (pushnew (var_question question) *FAITS*) ;; on ins�re dans la BDF la variable r�pondue
    (mapcar #'(lambda (x) (setf *BDQ* (remove x *BDQ*))) (but_question (var_question question) *BDQ*))
    )
)

(defun choix_question (BDF);; pose la question en fonction des �l�ments contenus dans la BDF sachant que les questions pos�es sont en lien direct avec l'ordre des conditions des attractions
    (let ((result NIL) (longueur (+ (length BDF) 1)) (i 1)) ;;BDF prend toutes les valeurs que l'utilisateur rentre (longueur max 6)
    
    (dolist (element (conditions_attraction (symbol-value (car *RESULTATS*))));;RESULTATS contient toutes les attractions du parc et on enl�vera au fur et � mesure
       ;;on parcourt toutes les conditions de la premi�re attraction de RESULTATS
	 (if (= i longueur)
            (setq conclusion (car element)) ;;*FAITS* �tant la base de faits, elle inclue tous les �l�ments permettant de trouver ou non une attraction, sa longueur maximale est de 6
        ) ;;en fonction du nombre de valeur contenu dans *FAITS*, on va �tre capable de savoir quel est la prochaine valeur � d�terminer et donc quelle est la prochaine question � poser
        (setq i (+ i 1)))
    ;;(format t "conclusion choix_question : ~%~S" conclusion) ;;affichage de la valeur trouv�e par la fonction (par ex: Frontierland)
    (dolist (R *REGLES*)
        (if (eq (conclusion_regle (symbol-value R)) conclusion) ;; on regarde quelles sont les r�gles qui nous permettent d'avoir en conclusion la valeur trouv�e juste avant (ex : ici on va chercher toutes les r�gles menant � une conclusion de la valeur Frontierland)
            (setq result (caar (conditions_regle (symbol-value R)))) ;;on insert la pr�misse de la r�gle permettant d'avoir la conclusion qu'on souhaite (ex : ici, type_parc)
        )
    );;(format t "result choix_question : ~%~S" result) ;;affichage de la pr�misse trouv�e
    (car (but_question result *BDQ*)) ;;renvoie la question qui a pour conclusion la pr�misse de la r�gle
    )
)

;;------------------ATTRACTIONS------------------
(defun conditions_attraction (attraction) ;;permet d'extraire les crit�res\conditions associ�es � l'attraction pass� en argument
    (cadr (assoc 'conditions attraction))
)

(defun nom_attraction (attraction) ;;permet d'extraire le nom de l'attraction pass� en argument
    (cadr (assoc 'attraction attraction))
)

(defun description_attraction (attraction) ;;permet d'extraire la description associ�e � l'attraction pass� en argument
    (cadr (assoc 'description attraction))
)

(defun restriction_attraction (critere) ;;retourne la liste des attractions r�pondant au crit�re rentr� par l'utilisateur lors de la phase question
    (dolist (A *ATTRACTIONS*)
        (let ((conditions (conditions_attraction (symbol-value A))) (i 0)) ;; le compteur i permet de savoir si le critere est existant dans l'attraction A
            (dolist (element conditions) ;; nous traitons le crit�re de cette fa�on car certaines conditions contiennent plusieurs valeurs possibles (ex : age, taille)
                (if (member critere element)
                    (setq i (+ i 1)) ;; si la chaine de caractere correspondant au crit�re a �t� trouv� dans la section condition de l'attraction A, i passe � 1
                )
            )
        (if (eq i 0) (setf *RESULTATS* (remove A *RESULTATS*))) ;; on supprime les r�sultats d�sormais impossible � obtenir apr�s le choix de l'utilisateur, r�duisant le champs des possibilit�s
        )
    )
    *RESULTATS*
)

(defun resultat ();;permet de stopper la boucle de moteur
  (if (not *RESULTATS*) 'T1 ;;quand il n'y a aucune attraction donc pas de r�sultat possible on renvoie T1
    (if (= (length *RESULTATS*) 1) 'T2 ;;si il nous reste plus qu'une attraction, on renvoie T2 car �a ne sert � rien de continuer
      (if (or (not *BDQ*) (= (length (conditions_attraction (symbol-value(car *RESULTATS*)))) (length *FAITS*))) 'T3 NIL) ;;si il y a plus de questions ou la longueur des conditions de l'attraction est �gale � la longueur de la liste faits (donc 6 max), dans ce cas on renvoie T3 la condition d'arr�t
    )
  )
)

(defun verification (reponse);;regarde les redirections des questions car il va regarder la conclusion d'une r�gle et voir si celle-ci correspond au pr�misse d'une autre r�gle
  (let ((question NIL)) ;;ex : si on r�pond neutre � la question li�e au parc (car nous ne connaissons pas assez Disneyland ou qu'on a pas r�ellement d'avis sur la question) 
  (dolist (Q *BDQ*) ;; la r�gle activ�e va donner en conclusion type_film, ce qui va enclencher les questions qui ont pour pr�misses type_film (qui est une autre mani�re d'attribu� un parc � l'utilisateur)
    (if (member reponse (assoc 'reponse (symbol-value Q))) ;; m�me sc�nario pour la question et les r�gles aime_vitesse
        (setq question Q)
      )
    )question ;; retourne la question qui doit �tre pos�e en cons�quence 
  )
)

;;---------------------------------------------MOTEUR---------------------------------------------
(defun moteur ()
    (setq *FAITS* NIL)
    (setf *RESULTATS* (copy-list *ATTRACTIONS*)) ;;nous copions le contenu et non l'adresse du contenu car si on supprime une attraction �a supprime dans la base ATTRACTIONS aussi et on veut pas 
    (setf *BDQ* (copy-list *QUESTIONS*))

    (while (not (resultat)) ;; tant que la fonction (resultat) renvoie nil, on continue la boucle
        (reader_question (symbol-value (choix_question *FAITS*)));;on pose une question
        (activation_regle (car *FAITS*));;la valeur r�pondue � la question va servir de premisse � la fonction activation_regle 
        (if (verification (car *FAITS*)) ;;si la question est de type redirection, on relance une nouvelle question
            (progn (reader_question (symbol-value (verification (car *FAITS*))))
                (activation_regle (car *FAITS*))
            )
        )
        (restriction_attraction (car *FAITS*)) ;; on ressert l'�tendu des r�sultats possibles apr�s la question
    )
    (cond ((eq (resultat) 'T1) ;;en fonction de la valeur de la fonction resultat, on affiche l'un des messages suivants
           (format t "~% D�sol�, nous n'avons pas r�ussi � trouver l'attraction qui vous convient... ~%")
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







