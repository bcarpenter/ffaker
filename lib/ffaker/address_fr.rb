# encoding: utf-8

require 'ffaker/address'

module Faker
  module AddressFR
    include Faker::Address

    extend ModuleUtils
    extend self

    def street_address
      Faker.numerify(NUM.rand) +
      MOD.rand +
      SEP.rand +
      TYPE.rand + ' ' +
      Faker::NameFR.name
    end

    def postal_code
      Faker.numerify POSTAL_CODE_FORMATS.rand
    end

    def city
      CITY.rand
    end

    def full_address
      %Q{#{street_address}#{SEP.rand}#{postal_code} #{CITY.rand}}
    end

    NUM = k ['#', '##', '##', '###', '####', '#-##']
    MOD = k [' B', ' T', ' Q', ' BIS', ' TER', ' QUATER', '', '', '', '']
    SEP = k [', ', ' ']
    TYPE = k %w[rue avenue av boulevard bd impasse]
    POSTAL_CODE_FORMATS = k ['####', '#####', '97####', '2A###', '2B###']

    CITY = k ["Paris", "Marseille", "Lyon", "Toulouse", "Nice", "Nantes", "Strasbourg", "Montpellier",
    "Bordeaux", "Lille", "Rennes", "Reims", "Le Havre", "Saint-Étienne", "Toulon", "Grenoble",
    "Dijon", "Angers", "Villeurbanne", "Saint-Denis", "Le Mans", "Nîmes", "Aix-en-Provence",
    "Brest", "Clermont-Ferrand", "Limoges", "Tours", "Amiens", "Metz", "Perpignan", "Besançon",
    "Boulogne-Billancourt", "Orléans", "Rouen", "Mulhouse", "Caen", "Saint-Denis", "Nancy",
    "Saint-Paul", "Argenteuil", "Montreuil", "Roubaix", "Dunkerque12", "Tourcoing", "Créteil",
    "Avignon", "Nanterre", "Poitiers", "Courbevoie", "Fort-de-France", "Versailles",
    "Vitry-sur-Seine", "Colombes", "Asnières-sur-Seine", "Aulnay-sous-Bois", "Pau",
    "Rueil-Malmaison", "Saint-Pierre", "Aubervilliers", "Champigny-sur-Marne", "La Rochelle",
    "Saint-Maur-des-Fossés", "Antibes", "Calais", "Le Tampon", "Cannes", "Béziers", "Colmar",
    "Saint-Nazaire", "Drancy", "Bourges", "Mérignac", "Ajaccio", "Issy-les-Moulineaux",
    "Levallois-Perret", "Villeneuve-d'Ascq", "Quimper", "Valence", "Noisy-le-Grand",
    "La Seyne-sur-Mer", "Antony", "Neuilly-sur-Seine", "Troyes", "Vénissieux", "Clichy",
    "Sarcelles", "Les Abymes", "Pessac", "Ivry-sur-Seine", "Chambéry", "Niort", "Lorient",
    "Cergy", "Montauban", "Saint-Quentin", "Cayenne", "Villejuif", "Beauvais", "Hyères",
    "Épinay-sur-Seine", "Pantin", "Cholet", "Saint-André", "Bondy", "Fontenay-sous-Bois",
    "Maisons-Alfort", "Chelles", "La Roche-sur-Yon", "Arles", "Clamart", "Vannes", "Évry",
    "Saint-Louis", "Fréjus", "Le Blanc-Mesnil", "Sartrouville", "Narbonne", "Grasse", "Laval",
    "Meaux", "Évreux", "Annecy", "Belfort", "Sevran", "Charleville-Mézières", "Brive-la-Gaillarde",
    "Albi", "Montrouge", "Vincennes", "Martigues", "Bobigny", "Carcassonne", "Saint-Ouen",
    "Cagnes-sur-Mer", "Suresnes", "Blois", "Aubagne", "Saint-Malo", "Saint-Brieuc", "Châteauroux",
    "Châlons-en-Champagne", "Meudon", "Chalon-sur-Saône", "Bayonne", "Puteaux", "Alfortville",
    "Valenciennes", "Saint-Herblain", "Salon-de-Provence", "Corbeil-Essonnes", "Boulogne-sur-Mer",
    "Tarbes", "Bastia", "Mantes-la-Jolie", "Sète", "Istres", "Le Cannet", "Castres", "Massy",
    "Douai", "Saint-Priest", "Livry-Gargan", "Angoulême", "Arras", "Wattrelos", "Vaulx-en-Velin",
    "Gennevilliers", "Caluire-et-Cuire", "Alès", "Rosny-sous-Bois", "Thionville", "Choisy-le-Roi",
    "Talence", "Compiègne", "Saint-Germain-en-Laye", "Bourg-en-Bresse", "Garges-lès-Gonesse",
    "Gap", "Noisy-le-Sec", "Melun", "Le Lamentin", "Gagny", "Marcq-en-Barœul", "Chartres", "Bron",
    "Cherbourg-Octeville", "Rezé", "Le Port", "Montluçon", "Saint-Laurent-du-Maroni", "Bagneux",
    "Anglet", "La Courneuve", "Poissy", "Saint-Martin", "Savigny-sur-Orge", "Roanne", "Nevers",
    "Draguignan", "Auxerre", "Saint-Martin-d'Hères", "Joué-lès-Tours", "Saint-Joseph", "Saint-Chamond",
    "Échirolles", "Villepinte", "Pontault-Combault", "Conflans-Sainte-Honorine",
    "Villefranche-sur-Saône", "Montélimar", "Colomiers", "Saint-Benoît", "Lens", "Vitrolles",
    "Six-Fours-les-Plages", "Tremblay-en-France", "Marignane", "Haguenau", "Sainte-Geneviève-des-Bois",
    "Mâcon", "Agen", "Thonon-les-Bains", "Bagnolet", "La Ciotat", "Stains", "Saint-Raphaël", "Creil",
    "Romans-sur-Isère", "Neuilly-sur-Marne", "Montigny-le-Bretonneux", "Franconville", "Épinal",
    "Châtillon", "Cambrai", "Le Perreux-sur-Marne", "Châtellerault", "Villeneuve-Saint-Georges",
    "Annemasse", "Châtenay-Malabry", "Viry-Châtillon", "Dieppe", "Liévin", "Nogent-sur-Marne",
    "Houilles", "Mont-de-Marsan", "Maubeuge", "Dreux", "Goussainville", "Malakoff",
    "Vandœuvre-lès-Nancy", "Saint-Leu", "Plaisir", "Schiltigheim", "Les Mureaux", "Athis-Mons",
    "La Possession", "Palaiseau", "Meyzieu", "Baie-Mahault", "L'Haÿ-les-Roses", "Chatou"]
  end
end
