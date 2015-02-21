def new_vegas_specials
    options = []
    total = 40
    (1..10).each do |s|
        (1..10).each do |p|
            (1..10).each do |e|
                (1..10).each do |c|
                    next if s + p + e + c + 30 < 40
                    break if s + p + e + c + 3 > 40
                    (1..10).each do |i|
                        next if s + p + e + c + i + 20 < 40
                        break if s + p + e + c + i + 2 > 40
                        (1..10).each do |a|
                            next if s + p + e + c + i + a + 10 < 40
                            break if s + p + e + c + i + a + 1 > 40
                            (1..10).each do |l|
                                if s + p + e + c + i + a + l == 40
                                    string = "#{s} #{p} #{e} #{c} #{i} #{a} #{l}"
                                    options.append string
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    return options
end

GAMES = {
    dark_souls: {
        title: 'Dark Souls',
        background: 'darksouls.jpg',
        columns: {
            left_hand_weapon: {
                help: 'If you get a special weapon, use a weapon of the same class until you acquire it',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Axe,
                    :Greataxe,
                    :Hammer,
                    :'Great Hammer',
                    :Spear,
                    :Halberd,
                    :Bow,
                    :Crossbow,
                    :'Straight Sword',
                    :Greatsword,
                    :'Ultra Greatsword',
                    :'Curved Sword',
                    :'Curved Greatsword',
                    :'Thrusting Sword',
                    :Katana,
                    :Dagger,
                    :Gauntlet,
                    :Whip,
                    :'Fists',
                    :'Skull Lantern',
                    :Catalyst,
                    :Talisman,
                    :'Pyromancy Flame',
                    :'Small Shield',
                    :'Medium Shield',
                    :Greatshield,
                    :'Broken straight sword',
                    :'Gargoyle Tail Axe',
                    :'Golem Axe',
                    :'Black Knight Greataxe',
                    :'Blacksmith Giant Hammer',
                    :'Demon\'s Great Hammer',
                    :'Dragon Tooth',
                    :'Smough\'s Hammer',
                    :'Demon\'s Spear',
                    :'Dragonslayer Spear',
                    :'Moonlight Butterfly Horn',
                    :'Silver Knight Spear',
                    :'Lifehunt Scythe',
                    :'Giant\'s Halberd',
                    :'Black Knight Halberd',
                    :'Gough\'s Greatbow',
                    :'Darkmoon Bow',
                    :'Dragonslayer Greatbow',
                    :'Avelyn',
                    :'Astora’s Straight Sword',
                    :'Drake Sword',
                    :'Darksword',
                    :'Sunlight Straight Sword',
                    :'Abyss Greatsword',
                    :'Great Lord Greatsword',
                    :'Greatsword of Artorias',
                    :'Man-Serpent Greatsword',
                    :'Black Knight Greatsword',
                    :'Demon Great Machete',
                    :'Quelaag\'s Furysword',
                    :'Gravelord Sword',
                    :'Velka\'s Rapier',
                    :'Priscilla\'s Dagger'
                ]
            },
            right_hand_weapon: {
                help: 'If your primary weapon is two handed, skip this',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Axe,
                    :Greataxe,
                    :Hammer,
                    :'Great Hammer',
                    :Spear,
                    :Halberd,
                    :Bow,
                    :Crossbow,
                    :'Straight Sword',
                    :Greatsword,
                    :'Ultra Greatsword',
                    :'Curved Sword',
                    :'Curved Greatsword',
                    :'Thrusting Sword',
                    :Katana,
                    :Dagger,
                    :Gauntlet,
                    :Whip,
                    :'Fists',
                    :'Skull Lantern',
                    :Catalyst,
                    :Talisman,
                    :'Pyromancy Flame',
                    :'Small Shield',
                    :'Medium Shield',
                    :Greatshield,
                    :'Broken straight sword',
                    :'Gargoyle Tail Axe',
                    :'Golem Axe',
                    :'Black Knight Greataxe',
                    :'Blacksmith Giant Hammer',
                    :'Demon\'s Great Hammer',
                    :'Dragon Tooth',
                    :'Smough\'s Hammer',
                    :'Demon\'s Spear',
                    :'Dragonslayer Spear',
                    :'Moonlight Butterfly Horn',
                    :'Silver Knight Spear',
                    :'Lifehunt Scythe',
                    :'Giant\'s Halberd',
                    :'Black Knight Halberd',
                    :'Gough\'s Greatbow',
                    :'Darkmoon Bow',
                    :'Dragonslayer Greatbow',
                    :'Avelyn',
                    :'Astora’s Straight Sword',
                    :'Drake Sword',
                    :'Darksword',
                    :'Sunlight Straight Sword',
                    :'Abyss Greatsword',
                    :'Great Lord Greatsword',
                    :'Greatsword of Artorias',
                    :'Man-Serpent Greatsword',
                    :'Black Knight Greatsword',
                    :'Demon Great Machete',
                    :'Quelaag\'s Furysword',
                    :'Gravelord Sword',
                    :'Velka\'s Rapier',
                    :'Priscilla\'s Dagger'
                ]
            },
            rings: {
                help: 'Do not equip any other rings, except those required to advance through the story',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Bellowing Dragoncrest Ring',
                    :'Bloodbite Ring',
                    :'Blue Tearstone Ring',
                    :'Calamity Ring ',
                    :'Your Convenant Ring',
                    :'Cloranthy Ring',
                    :'Covetous Gold Serpent Ring',
                    :'Covetous Silver Serpent Ring',
                    :'Cursebite Ring',
                    :'Darkmoon Seance Ring',
                    :'Dark Wood Grain Ring',
                    :'Dusk Crown Ring',
                    :'East Wood Grain Ring',
                    :'Flame Stoneplate Ring',
                    :'Havel\'s Ring',
                    :'Hawk Ring',
                    :'Hornet Ring',
                    :'Leo Ring',
                    :'Lingering Dragoncrest Ring',
                    :'Old Witch\'s Ring',
                    :'Orange Charred Ring',
                    :'Poisonbite Ring ',
                    :'Rare Ring of Sacrifice',
                    :'Red Tearstone Rin',
                    :'Ring of Favor and Protection',
                    :'Ring of Sacrifice',
                    :'Ring of Steel Protectio',
                    :'Ring of the Evil Eye',
                    :'Ring of the Sun\'s Firstborn',
                    :'Rusted Iron Ring',
                    :'Slumbering Dragoncrest Ring',
                    :'Speckled Stoneplate Ring',
                    :'Spell Stoneplate Ring',
                    :'Thunder Stoneplate Ring',
                    :'White Seance Ring',
                    :'Wolf Ring'
                ]
            },
            weapon_upgrade_path: {
                help: 'Ignore this if you are assigned a special weapon',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Normal,
                    :Lightning,
                    :Crystal,
                    :Divine,
                    :Occult,
                    :Magic,
                    :Enchanted,
                    :Fire,
                    :Chaos
                ]
            },
            armour_set: {
                help: 'Do not exceed your assigned set\'s weight before acquiring it. This does not apply for non-specific sets.',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Whenever you find a new piece of armor, you must equip it.',
                    :'Use only the first armour you find for each slot',
                    :'Your starting armour',
                    :'Light armour',
                    :'Medium armour',
                    :'Heavy armour',
                    :'Antiquated Set',
                    :'Big Hat\'s Set',
                    :'Black Set',
                    :'Black Sorcerer Set',
                    :'Chain Set',
                    :'Chester\'s Set',
                    :'Crimson Set',
                    :'Dingy Set',
                    :'Gold-Hemmed Black Set',
                    :'Great Lord Set',
                    :'Hollow Soldier Set',
                    :'Hollow Thief\'s Set',
                    :'Hollow Warrior Set',
                    :'Lord\'s Blade',
                    :'Maiden Set',
                    :'Moonlight Set',
                    :'Painting Guardian Set',
                    :'Shadow Set',
                    :'Witch Set',
                    :'Xanthous Set',
                    :'Adventurer\'s Set',
                    :'Balder Set',
                    :'Black Knight Set',
                    :'Brass Set',
                    :'Catarina Set',
                    :'Channeler\'s Set',
                    :'Cleric Set',
                    :'Crystalline Set',
                    :'Dark Set',
                    :'Eastern Set',
                    :'Elite Knight Set',
                    :'Favor Set',
                    :'Gough\'s Set',
                    :'Iron Set',
                    :'Ornstein\'s Set',
                    :'Paladin Set',
                    :'Set of Artorias',
                    :'Silver Knight Set',
                    :'Steel Set',
                    :'Thorns Set',
                    :'Black Iron Set',
                    :'Giant Set',
                    :'Golem Set',
                    :'Guardian Set',
                    :'Havel\'s Set',
                    :'Smough\'s Set',
                    :'Stone Set',
                    :'No armour'
                ]
            },
            challenge: {
                chance_of_multiple: 15,
                min: 1,
                max: 5,
                options: [
                    :"Don't level up",
                    :"Don't level past 10",
                    :"Don't level past 11",
                    :"Don't level past 20",
                    :"Don't level past 30",
                    :"Don't level past 40",
                    :"Don't level past 43",
                    :"Don't level past 50",
                    :"Don't level past 60",
                    :'Be human at all times, if you cannot regain your humanity without leaving the bonfire. Game Over.',
                    :'Kill all killable NPCs upon meeting them, unless required to complete quest challenge',
                    :'Complete Anastacia, Guardian of the Firelink Shrine\'s quest chain',
                    :'Complete Big Hat Logan\'s quest chain',
                    :'Complete Dusk of Oolacile\'s quest chain',
                    :'Complete Knight Laurtrec of Carim\'s quest chain',
                    :'Complete Laurentius of the Great Swamp\'s quest chain',
                    :'Complete Patches the Hyena\'s quest chain',
                    :'Complete Petrus of Thorolund\'s quest chain',
                    :'Complete Quelaana the Witch of Iizalith\'s quest chain',
                    :'Complete Siegmeyer of Catarina\'s quest chain',
                    :'Complete Solaire of Astoria\'s quest chain',
                    :'Complete all NPC quest chains',
                    :'Kill all bosses',
                    :'If you die, game over (except mandatory deaths)',
                    :'Don\'t recover your souls or humanity',
                    :'Never use estus',
                    :'Do not use estus until you have at least 10 uses available',
                    :'Never use more than one estus before recharging',
                    :'Never use more than two estus before recharging',
                    :'Never use estus during a boss fight',
                    :'Only use Estus during boss fights',
                    :'Reach the max rank in your assigned covenant',
                    :'Do not teleport between bonfires',
                    :'Only use bonfires when you die',
                    :'Torso armour only',
                    :'Head armour only',
                    :'Foot armour only',
                    :'Gauntlet armour only',
                    :'Only use one ring',
                    :'No rings',
                    :'No farming for humanity',
                    :'Pick two stats, only level those stats',
                    :'Only level vitality',
                    :'Only level endurance',
                    :'Only level strength',
                    :'Only level dexterity',
                    :'Only level resistance',
                    :'Only level intelligence',
                    :'Only level faith',
                    :'Only level attunement',
                    :'No summoning phantoms for assistance',
                    :'Complete the game without resting at a bonfire',
                    :'No HUD',
                    :'Do not upgrade your weapon',
                    :'Do not upgrade your weapon past +1',
                    :'Do not upgrade your weapon past +5',
                    :'Collect every piece of armour in the game',
                    :'Collect every weapon in the game',
                    :'You cannot beat a boss until you have helped someone else beat it first',
                    :'Only level your lowest stat',
                    :'Find out what the pendant does',
                    :'Ignite no bonfires',
                    :'Level no stat past 15',
                    :'Do not level vitality past 15',
                    :'Do not level endurance past 15',
                    :'Do not level strength past 15',
                    :'Do not level dexterity past 15',
                    :'Do not level resistance past 15',
                    :'Do not level faith past 15',
                    :'Do not level attunement past 15',
                    :'Level no stat past 30',
                    :'Do not level vitality past 30',
                    :'Do not level endurance past 30',
                    :'Do not level strength past 30',
                    :'Do not level dexterity past 30',
                    :'Do not level resistance past 30',
                    :'Do not level faith past 30',
                    :'Do not level attunement past 30',
                    :'Level no stat past 60',
                    :'Do not level vitality past 60',
                    :'Do not level endurance past 60',
                    :'Do not level strength past 60',
                    :'Do not level dexterity past 60',
                    :'Do not level resistance past 60',
                    :'Do not level faith past 60',
                    :'Do not level attunement past 60',
                    :'Keep your stats below the requirement for your assigned weapons (unless you start above it)',
                    :'No rolling',
                    :"Replace your assigned armour set's helmet with a mimic chest helmet",
                    :"Replace your assigned armour set's helmet with a boar head helmet",
                    :'Keep 10000 liquid souls at all times, only spend souls above that level',
                    :'Keep 50000 liquid souls at all times, only spend souls above that level',
                    :'Keep 100000 liquid souls at all times, only spend souls above that level',
                    :'Kick only',
                    :'Only level up 5 times per area. This does not roll over, once you advance you lose your chance',
                    :'Only level up once per area. This does not roll over, once you advance you lose your chance',
                    :'Defeat someone in pvp before advancing past each area',
                    :'Skip all optional areas',
                    :'Skip all optional bosses',
                    :'Beat each boss in under 2 minutes, if you exceed that timer you must leave and try again',
                    :'You have five attempts on each boss, if you run out and the boss is not optional for advancement, game over',
                    :'You have one attempt on each boss, if you fail and the boss is not optional for advancement, game over',
                    :'You have two attempts on each boss, if you run out and the boss is not optional for advancement, game over'
                ]
            },
            primary_convenant: {
                help: 'This is your primary convenant. You can swap, but only to complete challenges. You must swap back as soon as possible.',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Blade of the Darkmoon',
                    :'Chaos Servant',
                    :'Darkwraith',
                    :'Forest Hunter',
                    :'Gravelord Servant',
                    :'Path of the Dragon',
                    :'Princess\'s Guard',
                    :'Warrior of Sunlight',
                    :'Way of White',
                ]
            },
            starting_class: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Warrior',
                    :'Knight',
                    :'Wanderer',
                    :'Thief',
                    :'Bandit',
                    :'Hunter',
                    :'Sorcerer',
                    :'Pyromancer',
                    :'Cleric',
                    :'Deprived'
                ]
            },
            starting_gift: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'None',
                    :'Goddess\'s Blessing',
                    :'Black Firebomb',
                    :'Twin Humanities',
                    :'Binoculars',
                    :'Pendant',
                    :'Master Key',
                    :'Tiny Being\'s Ring',
                    :'Old Witch\'s Ring'
                ]
            }
        }
    },
    europa_universalis_IV: {
        title: 'Europa Universalis IV',
        background: 'eu4.jpg',
        columns: {
            tech_group: {
                sub_trees: [
                    :western_country, :western_goals, :ottoman_country, :ottoman_goals, :muslim_country, :muslim_goals,
                    :indian_country, :indian_goals, :eastern_country, :eastern_goals, :chinese_country,
                    :chinese_goals, :nomad_country, :nomad_goals, :sub_saharan_country, :sub_saharan_goals,
                    :north_american_country, :north_american_goals, :meso_american_country, :meso_american_goals,
                    :andean_country, :andean_goals, :south_american_country, :south_american_goals, :aachen_goals, :alsace_goals, :anhalt_goals, :ansbach_goals, :aragon_goals, :armagnac_goals, :augsburg_goals, :austria_goals, :auvergne_goals, :baden_goals, :bavaria_goals, :bohemia_goals, :bourbonnais_goals, :brandenburg_goals, :bremen_goals, :brittany_goals, :brunswick_goals, :burgundy_goals, :castile_goals, :cleves_goals, :cologne_goals, :connact_goals, :denmark_goals, :east_frisia_goals, :england_goals, :ferrara_goals, :foix_goals, :france_goals, :frankfurt_goals, :friesland_goals, :gelre_goals, :genoa_goals, :hesse_goals, :holstein_goals, :leinster_goals, :liege_goals, :livonian_order_goals, :lorraine_goals, :lüneburg_goals, :magdeburg_goals, :mainz_goals, :mantua_goals, :milan_goals, :mecklenburg_goals, :modena_goals, :münster_goals, :munster_goals, :naples_goals, :navarra_goals, :norway_goals, :oldenburg_goals, :orleans_goals, :the_palatinate_goals, :the_papal_state_goals, :pomerania_goals, :portugal_goals, :provence_goals, :riga_goals, :salzburg_goals, :savoy_goals, :saxe_lauenburg_goals, :saxony_goals, :scotland_goals, :siena_goals, :silesia_goals, :sweden_goals, :switzerland_goals,    :the_teutonic_order_goals, :the_hansa_goals, :the_knights_goals, :thuringia_goals, :trier_goals, :tuscany_goals, :tyrone_goals, :ulm_goals, :urbino_goals, :utrecht_goals, :venice_goals, :wurzburg_goals, :wurttemberg_goals, 
                    :albania_goals, :athens_goals, :bosnia_goals, :byzantium_goals, :corfu_goals, :cyprus_goals, :georgia_goals, :hungary_goals, :lithuania_goals, :mazovia_goals, :moldavia_goals, :muscovy_goals, :naxos_goals, :novgorod_goals, :perm_goals, :poland_goals, :pskov_goals, :ragusa_goals, :ryazan_goals, :serbia_goals, :trebizond_goals, :tver_goals, :wallachia_goals, :yaroslavl_goals,
                    :candar_goals, :dulkadir_goals, :karaman_goals, :the_ottomans_goals, :ramazan_goals,
                    :adal_goals, :algiers_goals, :alodia_goals, :baluchistan_goals, :djerid_goals, :ethiopia_goals, :fezzan_goals, :gazikumukh_goals, :granada_goals, :haasa_goals, :hedjaz_goals, :kaffa_goals, :makuria_goals, :marehan_goals, :the_mamluks_goals, :medri_bahri_goals, :morocco_goals, :mzab_goals, :najd_goals, :oman_goals, :shammar_goals, :shirvan_goals, :tabarestan_goals, :tlemcen_goals, :touggourt_goals, :tripoli_goals, :tunisia_goals, :warsangali_goals, :yemen_goals,
                    :assam_goals, :ajuuraan_goals, :bagelkhand_goals, :baglana_goals, :bahmanis_goals, :bastar_goals, :bengal_goals, :bundelkhand_goals, :ceylon_goals, :chanda_goals, :delhi_goals, :dhundhar_goals, :garjat_goals, :garhwal_goals, :gondwana_goals, :gujarat_goals, :gwalior_goals, :hadoti_goals, :jaffna_goals, :jaisalmer_goals, :jangladesh_goals, :jaunpur_goals, :jharkhand_goals, :kachar_goals, :kangra_goals, :kashmir_goals, :kathiawar_goals, :khandesh_goals, :kilwa_goals, :koch_goals, :kochin_goals, :ladakh_goals, :madurai_goals, :malabar_goals, :malindi_goals, :malwa_goals, :manipur_goals, :marwar_goals, :mewar_goals, :mewat_goals, :mogadishu_goals, :mombasa_goals, :multan_goals, :mutapa_goals, :mysore_goals, :nagaur_goals, :nepal_goals, :orissa_goals, :pate_goals, :rewa_kantha_goals, :sadiya_goals, :sind_goals, :sofala_goals, :tirhut_goals, :tripura_goals, :venad_goals, :vijayanagar_goals,
                    :ainu_goals, :arakan_goals, :aceh_goals, :ava_goals, :ayutthaya_goals, :brunei_goals, :buryatia_goals, :buton_goals, :champa_goals, :chavchuveny_goals, :chukchi_goals, :dai_viet_goals, :date_goals, :guge_goals, :hatakeyama_goals, :hosokawa_goals, :hsenwi_goals, :imagawa_goals, :japan_goals, :kamchadals_goals, :kedah_goals, :kham_goals, :khmer_goals, :khodynt_goals, :korea_goals, :kutai_goals, :lan_na_goals, :lan_xang_goals, :ligor_goals, :luwu_goals, :majapahit_goals, :makassar_goals, :malacca_goals, :ming_goals, :mong_yang_goals, :otomo_goals, :ouchi_goals, :pagarruyung_goals, :pasai_goals, :pegu_goals, :perak_goals, :ryukyu_goals, :shan_goals, :shiba_goals, :shimazu_goals, :siak_goals, :sukhothai_goals, :sunda_goals, :takeda_goals, :taungu_goals, :ternate_goals, :tidore_goals, :uesugi_goals, :utsang_goals, :yamana_goals, :yarkand_goals,
                    :aq_qoyunlu_goals, :chagatai_goals, :crimea_goals, :golden_horde_goals, :haixi_goals, :jianzhou_goals, :kara_del_goals, :kazan_goals, :korchin_goals, :manchu_goals, :mongolia_goals, :nogai_goals, :oirat_goals, :qara_qoyunlu_goals, :sarig_yogir_goals, :timurids_goals, :uzbek_goals, :yeren,
                    :air_goals, :benin_goals, :bonoman_goals, :dagbon_goals, :dahomey_goals, :jolof_goals, :jenné_goals, :kanem_bornu_goals, :kano_goals, :katsina_goals, :kong_goals, :kongo_goals, :loango_goals, :macina_goals, :mali_goals, :mossi_goals, :ndongo_goals, :nupe_goals, :oyo_goals, :songhai_goals, :timbuktu_goals, :yao_goals, :zazzau_goals,
                    :abenaki_goals, :apache_goals, :arapaho_goals, :assiniboine_goals, :blackfoot_goals, :caddo_goals, :cherokee_goals, :cheyenne_goals, :choctaw_goals, :chickasaw_goals, :chinook_goals, :comanche_goals, :cree_goals, :creek_goals, :fox_goals, :haida_goals, :huron_goals, :iroquois_goals, :illiniwek_goals, :kiowa_goals, :lenape_goals, :mahican_goals, :miami_goals, :mikmaq_goals, :navajo_goals, :ojibwe_goals, :osage_goals, :ottawa_goals, :pawnee_goals, :pequot_goals, :pima_goals, :potawatomi_goals, :powhatan_goals, :pueblo_goals, :salish_goals, :shawnee_goals, :shoshone_goals, :sioux_goals, :susquehannock_goals, :wichita_goals,
                    :aztec_goals, :colima_goals, :cocomes_goals, :itza_goals, :kiche_goals, :mixtec_goals, :tarascan_goals, :tlapanec_goals, :tlaxcala_goals, :totonac_goals, :xiu_goals, :zapotec_goals,
                    :cajamarca, :calchaqui, :chachapoya, :charca, :chimu, :colla, :cusco, :huyla, :inca, :muisca, :quito, :pacajes, :wanka,
                    :arawak_goals, :charrua_goals, :guarani_goals, :mapuche_goals, :potiguara_goals, :tupinamba_goals, :tupiniquim_goals, :tapuia_goals
                ],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        western_country: {
                            sub_trees: [
                                :aachen_goals, :alsace_goals, :anhalt_goals, :ansbach_goals, :aragon_goals, 
                                :armagnac_goals, :augsburg_goals, :austria_goals, :auvergne_goals, :baden_goals,
                                :bavaria_goals, :bohemia_goals, :bourbonnais_goals, :brandenburg_goals, :bremen_goals,
                                :brittany_goals, :brunswick_goals, :burgundy_goals, :castile_goals, :cleves_goals,
                                :cologne_goals, :connact_goals, :denmark_goals, :east_frisia_goals, :england_goals,
                                :ferrara_goals, :foix_goals, :france_goals, :frankfurt_goals, :friesland_goals, :gelre_goals,
                                :genoa_goals, :hesse_goals, :holstein_goals, :leinster_goals, :liege_goals,
                                :livonian_order_goals, :lorraine_goals, :lüneburg_goals, :magdeburg_goals, :mainz_goals,
                                :mantua_goals, :milan_goals, :mecklenburg_goals, :modena_goals, :münster_goals, :munster_goals,
                                :naples_goals, :navarra_goals, :norway_goals, :oldenburg_goals, :orleans_goals,
                                :the_palatinate_goals, :the_papal_state_goals, :pomerania_goals, :portugal_goals,
                                :provence_goals, :riga_goals, :salzburg_goals, :savoy_goals, :saxe_lauenburg_goals,
                                :saxony_goals, :scotland_goals, :siena_goals, :silesia_goals, :sweden_goals, :switzerland_goals, 
                                :the_teutonic_order_goals, :the_hansa_goals, :the_knights_goals, :thuringia_goals, :trier_goals,
                                :tuscany_goals, :tyrone_goals, :ulm_goals, :urbino_goals, :utrecht_goals, :venice_goals,
                                :wurzburg_goals, :wurttemberg_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                {
                                    :'Aachen' => {
                                        title: 'Aachen Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Alsace' => {
                                        title: 'Alsace Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Anhalt' => {
                                        title: 'Anhalt Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Ansbach' => {
                                        title: 'Ansbach Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Aragon' => {
                                        title: 'Aragon Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Spain',
                                            :'Conquer Castile'
                                        ]
                                    }
                                },
                                {
                                    :'Armagnac' => {
                                        title: 'Armagnac Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer France'
                                        ]
                                    }
                                },
                                {
                                    :'Augsburg' => {
                                        title: 'Augsburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Austria' => {
                                        title: 'Austria Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Regain your title as Emperor of the Holy Roman Empire having lost it to another prince',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Unite the House of Habsburg'
                                        ]
                                    }
                                },
                                {
                                    :'Auvergne' => {
                                        title: 'Auvergne Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer France',
                                        ]
                                    }
                                },
                                {
                                    :'Baden' => {
                                        title: 'Baden Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Bavaria' => {
                                        title: 'Bavaria Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Bohemia' => {
                                        title: 'Bohemia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            [
                                                :'Side with Rome',
                                                :'Side with the Hussites'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Bourbonnais' => {
                                        title: 'Bourbonnais Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer and replace France'
                                        ]
                                    }
                                },
                                {
                                    :'Brandenburg' => {
                                        title: 'Brandenburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            [
                                                :'Renovatio Imperii - Unite the HRE into one nation',
                                                :'Form Prussia',
                                                :'Form Germany'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Bremen' => {
                                        title: 'Bremen Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Brittany' => {
                                        title: 'Brittany Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer France',
                                            :'Conquer England'
                                        ]
                                    }
                                },
                                {
                                    :'Brunswick' => {
                                        title: 'Brunswick Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Burgundy' => {
                                        title: 'Burgundy Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form the Netherlands'
                                        ]
                                    }
                                },
                                {
                                    :'Castile' => {
                                        title: 'Castile Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Discover the Americas first',
                                            [
                                                :'Form Spain Diplomatically',
                                                :'Form Spain Militarily'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Cleves' => {
                                        title: 'Cleves Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Cologne' => {
                                        title: 'Cologne Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Connacht' => {
                                        title: 'Connact Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Ireland',
                                            :'Conquer the British Isles'
                                        ]
                                    }
                                },
                                {
                                    :'Denmark' => {
                                        title: 'Denmark Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Scandinavia'
                                        ]
                                    }
                                },
                                {
                                    :'East Frisia' => {
                                        title: 'East Frisia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Form Germany'
                                        ]
                                    }
                                },
                                {
                                    :'England' => {
                                        title: 'England Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form the United Kingdom',
                                            :'Own Paris',
                                            :'Win the Hundred Years War',
                                            :'Conquer all provinces of the historical British Empire',
                                            [
                                                :'Side with the Yorkists in the War of the Roses and win',
                                                :'Side with the Lancastrians in the War of the Roses and win'
                                            ],
                                            [
                                                :'Side with the Royalists in the English Civil War and win',
                                                :'Side with the Republicans in the English Civil War and win'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Ferrara' => {
                                        title: 'Ferrara Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Foix' => {
                                        title: 'Foix Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer France',
                                            :'Conquer Aragon',
                                        ]
                                    }
                                },
                                {
                                    :'France' => {
                                        title: 'France Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Obtain all French Cores',
                                            :'Win the Hundred Years War',
                                        ]
                                    }
                                },
                                {
                                    :'Frankfurt' => {
                                        title: 'Frankfurt Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Friesland' => {
                                        title: 'Friesland Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Gelre' => {
                                        title: 'Gelre Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Genoa' => {
                                        title: 'Genoa Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Hesse' => {
                                        title: 'Hesse Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Convert the Holy Roman Empire to the Hessian culture'
                                        ]
                                    }
                                },
                                {
                                    :'Holstein' => {
                                        title: 'Holstein Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Denmark'
                                        ]
                                    }
                                },
                                {
                                    :'Leinster' => {
                                        title: 'Leinster Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Ireland',
                                            :'Conquer the British Isles'
                                        ]
                                    }
                                },
                                {
                                    :'Liege' => {
                                        title: 'Liege Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Burgundy'
                                        ]
                                    }
                                },
                                {
                                    :'Livonian Order' => {
                                        title: 'Livonian Order Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Kurland'
                                        ]
                                    }
                                },
                                {
                                    :'Lorraine' => {
                                        title: 'Lorraine Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Provence'
                                        ]
                                    }
                                },
                                {
                                    :'Lüneburg' => {
                                        title: 'Lüneburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Brunswick'
                                        ]
                                    }
                                },
                                {
                                    :'Magdeburg' => {
                                        title: 'Magdeburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Mainz' => {
                                        title: 'Mainz Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Mantua' => {
                                        title: 'Mantua Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer all of Italy'
                                        ]
                                    }
                                },
                                {
                                    :'Milan' => {
                                        title: 'Milan Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Form Italy'
                                        ]
                                    }
                                },
                                {
                                    :'Mecklenburg' => {
                                        title: 'Mecklenburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Modena' => {
                                        title: 'Modena Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Ferrara',
                                            :'Conquer all of Italy'
                                        ]
                                    }
                                },
                                {
                                    :'Münster' => {
                                        title: 'Münster Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                :'Naples',
                                {
                                    :'Navarra' => {
                                        title: 'Navarra Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Spain',
                                            :'Convert the Iberian peninsula to Basque',
                                            :'Conquer Aragon',
                                            :'Conquer Castille'
                                        ]
                                    }
                                },
                                {
                                    :'Norway' => {
                                        title: 'Norway Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Scandinavia'
                                        ]
                                    }
                                },
                                {
                                    :'Oldenburg' => {
                                        title: 'Oldenburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                :'Orleans',
                                {
                                    :'The Palatinate' => {
                                        title: 'The Palatinate Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer France',
                                            [
                                                :'Renovatio Imperii - Unite the HRE into one nation',
                                                :'Form Germany',
                                                :'Form Westphalia'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'The Papal State' => {
                                        title: 'The Papal State Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Declare The Kingdom of God'
                                        ]
                                    }
                                },
                                {
                                    :'Pomerania' => {
                                        title: 'Pomerania Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            [
                                                :'Renovatio Imperii - Unite the HRE into one nation',
                                                :'Form Prussia'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Portugal' => {
                                        title: 'Portugal Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Have a colony in Brazil and Africa',
                                            :'Form Spain'
                                        ]
                                    }
                                },
                                :'Provence',
                                {
                                    :'Provence' => {
                                        title: 'Provence Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer France',
                                            [
                                                :'Help France win the Hundred Years war',
                                                :'Sabotage the Hundred Years war to help England win'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Riga' => {
                                        title: 'Riga Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Kurland'
                                        ]
                                    }
                                },
                                {
                                    :'Salzburg' => {
                                        title: 'Salzburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Savoy' => {
                                        title: 'Savoy Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            [
                                                :'Renovatio Imperii - Unite the HRE into one nation',
                                                :'Form Italy',
                                                :'Form Sardinia-Piedmont'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Saxe Lauenburg' => {
                                        title: 'Saxe Lauenburg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Saxony' => {
                                        title: 'Saxony Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Scotland' => {
                                        title: 'Scotland Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form the United Kingdom',
                                            :'Help France with the Hundred Years War',
                                            :'Reverse the Auld Alliance - Vassalise France'
                                        ]
                                    }
                                },
                                {
                                    :'Siena' => {
                                        title: 'Siena Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            [
                                                :'Renovatio Imperii - Unite the HRE into one nation',
                                                :'Form Italy'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Silesia' => {
                                        title: 'Silesia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Bohemia'
                                        ]
                                    }
                                },
                                {
                                    :'Sweden' => {
                                        title: 'Sweden Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Scandinavia',
                                            :'Own the entire Baltic coastline'
                                        ]
                                    }
                                },
                                {
                                    :'Switzerland' => {
                                        title: 'Switzerland Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Burgundy',
                                            :'Conquer France',
                                            :'Conquer Italy',
                                            :'Conquer Germany'
                                        ]
                                    }
                                },
                                {
                                    :'The Teutonic Order' => {
                                        title: 'The Teutonic Order Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Prussia'
                                        ]
                                    }
                                },
                                {
                                    :'The Hansa' => {
                                        title: 'The Hansa Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                :'The Knights',
                                {
                                    :'Thuringia' => {
                                        title: 'Thuringia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Conquer Saxony'
                                        ]
                                    }
                                },
                                {
                                    :'Trier' => {
                                        title: 'Trier Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Tuscany' => {
                                        title: 'Tuscany Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Form Italy'
                                        ]
                                    }
                                },
                                {
                                    :'Tyrone' => {
                                        title: 'Tyrone Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Ireland',
                                            :'Conquer the British Isles'
                                        ]
                                    }
                                },
                                {
                                    :'Ulm' => {
                                        title: 'Ulm Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                :'Urbino',
                                {
                                    :'Utrecht' => {
                                        title: 'Utrecht Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                                {
                                    :'Venice' => {
                                        title: 'Venice Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE',
                                            :'Form Italy',
                                            :'Have a 90% trade share in both the Alexandria and Constantinople nodes, owning less than 10 cities.'
                                        ]
                                    }
                                },
                                :Wurzburg,
                                {
                                    :'Wurttemberg' => {
                                        title: 'Wurttemberg Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become Emperor of the Holy Roman Empire',
                                            :'Become an Elector of the Holy Roman Empire',
                                            :'Renovatio Imperii - Unite the HRE into one nation',
                                            :'Put a Protestant Emperor on the throne of the HRE'
                                        ]
                                    }
                                },
                            ]
                        }
                    },
                    {
                        eastern_country: {
                            sub_trees: [
                                :albania_goals, :athens_goals, :bosnia_goals, :byzantium_goals, :corfu_goals, :cyprus_goals, :georgia_goals, :hungary_goals, :lithuania_goals, :mazovia_goals, :moldavia_goals, :muscovy_goals, :naxos_goals, :novgorod_goals, :perm_goals, :poland_goals, :pskov_goals, :ragusa_goals, :ryazan_goals, :serbia_goals, :trebizond_goals, :tver_goals, :wallachia_goals, :yaroslavl_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                {
                                    :'Albania' => {
                                        title: 'Albania Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Iberia and Causcasus',
                                            :'Win the initial war with the Ottomans',
                                            :'Conquer the Ottomans',
                                            :'Conquer Serbia'
                                        ]
                                    }
                                },
                                {
                                    :'Athens' => {
                                        title: 'Athens Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :"Conquer all provinces that the Byzantine Empire historically controlled"
                                        ]
                                    }
                                },
                                {
                                    :'Bosnia' => {
                                        title: 'Bosnia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :"Become Emperor of the Holy Roman Empire"
                                        ]
                                    }
                                },
                                {
                                    :'Byzantium' => {
                                        title: 'Byzantium Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :"Reconquer your historical provinces: This can be done by starting as another nation and Restoring the Byzantine Empire",
                                            :'Reestablish the Theme System: This can be done by starting as another nation and Restoring the Byzantine Empire'
                                        ]
                                    }
                                },
                                {
                                    :'Corfu' => {
                                        title: 'Corfu Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :"Conquer Venice"
                                        ]
                                    }
                                },
                                :'Cyprus',
                                :'Georgia',
                                :'Hungary',
                                {
                                    :'Lithuania' => {
                                        title: 'Lithuania Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form the Commonwealth'
                                        ]
                                    }
                                },
                                {
                                    :'Mazovia' => {
                                        title: 'Mazovia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Conquer Poland'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Moldavia' => {
                                        title: 'Moldavia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Form Romania',
                                                :'Form Romania and conquer all of the Balkans'
                                            ]
                                        ]
                                    }
                                },
                                {
                                    :'Naxos' => {
                                        title: 'Novgorod Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Venice'
                                        ]
                                    }
                                },
                                {
                                    :'Novgorod' => {
                                        title: 'Novgorod Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Russia'
                                        ]
                                    }
                                },
                                {
                                    :'Muscovy' => {
                                        title: 'Muscovy Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Russia'
                                        ]
                                    }
                                },
                                :'Perm',
                                {
                                    :'Poland' => {
                                        title: 'Poland Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Become an absolutist monarchy, abolishing the Sejm.',
                                            :'Form the Commonwealth'
                                        ]
                                    }
                                },
                                {
                                    :'Pskov' => {
                                        title: 'Pskov Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Muscovy'
                                        ]
                                    }
                                },
                                {
                                    :'Ragusa' => {
                                        title: 'Ragusa Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Italy',
                                            :'Conquer The Balkans'
                                        ]
                                    }
                                },
                                :'Ryazan',
                                {
                                    :'Serbia' => {
                                        title: 'Serbia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Italy',
                                            :'Become the Emperor of the Holy Roman Empire'
                                        ]
                                    }
                                },
                                :'Trebizond',
                                {
                                    :'Theodoro' => {
                                        title: 'Theodoro Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Conquer all Germanic culture provinces in Europe'
                                            ]
                                        ]
                                    }
                                },
                                :'Tver',
                                {
                                    :'Wallachia' => {
                                        title: 'Wallachia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                        [
                                            :'Form Romania',
                                            :'Form Romania and conquer all of the Balkans'
                                        ]
                                        ]
                                    }
                                },
                                :'Yaroslavl' 
                            ]
                        },
                        eastern_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ]
                            ]
                        }
                    },
                    {
                        ottoman_country: {
                            sub_trees: [
                                :candar_goals, :dulkadir_goals, :karaman_goals, :the_ottomans_goals, :ramazan_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Candar',
                                :'Dulkadir',
                                :'Karaman',
                                {
                                    :'The Ottomans' => {
                                        title: 'The Ottomans Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Own Rome, Moscow and Istanbul'
                                            ],
                                            :'Take Constantinople'
                                        ]
                                    }
                                },
                                :'Ramazan',
                            ]
                        },
                        ottoman_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ]
                            ]
                        }
                    },
                    {
                        muslim_country: {
                            sub_trees: [
                                :adal_goals, :algiers_goals, :alodia_goals, :baluchistan_goals, :djerid_goals, :ethiopia_goals, :fezzan_goals, :gazikumukh_goals, :granada_goals, :haasa_goals, :hedjaz_goals, :kaffa_goals, :makuria_goals, :marehan_goals, :the_mamluks_goals, :medri_bahri_goals, :morocco_goals, :mzab_goals, :najd_goals, :oman_goals, :shammar_goals, :shirvan_goals, :tabarestan_goals, :tlemcen_goals, :touggourt_goals, :tripoli_goals, :tunisia_goals, :warsangali_goals, :yemen_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Adal',
                                :'Algiers',
                                :'Alodia',
                                {
                                    :'Baluchistan' => {
                                        title: 'Baluchistan Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Persia'
                                        ]
                                    }
                                },
                                :'Djerid',
                                {
                                    :'Ethiopia' => {
                                        title: 'Ethiopia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Own Alexandria, Antioch and Constantinople',
                                            :'Conquer all of Africa',
                                            :'Conquer Rome and Constantinople'
                                        ]
                                    }
                                },
                                :'Fezzan',
                                :'Gazikumukh',
                                {
                                    :'Granada' => {
                                        title: 'Granada Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Spain',
                                            :'Reconquer all of Iberia'
                                        ]
                                    }
                                },
                                :'Haasa',
                                :'Hedjaz',
                                :'Kaffa',
                                :'Makuria',
                                :'Marehan',
                                {
                                    :'The Mamluks' => {
                                        title: 'The Mamluks Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Form Arabia',
                                                :'Form Eygpt'
                                            ],
                                            :'Conquer the Ottomans'
                                        ]
                                    }
                                },
                                :'Medri Bahri',
                                :'Morocco',
                                :'Mzab',
                                {
                                    :'Najd' => {
                                        title: 'Najd Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Arabia'
                                        ]
                                    }
                                },
                                :'Oman',
                                :'Shammar',
                                :'Shirvan',
                                {
                                    :'Tabarestan' => {
                                        title: 'Tabarestan Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Persia'
                                        ]
                                    }
                                },
                                :'Tlemcen',
                                :'Touggourt',
                                :'Tripoli',
                                {
                                    :'Tunisia' => {
                                        title: 'Tunisia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Own Sicily, Sardinia, the Balearic Islands, the coast of Algiers and the southern coast of Spain'
                                        ]
                                    }
                                },
                                :'Warsangali',
                                :'Yemen'
                            ]
                        },
                        muslim_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology',
                                ],
                                :'Reverse the Reconquista - Retake Iberia',
                                :'Conquer Europe',
                                :'Unite all Muslim provinces under one Muslim sect'
                            ]
                        }
                    },
                    {
                        indian_country: {
                            sub_trees: [
                                :assam_goals, :ajuuraan_goals, :bagelkhand_goals, :baglana_goals, :bahmanis_goals, :bastar_goals, :bengal_goals, :bundelkhand_goals, :ceylon_goals, :chanda_goals, :delhi_goals, :dhundhar_goals, :garjat_goals, :garhwal_goals, :gondwana_goals, :gujarat_goals, :gwalior_goals, :hadoti_goals, :jaffna_goals, :jaisalmer_goals, :jangladesh_goals, :jaunpur_goals, :jharkhand_goals, :kachar_goals, :kangra_goals, :kashmir_goals, :kathiawar_goals, :khandesh_goals, :kilwa_goals, :koch_goals, :kochin_goals, :ladakh_goals, :madurai_goals, :malabar_goals, :malindi_goals, :malwa_goals, :manipur_goals, :marwar_goals, :mewar_goals, :mewat_goals, :mogadishu_goals, :mombasa_goals, :multan_goals, :mutapa_goals, :mysore_goals, :nagaur_goals, :nepal_goals, :orissa_goals, :pate_goals, :rewa_kantha_goals, :sadiya_goals, :sind_goals, :sofala_goals, :tirhut_goals, :tripura_goals, :venad_goals, :vijayanagar_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Assam',
                                :'Ajuuraan',
                                :'Bagelkhand',
                                :'Baglana',
                                {
                                    :'Bahmanis' => {
                                        title: 'Bahmanis Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Hindustan'
                                        ]
                                    }
                                },
                                :'Bastar',
                                {
                                    :'Bengal' => {
                                        title: 'Bengal Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Own Samarkand as a core province'
                                        ]
                                    }
                                },
                                :'Bundelkhand',
                                :'Ceylon',
                                :'Chanda',
                                {
                                    :'Delhi' => {
                                        title: 'Delhi Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Form Hindustan',
                                                :'Form Hindustan and own Cape, London, Hong Kong and Ottawa'
                                            ]
                                        ]
                                    }
                                },
                                :'Dhundhar',
                                :'Garjat',
                                :'Garhwal',
                                :'Gondwana',
                                {
                                    :'Gujarat' => {
                                        title: 'Gujarat Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Hindustan'
                                        ]
                                    }
                                },
                                :'Gwalior',
                                :'Hadoti',
                                :'Jaffna',
                                :'Jaisalmer',
                                :'Jangladesh',
                                :'Jaunpur',
                                :'Jharkhand',
                                :'Kachar',
                                :'Kangra',
                                {
                                    :'Kashmir' => {
                                        title: 'Kashmir Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Form Hindustan',
                                                :'Form Hindustan and own Cape, London, Hong Kong and Ottawa'
                                            ]
                                        ]
                                    }
                                },
                                :'Kathiawar',
                                :'Khandesh',
                                :'Kilwa',
                                :'Koch',
                                :'Kochin',
                                :'Ladakh',
                                :'Madurai',
                                :'Malabar',
                                :'Malindi',
                                :'Malwa',
                                :'Manipur',
                                :'Marwar',
                                :'Mewar',
                                :'Mewat',
                                :'Mogadishu',
                                :'Mombasa',
                                :'Multan',
                                :'Mutapa',
                                :'Mysore',
                                :'Nagaur',
                                :'Nepal',
                                :'Orissa',
                                :'Pate',
                                :'Rewa Kantha',
                                :'Sadiya',
                                :'Sind',
                                :'Sofala',
                                :'Tirhut',
                                :'Tripura',
                                :'Venad',
                                :'Vijayanagar'
                            ]
                        },
                        indian_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Conquer all of India',
                                :'Convert Europe to an Indian Religion'
                            ]
                        }
                    },
                    {
                        chinese_country: {
                            sub_trees: [
                                :ainu_goals, :arakan_goals, :aceh_goals, :ava_goals, :ayutthaya_goals, :brunei_goals, :buryatia_goals, :buton_goals, :champa_goals, :chavchuveny_goals, :chukchi_goals, :dai_viet_goals, :date_goals, :guge_goals, :hatakeyama_goals, :hosokawa_goals, :hsenwi_goals, :imagawa_goals, :japan_goals, :kamchadals_goals, :kedah_goals, :kham_goals, :khmer_goals, :khodynt_goals, :korea_goals, :kutai_goals, :lan_na_goals, :lan_xang_goals, :ligor_goals, :luwu_goals, :majapahit_goals, :makassar_goals, :malacca_goals, :ming_goals, :mong_yang_goals, :otomo_goals, :ouchi_goals, :pagarruyung_goals, :pasai_goals, :pegu_goals, :perak_goals, :ryukyu_goals, :shan_goals, :shiba_goals, :shimazu_goals, :siak_goals, :sukhothai_goals, :sunda_goals, :takeda_goals, :taungu_goals, :ternate_goals, :tidore_goals, :uesugi_goals, :utsang_goals, :yamana_goals, :yarkand_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Ainu',
                                :'Arakan',
                                {
                                    :'Aceh' => {
                                        title: 'Aceh Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Malaya'
                                        ]
                                    }
                                },
                                :'Ava',
                                :'Ayutthaya',
                                {
                                    :'Brunei' => {
                                        title: 'Brunei Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Malaya'
                                        ]
                                    }
                                },
                                :'Buryatia',
                                :'Buton',
                                :'Champa',
                                :'Chavchuveny',
                                :'Chukchi',
                                {
                                    :'Dai Viet' => {
                                        title: 'Dai Viet Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer all of the Vietnam peninsula'
                                        ]
                                    }
                                },
                                {
                                    :'Date' => {
                                        title: 'Date Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Guge',
                                {
                                    :'Hatakeyama' => {
                                        title: 'Hatakeyama Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                {
                                    :'Hosokawa' => {
                                        title: 'Hosokawa Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Hsenwi',
                                {
                                    :'Imagawa' => {
                                        title: 'Imagawa Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                {
                                    :'Japan' => {
                                        title: 'Japan Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Kamchadals',
                                :'Kedah',
                                :'Kham',
                                :'Khmer',
                                :'Khodynt',
                                {
                                    :'Korea' => {
                                        title: 'Korea Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Japan',
                                            :'Conquer Ming'
                                        ]
                                    }
                                },
                                :'Kutai',
                                :'Lan Na',
                                {
                                    :'Lan Xang' => {
                                        title: 'Lan Xang Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer all of the Vietnam peninsula'
                                        ]
                                    }
                                },
                                :'Ligor',
                                :'Luwu',
                                {
                                    :'Majapahit' => {
                                        title: 'Majapahit Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Malaya',
                                            :'Colonize Australia'
                                        ]
                                    }
                                },
                                {
                                    :'Makassar' => {
                                        title: 'Makassar Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Malaya'
                                        ]
                                    }
                                },
                                {
                                    :'Malacca' => {
                                        title: 'Malacca Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Malaya'
                                        ]
                                    }
                                },
                                {
                                    :'Ming' => {
                                        title: 'Ming Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            [
                                                :'Convert to Catholicism',
                                                :'Prevent Jesuit entry, keep the state religion as Confucianism'
                                            ],
                                            :'Repair the Great Wall',
                                            :'Construct the Forbidden Palace',
                                            :'Conquer all of Asia'
                                        ]
                                    }
                                },
                                :'Mong Yang',
                                {
                                    :'Otomo' => {
                                        title: 'Otomo Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                {
                                    :'Ouchi' => {
                                        title: 'Ouchi Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Pagarruyung',
                                :'Pasai',
                                :'Pegu',
                                :'Perak',
                                {
                                    :'Ryukyu' => {
                                        title: 'Ryukyu Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer the World',
                                            :'Conquer Japan',
                                            :'Conquer Ming'
                                        ]
                                    }
                                },
                                :'Shan',
                                {
                                    :'Shiba' => {
                                        title: 'Shiba Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                {
                                    :'Shimazu' => {
                                        title: 'Shimazu Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Siak',
                                :'Sukhothai',
                                {
                                    :'Sunda' => {
                                        title: 'Sunda Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Annex Majapahit'
                                        ]
                                    }
                                },
                                {
                                    :'Takeda' => {
                                        title: 'Takeda Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                {
                                    :'Taungu' => {
                                        title: 'Taungu Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Vassalize Shan'
                                        ]
                                    }
                                },
                                :'Ternate',
                                :'Tidore',
                                {
                                    :'Uesugi' => {
                                        title: 'Uesugi Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Utsang',
                                {
                                    :'Yamana' => {
                                        title: 'Yamana Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Unite Japan'
                                        ]
                                    }
                                },
                                :'Yarkand'
                            ]
                        },
                        chinese_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Conquer all of Asia'
                            ]
                        }
                    },
                    {
                        nomad_country: {
                            sub_trees: [
                                :aq_qoyunlu_goals, :chagatai_goals, :crimea_goals, :golden_horde_goals, :haixi_goals, :jianzhou_goals, :kara_del_goals, :kazan_goals, :korchin_goals, :manchu_goals, :mongolia_goals, :nogai_goals, :oirat_goals, :qara_qoyunlu_goals, :sarig_yogir_goals, :timurids_goals, :uzbek_goals, :yeren
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Aq Qoyunlu',
                                :'Chagatai',
                                {
                                    :'Crimea' => {
                                        title: 'Crimea Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer russia'
                                        ]
                                    }
                                },
                                {
                                    :'Golden Horde' => {
                                        title: 'Golden Horde Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer or vassalize the Chinese, Russian and Persian regions',
                                            :'Reconquer all provinces that were conquered by the historical Mongol Empire'
                                        ]
                                    }
                                },
                                {
                                    :'Haixi' => {
                                        title: 'Haixi Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Manchu'
                                        ]
                                    }
                                },
                                {
                                    :'Jianzhou' => {
                                        title: 'Jianzhou Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Manchu'
                                        ]
                                    }
                                },
                                :'Kara Del',
                                :'Kazan',
                                :'Korchin',
                                :'Manchu',
                                {
                                    :'Mongolia' => {
                                        title: 'Mongolia Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Oirat',
                                            :'Conquer or vassalize the Chinese, Russian and Persian regions',
                                            :'Reconquer all provinces that were conquered by the historical Mongol Empire'
                                        ]
                                    }
                                },
                                :'Nogai',
                                :'Oirat',
                                :'Qara Qoyunlu',
                                :'Sarig Yogir',
                                {
                                    :'Timurids' => {
                                        title: 'Timurids Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Mughals'
                                        ]
                                    }
                                },
                                {
                                    :'Uzbek' => {
                                        title: 'Uzbek Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Bukhara'
                                        ]
                                    }
                                },
                                {
                                    :'Yeren' => {
                                        title: 'Yeren Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Form Manchu'
                                        ]
                                    }
                                }
                            ]
                        },
                        nomad_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ]
                            ]
                        }
                    },
                    {
                        :sub_saharan_country => {
                            sub_trees: [
                                :air_goals, :benin_goals, :bonoman_goals, :dagbon_goals, :dahomey_goals, :jolof_goals, :jenné_goals, :kanem_bornu_goals, :kano_goals, :katsina_goals, :kong_goals, :kongo_goals, :loango_goals, :macina_goals, :mali_goals, :mossi_goals, :ndongo_goals, :nupe_goals, :oyo_goals, :songhai_goals, :timbuktu_goals, :yao_goals, :zazzau_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                {
                                    :'Air' => {
                                        title: 'Air Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Songhai'
                                        ]
                                    }
                                },
                                :'Benin',
                                :'Bonoman',
                                :'Dagbon',
                                :'Dahomey',
                                :'Jolof',
                                :'Jenné',
                                :'Kanem Bornu',
                                :'Kano',
                                :'Katsina',
                                :'Kong',
                                :'Kongo',
                                :'Loango',
                                :'Macina',
                                :'Mali',
                                :'Mossi',
                                :'Ndongo',
                                :'Nupe',
                                :'Oyo',
                                {
                                    :'Songhai' => {
                                        title: 'Songhai Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Timbuktu'
                                        ]
                                    }
                                },
                                {
                                    :'Timbuktu' => {
                                        title: 'Timbuktu Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'Conquer Songhai'
                                        ]
                                    }
                                },
                                :'Yao',
                                :'Zazzau'
                            ]
                        },
                        :sub_saharan_goals => {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Own all provinces in Africa',
                                :'Reverse the Colonization - Conquer Europe',
                                :'Beat back the european colonists'
                            ]
                        }
                    },
                    {
                        north_american_country: {
                            sub_trees: [
                                :abenaki_goals, :apache_goals, :arapaho_goals, :assiniboine_goals, :blackfoot_goals, :caddo_goals, :cherokee_goals, :cheyenne_goals, :choctaw_goals, :chickasaw_goals, :chinook_goals, :comanche_goals, :cree_goals, :creek_goals, :fox_goals, :haida_goals, :huron_goals, :iroquois_goals, :illiniwek_goals, :kiowa_goals, :lenape_goals, :mahican_goals, :miami_goals, :mikmaq_goals, :navajo_goals, :ojibwe_goals, :osage_goals, :ottawa_goals, :pawnee_goals, :pequot_goals, :pima_goals, :potawatomi_goals, :powhatan_goals, :pueblo_goals, :salish_goals, :shawnee_goals, :shoshone_goals, :sioux_goals, :susquehannock_goals, :wichita_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Abenaki',
                                :'Apache',
                                :'Arapaho',
                                :'Assiniboine',
                                :'Blackfoot',
                                :'Caddo',
                                {
                                    :'Cherokee' => {
                                        title: 'Cherokee Goals',
                                        chance_of_multiple: 35,
                                        min: 1,
                                        max: 5,
                                        options: [
                                            :'No Trail of Tears - Colonize all the provinces marked as "thirteen colonies"'
                                        ]
                                    }
                                },
                                :'Cheyenne',
                                :'Choctaw',
                                :'Chickasaw',
                                :'Chinook',
                                :'Comanche',
                                :'Cree',
                                :'Creek',
                                :'Fox',
                                :'Haida',
                                :'Huron',
                                :'Iroquois',
                                :'Illiniwek',
                                :'Kiowa',
                                :'Lenape',
                                :'Mahican',
                                :'Miami',
                                :'Mikmaq',
                                :'Navajo',
                                :'Ojibwe',
                                :'Osage',
                                :'Ottawa',
                                :'Pawnee',
                                :'Pequot',
                                :'Pima',
                                :'Potawatomi',
                                :'Powhatan',
                                :'Pueblo',
                                :'Salish',
                                :'Shawnee',
                                :'Shoshone',
                                :'Sioux',
                                :'Susquehannock',
                                :'Wichita'
                            ]
                        },
                        north_american_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Reverse the Colonization - Conquer Europe',
                                :'Beat back the european colonists'
                            ]
                        }
                    },
                    {
                        :meso_american_country => {
                            sub_trees: [
                                :aztec_goals, :colima_goals, :cocomes_goals, :itza_goals, :kiche_goals, :mixtec_goals, :tarascan_goals, :tlapanec_goals, :tlaxcala_goals, :totonac_goals, :xiu_goals, :zapotec_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Aztec',
                                :'Colima',
                                :'Cocomes',
                                :'Itza',
                                :'Kiche',
                                :'Mixtec',
                                :'Tarascan',
                                :'Tlapanec',
                                :'Tlaxcala',
                                :'Totonac',
                                :'Xiu',
                                :'Zapotec'
                            ]
                        },
                        :meso_american_goals => {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Reverse the Colonization - Conquer Europe',
                                :'Beat back the european colonists'
                            ]
                        }
                    },
                    {
                        andean_country: {
                            sub_trees: [
                                :cajamarca, :calchaqui, :chachapoya, :charca, :chimu, :colla, :cusco, :huyla, :inca, :muisca, :quito, :pacajes, :wanka
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Cajamarca',
                                :'Calchaqui',
                                :'Chachapoya',
                                :'Charca',
                                :'Chimu',
                                :'Colla',
                                :'Cusco',
                                :'Huyla',
                                :'Inca',
                                :'Muisca',
                                :'Quito',
                                :'Pacajes',
                                :'Wanka'
                            ]
                        },
                        andean_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Form Inca',
                                :'Reverse the Colonization - Conquer Europe',
                                :'Beat back the european colonists'
                            ]
                        }
                    },
                    {
                        south_american_country: {
                            sub_trees: [
                                :arawak_goals, :charrua_goals, :guarani_goals, :mapuche_goals, :potiguara_goals, :tupinamba_goals, :tupiniquim_goals, :tapuia_goals
                            ],
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Arawak',
                                :'Charrua',
                                :'Guarani',
                                :'Mapuche',
                                :'Potiguara',
                                :'Tupinamba',
                                :'Tupiniquim',
                                :'Tapuia'
                            ]
                        },
                        south_american_goals: {
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                [
                                    :'Convert to Western Technology',
                                    :'Do not convert to Western Technology'
                                ],
                                :'Reverse the Colonization - Conquer Europe',
                                :'Beat back the european colonists'
                            ]
                        }
                    }
                ]
            },
            generic_goals: {
                help: 'These may be difficult for non-european powers',
                chance_of_multiple: 50,
                min: 1,
                max: 5,
                options: [
                    :'Have the largest army in the world',
                    :'Have the largest fleet in the world',
                    :'Form three colonial nation',
                    :'Form five colonial nation',
                    :"Become Defender of the Faith",
                    :'Complete a full game from 1444 to 1820',
                    :'Form four Trade Companies and get bonus merchants from all of them',
                    :'Have a Ruler with 1 or lower in all three categories who is over the age of 80',
                    :'Have a colony in Australia',
                    :'Help create Brazil',
                    :'Help create Canada',
                    :'Help create Chile',
                    :'Help create Colombia',
                    :'Help create Haiti',
                    :'Help create La Plata',
                    :'Help create Louisiana',
                    :'Help create Mexico',
                    :'Help create Paraguay',
                    :'Help create Peru',
                    :'Help create Quebec',
                    :'Help create the UPCA',
                    :'Help create the USA',
                    :'Help create Venezuela',
                    :'Accumulate 3000 gold',
                    :'Accumulate 10000 gold',
                    :'Join a coalition of more than 5 nations, and destroy the target',
                    :'Have a coalition of five or more nations form against you, and defeat them in a war',
                    :'Own 10 provinces which produce gold',
                    :'Own the entire Caribbean',
                    :'Win a war without fighting a single battle',
                    :'Have rebels you support in another country enforce their demands',
                    :'Own 100 or more provinces with no local autonomy or unrest',
                    :'Reach the maximum tech level in all technologies',
                    :'Conquer all three Georgias',
                    :'Discover the whole world',
                    :'Guarantee the Independence of France, The Ottoman Empire and Russia',
                    :'Be trade leader of seven different goods',
                    :'Own 1001 provinces directly',
                    :'Conquer Lisbon, Madrid, Paris, London, Amsterdam & Rome',
                    :'Conquer the world',
                    :'Own all provinces in the world producing Grain',
                    :'Own all provinces in the world producing Wine',
                    :'Own all provinces in the world producing Wool',
                    :'Own all provinces in the world producing Cloth',
                    :'Own all provinces in the world producing Fish',
                    :'Own all provinces in the world producing Fur',
                    :'Own all provinces in the world producing Salt',
                    :'Own all provinces in the world producing Naval supplies',
                    :'Own all provinces in the world producing Copper',
                    :'Own all provinces in the world producing Gold',
                    :'Own all provinces in the world producing Iron',
                    :'Own all provinces in the world producing Slaves',
                    :'Own all provinces in the world producing Ivory',
                    :'Own all provinces in the world producing Tea',
                    :'Own all provinces in the world producing Chinaware',
                    :'Own all provinces in the world producing Spices',
                    :'Own all provinces in the world producing Coffee',
                    :'Own all provinces in the world producing Cotton',
                    :'Own all provinces in the world producing Sugar',
                    :'Own all provinces in the world producing Tobacco',
                    :'Own all provinces in the world producing Silk',
                    :'Own all provinces in the world producing Tropical Wood',
                    :'Own all provinces in the world producing Dyes',
                    :'Own all provinces in the world producing Cocoa',
                    :'Conquer all of Africa',
                    :'Conquer all of Europe',
                    :'Conquer all of North America',
                    :'Conquer all of Asia',
                    :'Conquer all of South America',
                    :'Conquer all of the Americas',
                    :'Conquer all of Eurasia',
                    :'Conquer all of Australia',
                    :'Conquer all of Polynesia',
                    :'Conquer all of India',
                    :'Conquer all of Japan',
                    :'Conquer all of China',
                    :'Conquer all of the Arabian Peninsula',
                    :'Dismantle the Holy Roman Empire',
                    :'Own at least 150 provinces that all have the state religion',
                    :"Contain Europe - Prevent any european country from keeping its overseas colonies",
                    :"Conquer the Roman Empire's historical borders"
                ]
            },
            ironman_mode: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Yes,
                    :No
                ]
            }
        } 
    },  
    mass_effect: {
        title: 'Mass Effect',
        background: 'masseffect1.jpg',
        next_game: :mass_effect_2,
        columns: {
            background: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Spacer',
                    :'Colonist',
                    :'Earthborn'
                ]
            },
            psychological_profile: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'War Hero',
                    :'Sole Survivor',
                    :'Ruthless'
                ]
            },
            morality: {
                help: 'General reaction in conversations, does not overrule story options from below', 
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Paragon',
                    :'Renegade',
                    :'Balanced'
                ]
            },
            class: {
                sub_trees: [
                    :vanguard_specialization, :adept_specialization, :soldier_specialization,
                    :engineer_specialization, :sentinel_specialization, :infiltrator_specialization
                ],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        adept: {
                            title: 'Adept Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Bastion,
                                :Nemesis
                            ]
                        }
                    },
                    {
                        soldier: {
                            title: 'Soldier Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        engineer: {
                            title: 'Engineer Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Medic,
                                :Operative
                            ]
                        }
                    },
                    {
                        vanguard: {
                            title: 'Vanguard Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Nemesis,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        sentinel: {
                            title: 'Sentinel Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Medic,
                                :Bastion
                            ]
                        }
                    },
                    {
                        infiltrator: {
                            title: 'Infiltrator Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :Operative
                            ]
                        }
                    }
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            spoiler: true,
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Ashley,
                                :Liara,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            spoiler: true,
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Kaidan,
                                :Liara,
                                :None
                            ]
                        }
                    }
                ]
            },
            :"garrus's morality" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Push towards Paragon',
                    :'Push towards Renegade'
                ]
            },
            rachni_queen: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill',
                    :'Release'
                ]
            },
            bring_down_the_sky: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Balek go and save the hostages',
                    :'Kill Balek and let the hostages die'
                ]
            },
            wrex_on_virmire: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Talk Wrex down',
                    :'Kill Wrex'
                ]
            },
            virmire: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Ashley is left behind',
                    :'Kaidan is left behind'
                ]
            },
            the_council: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save them',
                    :'Let them die'
                ]
            },
            human_council_member: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Anderson,
                    :Udina
                ]
            }
        }
    },
    mass_effect_2: {
        title: 'Mass Effect 2',
        background: 'masseffect2.jpg',
        previous_game: :mass_effect,
        next_game: :mass_effect_3,
        columns: {
            morality: {
                help: 'General reaction in conversations, does not overrule story options from below',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Paragon',
                    :'Renegade',
                    :'Balanced'
                ]
            },
            class: {
                sub_trees: [
                    :vanguard_specialization, :adept_specialization, :soldier_specialization,
                    :engineer_specialization, :sentinel_specialization, :infiltrator_specialization
                ],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        adept: {
                            title: 'Adept Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Bastion,
                                :Nemesis
                            ]
                        }
                    },
                    {
                        soldier: {
                            title: 'Soldier Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        engineer: {
                            title: 'Engineer Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Mechanic,
                                :Demolisher
                            ]
                        }
                    },
                    {
                        vanguard: {
                            title: 'Vanguard Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Champion,
                                :Destroyer
                            ]
                        }
                    },
                    {
                        sentinel: {
                            title: 'Sentinel Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Guardian,
                                :Raider
                            ]
                        }
                    },
                    {
                        infiltrator: {
                            title: 'Infiltrator Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Agent,
                                :Assassin
                            ]
                        }
                    }
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            spoiler: true,
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Miranda,
                                :Tali,
                                :Jack,
                                :Kelly,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            spoiler: true,
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Jacob,
                                :Garrus,
                                :Thane,
                                :Kelly,
                                :None
                            ]
                        }
                    }
                ]
            },
            Veetor: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Send to the Migrant Fleet',
                    :'Send to Cerberus'
                ]
            },
            :"Mordin's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    [
                        :'Let Mordin shoot Maelon',
                        :'Save Maelon'
                    ],
                    [
                        :'Destroy the data',
                        :'Save the data'
                    ]
                ]
            },
            :"Jacob's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Leave his father',
                    :'Take his father into custody'
                ]
            },
            :"Miranda's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Don't tell her sister",
                    :'Tell her sister'
                ]
            },
            :"Jack's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Aresh go',
                    :'Kill Aresh'
                ]
            },
            :"Garrus's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Sidonis',
                    :"Don't kill Sidonis"
                ]
            },
            :"Samara's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Side with Samara',
                    :'Side with Morinth'
                ]
            },
            :"Tali's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Reveal the evidence",
                    :"Don't reveal the evidence",
                    :'Convince the Board to let Tali go free'
                ]
            },
            :"Legion's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Kill the traitors",
                    :"Brainwash the traitors"
                ]
            },
            :"Zaeed's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Chase Vido",
                    :"Let Vido go"
                ]
            },
            :"Kasumi's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Destroy the Greybox",
                    :"Keep the Greybox"
                ]
            },
            :"Project Overlord" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Save David",
                    :"Leave David with Gavin"
                ]
            },
            :"Jack vs. Miranda" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with Jack",
                    :"Side with Miranda",
                    :'Convince both'
                ]
            },
            :"Legion vs. Tali" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with Legion",
                    :"Side with Tali",
                    :'Convince both'
                ]
            },
            :"The Normandy's Crew" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Rush to help",
                    :"Rush to help",
                    :"Rush to help",
                    :"Don't rush to help"
                ]
            },
            :"Vent Specialist" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Garrus',
                    :'Grunt',
                    :'Jack',
                    :'Jacob',
                    :'Miranda',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"First Fire Team" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Grunt',
                    :'Jack',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Biotic Specialist" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Miranda',
                    :'Jacob',
                    :'Thane'
                ]
            },
            :"Second Fire Team" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Grunt',
                    :'Jack',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Escort" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Legion',
                    :'Grunt',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Final Battle Squad" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 2,
                max: 2,
                options: [
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Legion',
                    :'Grunt',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Collector Base" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Destroy it',
                    :'Give it to Cerberus'
                ]
            }
        }
    },
    mass_effect_3: {
        title: 'Mass Effect 3',
        background: 'masseffect3.jpg',
        previous_game: :mass_effect_2,
        columns: {
            morality: {
                help: 'General reaction in conversations, does not overrule story options from below',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Paragon,
                    :Renegade,
                    :Balanced
                ]
            },
            class: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Adept',
                    :'Soldier',
                    :'Engineer',
                    :'Sentinel',
                    :'Infiltrator',
                    :'Vanguard'
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            spoiler: true,
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'If Romanced in ME2, Miranda. Otherwise reroll',
                                :'If Romanced in ME2, Tali. Otherwise reroll',
                                :'If Romanced in ME2, Jack. Otherwise reroll',
                                :'If Romanced in ME2, Kelly. Otherwise reroll',
                                :Ashley,
                                :'Steve Cortez',
                                :Kaiden,
                                :Liara,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            spoiler: true,
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'If Romanced in ME2, Thane. Otherwise reroll',
                                :'If Romanced in ME2, Garrus. Otherwise reroll',
                                :'If Romanced in ME2, Kelly. Otherwise reroll',
                                :Samantha,
                                :Kaiden,
                                :Liara,
                                :None
                            ]
                        }
                    }
                ]
            },
            rachni_queen: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save the Rachni Queen',
                    :'Save the Krogan Squad'
                ]
            },
            samara: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Samara kill herself, kill Falere',
                    :'Let Samara kill herself, do not kill Falere',
                    :'Stop Samara from killing herself',
                    :'Stop Samara from killing herself'
                ]
            },
            :'Omega: The Reactor' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Slowly reroute the power',
                    :'Kill the power'
                ]
            },
            :'Omega: General Petrovsky' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Convince Aria to spare him',
                    :'Let Aria kill him'
                ]
            },
            the_genophage: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Cure the genophage',
                    :'Do not cure the genophage'
                ]
            },
            :'Quarians and the Geth' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Give the Geth True Intelligence',
                    :'Side with the Quarians',
                    :'If possible, negotiate a ceasefire. If not, reroll'
                ]
            },
            party_theme: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Quiet,
                    :Wild
                ]
            },
            ending: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Control,
                    :Synthesize,
                    :Destroy,
                    :Refuse
                ]
            }
        }
    },
    kerbalspaceprogram: {
        title: 'Kerbal Space Program',
        background: 'ksp.jpg',
        columns: {
            target_body: {
                sub_trees: [
                    :goal_for_kerbol,
                    :goal_for_moho,
                    :goal_for_eve,
                    :goal_for_gilly,
                    :goal_for_kerbin,
                    :goal_for_the_mun,
                    :goal_for_minmus,
                    :goal_for_duna,
                    :goal_for_ike,
                    :goal_for_dres,
                    :goal_for_jool,
                    :goal_for_laythe,
                    :goal_for_vall,
                    :goal_for_tylo,
                    :goal_for_bop,
                    :goal_for_pol,
                    :goal_for_eeloo,
                    :goal_for_an_asteroid
                ],
                chance_of_multiple: 5,
                min: 1,
                max: 8,
                options: [
                    {
                        :'Kerbol' => {
                            title: 'Goal For Kerbol',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Kerbol',
                                :'Construct a Space Station in orbit of Kerbol',
                                :"Enter Kerbol's sphere of influence",
                                :'Kill a Kerbal on the surface of the sun',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Moho' => {
                            title: 'Goal For Moho',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Multi-Part Ship on or above Moho',
                                :'Construct a Space Station in orbit',
                                :"Enter Moho's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Moho',
                                :'Visit and return',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Eve' => {
                            title: 'Goal For Eve',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Eve',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Multi-Part Ship on or above Eve',
                                :'Construct a Space Station in orbit',
                                :"Enter Eve's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Eve',
                                :'Visit and return',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Send a plane to Eve',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Gilly' => {
                            title: 'Goal For Gilly',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Space Station',
                                :"Enter Gilly's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Gilly',
                                :'Visit and return from Gilly',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Kerbin' => {
                            title: 'Goal For Kerbin',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Kerbin',
                                :'Put a satellite in orbit',
                                :'Send a capsule to the north pole',
                                :'Send a capsule to the south pole',
                                :'Land a plane on the island airstrip',
                                :'Discover an anomaly',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to the launchpad',
                                :'Construct a base at the north pole',
                                :'Send a rover to the north pole',
                                :'Construct a base at the south pole',
                                :'Send a rover to the south pole',
                                :"Leave Kerbin's sphere of influence"
                            ]
                        }
                    },
                    {
                        :'Mun' => {
                            title: 'Goal For The Mun',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Mun',
                                :'Discover an anomaly',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from the Mun with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Minmus' => {
                            title: 'Goal For Minmus',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve orbit with a jetpack',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Minmus',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from the Mun with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Duna' => {
                            title: 'Goal For Duna',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Duna',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Send a plane to Duna',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Duna',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Ike' => {
                            title: 'Goal For Ike',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Ike',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Dres' => {
                            title: 'Goal For Dres',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Dres',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Jool' => {
                            title: 'Goal For Jool',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Jool',
                                :'Put a satellite in orbit',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Laythe' => {
                            title: 'Goal For Laythe',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Send a capsule with a Kerbal to Laythe',
                                :'Land a plane on the island airstrip',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin',
                                :'Construct a base',
                                :'Land a boat on Laythe'
                            ]
                        }
                    },
                    {
                        :'Vall' => {
                            title: 'Goal For Vall',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Vall',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Vall with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Tylo' => {
                            title: 'Goal For Tylo',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Tylo',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Tylo with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Bop' => {
                            title: 'Goal For Bop',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Bop',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Bop with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Pol' => {
                            title: 'Goal For Pol',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Pol',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Pol with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Eeloo' => {
                            title: 'Goal For Eeloo',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Eeloo',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Eeloo with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Asteroid' => {
                            title: 'Goal For an Asteroid',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Perform a rendevous with an asteroid',
                                :'Land a capsule containing a Kerbal on an asteroid',
                                :'Land a rover on an asteroid',
                                :'Kill a Kerbal in style on an asteroid',
                                :'Perform a rendevous with an asteroid and return to Kerbin',
                                :'Crash an asteroid into a planet',
                                :'Bring an asteroid back to Kerbin',
                                :'Bring an asteroid back to Kerbin and put it in a stable orbit',
                                :'Bring an asteroid back to Kerbin and put it in a stable orbit, construct a space station around it',
                                :'Dock with an asteroid',
                                :'Destroy a building at the KSC using an asteroid'
                            ]
                        }
                    }
                ]
            }
        }
    },
    the_witcher: {
        spoiler: true,
        title: 'The Witcher',
        background: 'witcher.jpg',
        next_game: :the_witcher_2,
        columns: {
            triss_or_vesemir: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save Triss',
                    :'Fight the frightener'
                ]
            },
            the_escort: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Escort Vesna',
                    :"Don't escort Vesna"
                ]
            },
            racist_encounter: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Help Zoltan',
                    :"Don't help Zoltan"
                ]
            },
            arms: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Help the Scoia'tael",
                    :"Don't help the Scoia'tael",
                    :"Kill the Scoia'tael"
                ]
            },
            lesser_evil: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save Abigail',
                    :'Side with the Reverend'
                ]
            },
            seigfried: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Fight with Siegfried',
                    :'Fight alone'
                ]
            },
            force_recon: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with the Scoia'tael",
                    :'Side with the Order',
                    :'Remain Neutral'
                ]
            },
            guardian: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Leave Alvin with Shani',
                    :'Leave Alvin with Triss'
                ]
            },
            thaler: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Thaler',
                    :'Spare Thaler'
                ]
            },
            werewolf: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill him',
                    :'Save and cure him',
                    :"Save but don't cure him"
                ]
            },
            bank_robbery: {
                sub_trees: [    
                    :vodyenoi_conflict, :forgiveness, 
                    :"continue_with_the_scoia'tael?", :'continue_with_the_order?'
                ],
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        :"Side with the Scoia'tael" => {
                            title: 'Vodyenoi Conflict',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Vodyenoi',
                                :'Side with the village',
                                :'Reach a compromise'
                            ]
                        },
                        forgiveness: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill Berengar',
                                :'Spare Berengar'
                            ]
                        },
                        :"Continue with the Scoia'tael?" => {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :"Side with the Scoia'tael",
                                :'Stay Neutral'
                            ]
                        }
                    },
                    {
                        :'Side with the Order' => {
                            title: 'Vodyenoi Conflict',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Vodyenoi',
                                :'Side with the village',
                                :'Reach a compromise'
                            ]
                        },
                        forgiveness: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill Berengar',
                                :'Spare Berengar'
                            ]
                        },
                        :'Continue with the Order?' => {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Order',
                                :'Stay Neutral'
                            ]
                        }
                    }
                ]
            },
            striga: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Princess Adda',
                    :'Save Princess Adda'
                ]
            },
            king_of_the_wild_hunt: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Let the King of the Wild Hunt have Jacques de Aldersberg's Soul",
                    :"Do not let the King of the Wild Hunt have Jacques de Aldersberg's Soul"
                ]
            },
        }
    },
    the_witcher_2: {
        spoiler: true,
        title: 'The Witcher 2',
        background: 'witcher2.jpg',
        previous_game: :the_witcher,
        columns: {
            :"Aryan La Valette" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill him',
                    :'Convince him to stand down'
                ]
            },
            malena: {
                spoiler: true,
                chance_of_multiple: 0,
                max: 1,
                options: [
                    :'Accuse',
                    :'Accuse and Follow',
                    :'Side with her'
                ]
            },
            iorveth_sword: {
                title: "Iorveth's Sword",
                spoiler: true,
                chance_of_multiple: 0,
                max: 1,
                options: [
                    :'Give him his sword',
                    :'Punch him in the throat'
                ]
            },
            roche_or_iorveth: {
                spoiler: true,
                sub_trees: [:hensalt, :stennis, :hero_or_avenger, :triss_or_temeria, :saskia_or_triss],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        roche: {
                            spoiler: true,
                            title: 'Hensalt',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill him',
                                :'Spare his life'
                            ]
                        },
                        triss_or_temeria: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Triss',
                                :'Temeria'
                            ]
                        }
                    },
                    {
                        iorveth: {
                            title: 'Stennis',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill him',
                                :'Spare his life'
                            ]
                        },
                        hero_or_avenger: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Go after Loredo',
                                :'Save the Elven women'
                            ]
                        },
                        saskia_or_triss: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Saskia',
                                :'Triss'
                            ]
                        }
                    }
                ]
            },
            the_flawed_diamond: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Remove the diamond',
                    :'Leave the diamond'
                ]
            }
        }
    },
    civilization_v: {
        title: 'Civilization V',
        background: 'civ5.jpg',
        columns: {
            civilization: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'America',
                    :'Arabia',
                    :'Assyria',
                    :'Austria',
                    :'Aztecs',
                    :'Babylon',
                    :'Brazil',
                    :'Byzantium',
                    :'Carthage',
                    :'Celts',
                    :'China',
                    :'Denmark',
                    :'Egypt',
                    :'England',
                    :'Ethiopia',
                    :'France',
                    :'Germany',
                    :'Greece',
                    :'Huns',
                    :'Inca',
                    :'India',
                    :'Indonesia',
                    :'Iroquois',
                    :'Japan',
                    :'Korea',
                    :'Maya',
                    :'Mongolia',
                    :'Morocco',
                    :'Netherlands',
                    :'Ottomans',
                    :'Persia',
                    :'Poland',
                    :'Polynesia ',
                    :'Portugal',
                    :'Rome',
                    :'Russia',
                    :'Shoshone',
                    :'Siam',
                    :'Songhai',
                    :'Spain',
                    :'Sweden',
                    :'Venice',
                    :'Zulus'
                ]
            },
            victory_type: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Domination',
                    :'Science',
                    :'Cultural',
                    :'Diplomatic'
                ]
            },
            ideology: {
                help: 'The ideology you must initially pick and attempt to spread. Only swap if absolutely necessary',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Freedom',
                    :'Autocracy',
                    :'Order'
                ]
            },
            personality: {
                help: 'The overall way you act towards your fellow civilizations',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Hostile',
                    :'Friendly',
                    :'Deceptive',
                    :'Cautious',
                    :'Neutral',
                    :'Warmonger',
                    :'Friendly to trade partners',
                    :'Friendly to those who share your religion',
                    :'Friendly to those of your ideology'
                ]
            },
            required_policy_trees: {
                help: 'Minimum required policy trees, you do not have to go for them immediately. But you do eventually have to complete them',
                chance_of_multiple: 33,
                min: 1,
                max: 3,
                options: [
                    :'Liberty',
                    :'Tradition',
                    :'Honor',
                    :'Piety',
                    :'Patronage',
                    :'Commerce',
                    :'Rationalism'
                ]
            },
            religion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Buddism',
                    :'Catholicism',
                    :'Confucianism',
                    :'Eastern Orthodoxy',
                    :'Hinduism ',
                    :'Islam',
                    :'Judaism',
                    :'Protestantism',
                    :'Shinto',
                    :'Sikhism',
                    :'Taoism',
                    :'Tengriism',
                    :'Zoroastrianism'
                ]
            },
            expansion_policy: {
                help: 'Tall = A few very large cities. Wide = Lots of smaller cities.',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Tall',
                    :'Tall',
                    :'Tall',
                    :'Wide',
                    :'Wide',
                    :'Wide',
                    :'Balanced',
                    :'Balanced',
                    :'Balanced',
                    :'One City Challenge'
                ]
            },
            goal_wonders: {
                chance_of_multiple: 45,
                min: 1,
                max: 7,
                options: [
                    :'The Great Library',
                    :'The Mausoleum of Halicarnassus',
                    :'Pyramids',
                    :'The Statue of Zeus',
                    :'Stonehenge',
                    :'Temple of Artemis',
                    :'The Colossus',
                    :'The Great Lighthouse',
                    :'The Great Wall',
                    :'The Hanging Gardens',
                    :'Oracle',
                    :'The Parthenon',
                    :'Petra',
                    :'The Terracotta Army',
                    :'Alhambra',
                    :'Angkor Wat',
                    :'Borobudur',
                    :'Chichen Itza',
                    :'Great Mosque of Djenne',
                    :'Hagia Sophia',
                    :'Machu Picchu',
                    :'Notre Dame',
                    :'Forbidden Palace',
                    :'Globe Theatre',
                    :'Himeji Castle',
                    :'Leaning Tower of Pisa',
                    :'The Porcelain Tower',
                    :'Red Fort',
                    :'The Sistine Chapel',
                    :'The Taj Mahal',
                    :'Uffizi',
                    :'Big Ben',
                    :'Brandenburg Gate',
                    :'Louvre',
                    :'Broadway',
                    :'Neuschwanstein',
                    :'The Statue of Liberty',
                    :'Cristo Redentor',
                    :'The Great Firewall',
                    :'The Internet',
                    :'Pentagon',
                    :'Sydney Opera House',
                    :'CN Tower',
                    :'Hubble Space Telescope',
                    :'Spaceship Factory',
                    :'International Space Station'
                ]
            },
            game_pace: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Quick',
                    :'Standard',
                    :'Epic',
                    :'Marathon'
                ]
            },
            map_size: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Duel',
                    :'Tiny',
                    :'Small',
                    :'Standard',
                    :'Large',
                    :'Huge'
                ]
            },
            map_type: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Archipelago',
                    :'Continents',
                    :'4 Corners',
                    :'Fractal',
                    :'Great Plains',
                    :'Highlands',
                    :'Ice Age',
                    :'Inland Sea',
                    :'Lakes',
                    :'North V South',
                    :'Oval',
                    :'Pangea',
                    :'Skirmish',
                    :'Small Continents',
                    :'Terra',
                    :'Tiny Islands',
                    :'West V East',
                    :'Amazon Plus',
                    :'Arborea',
                    :'Boreal',
                    :'Europe',
                    :'Frontier',
                    :'Great Plains Plus',
                    :'Hemispheres',
                    :'Rainforest',
                    :'Tilted Axis'
                ]
            }
        }
    },
    skyrim: {
        title: 'Skyrim',
        background: 'skyrim.jpg',
        columns: {
            race: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Altmer',
                    :'Argonian',
                    :'Bosmer',
                    :'Breton',
                    :'Dunmer',
                    :'Imperial',
                    :'Khajiit',
                    :'Nord',
                    :'Orsimer',
                    :'Redguard'
                ]
            },
            birthsign: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'The Apprentice',
                    :'The Atronach',
                    :'The Lady',
                    :'The Lord',
                    :'The Lover',
                    :'The Mage',
                    :'The Ritual',
                    :'The Serpent',
                    :'The Shadow',
                    :'The Steed',
                    :'The Thief',
                    :'The Tower',
                    :'The Warrior'
                ]
            },
            focus_skills: {
                help: 'The primary skills you should aim to use and improve',
                chance_of_multiple: 100,
                min: 3,
                max: 3,
                options: [
                    :'Illusion',
                    :'Conjuration',
                    :'Restoration',
                    :'Alteration',
                    :'Enchanting',
                    :'Smithing',
                    :'Block',
                    :'Sneak',
                    :'Lockpicking',
                    :'Pickpocket',
                    :'Speech',
                    :'Alchemy'
                ]
            },
            factions_to_join: {
                help: 'The factions you are required to join, you can join others if you want as well',
                chance_of_multiple: 50,
                min: 1,
                max: 5,
                options: [
                    :"Bard's College",
                    :'College of Winterhold',
                    :'The Companions',
                    :'Dark Brotherhood',
                    :'Thieves Guild'
                ]
            },
            weapons: {
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    [
                        :'Daggers',
                        :'Dagger and Shield'
                    ],
                    [
                        :'Maces',
                        :'Mace and Shield'
                    ],
                    [
                        :'One Handed Swords',
                        :'Sword and Shield'
                    ],
                    [
                        :'War Axes',
                        :'War Axe and Shield'
                    ],
                    [
                        :'Destruction',
                        :'Destruction and Shield'
                    ],
                    :'Battleaxes',
                    :'Greatswords',
                    :'Warhammers',
                    :'Bows',
                    :'Destruction',
                    :'Crossbows',
                ]
            },
            armour: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Regular Clothes',
                    :'Robes',
                    :'Robes'
                ]
            },
            civil_war_side: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Imperial Legion',
                    :'Stormcloaks'
                ]
            },
            dawnguard_side: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'The Volkihar Clan',
                    :'The Dawnguard'
                ]
            },
            home: {
                chance_of_multiple: 20,
                min: 1,
                max: 8,
                options: [
                    :'Breezehome (Whiterun)',
                    :'Honeyside (Riften)',
                    :'Vlindrel Hall (Markarth)',
                    :'Hjerim (Windhelm)',
                    :'Proudspire Manor (Solitude)',
                    :'Heljarchen Hall (Dawnstar)',
                    :'Lakeview Manor (Falkreath)',
                    :'Windstad Manor (Morthal)',
                ]
            },
            companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Housecarl for your home city',
                    :'Belrand',
                    :'Erik the Slayer',
                    :'Jenassa',
                    :'Marcurio',
                    :'Stenvar',
                    :'Teldryn',
                    :'Vorstag',
                    :'Adelaisa Vendicci ',
                    :'Ahtar',
                    :'Annekke Crag-Jumper',
                    :'Aranea Ienith',
                    :'Eola',
                    :'Erandur',
                    :'Faendal',
                    :'Frea',
                    :'Golldir',
                    :'Illia',
                    :'Kharjo',
                    :'Lob',
                    :'Mjoll the Lioness',
                    :'Ogol',
                    :'Ralis Sedarys',
                    :'Roggi Knot-Beard',
                    :'Serana',
                    :'Sven',
                    :'Talvas Fathryon',
                    :'Ugor',
                    :'Benor',
                    :'Borgakh the Steel Heart',
                    :'Cosnach',
                    :'Derkeethus',
                    :'Ghorbash the Iron Hand',
                    :'Uthgerd the Unbroken',
                    :'Meeko',
                    :'Vigilance'
                ]
            },
            freelance_theft: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'No freelance theft',
                    :"If its too tempting to resist",
                    :'Habitual',
                    :"If it's not nailed down, it's yours"
                ]
            },
            unprovoked_murder: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'No murder',
                    :'Occasional',
                    :'Frequent',
                    :'Constant rampage'
                ]
            }
        }
    },
    minecraft: {
        title: 'Minecraft',
        background: 'minecraft.png',
        columns: {
            main_base_biome: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Frozen River",
                    :"Ice Plains",
                    :"Ice Plains Spikes",
                    :"Cold Beach",
                    :"Cold Taiga",
                    :"Mountainous Cold Taiga",
                    :"Extreme Hills",
                    :"Mountainous Extreme Hills",
                    :"Taiga",
                    :"Taiga M",
                    :"Mega Taiga",
                    :"Extreme Hills+",
                    :"Stone Beach",
                    :"Plains",
                    :"Sunflower Plains",
                    :"Forest",
                    :"Flower Forest",
                    :"Swampland",
                    :"River",
                    :"Beach",
                    :"Jungle",
                    :"Jungle Edge",
                    :"Birch Forest",
                    :"Birch Forest Hills",
                    :"Roofed Forest",
                    :"Mushroom Island",
                    :"Mushroom Island Shore",
                    :"Desert",
                    :"Savanna",
                    :"Mesa",
                    :"Plateau",
                    :"The Nether",
                    :"Ocean",
                    :"Deep Ocean",
                    :"Hills"
                ]
            },
            restrictions: {
                chance_of_multiple: 5,
                min: 1,
                max: 2,
                options: [
                    :"No axes",
                    :"No swords",
                    :"No hoes",
                    :"No fishing rods",
                    :"No shovels",
                    :"No beds",
                    :"No doors",
                    :"No trading",
                    :"No flint and steel",
                    :"No bows",
                    :"No bows or swords",
                    :"No enchanting",
                    :"No magic",
                    :"No animals",
                    :"No breeding",
                    :"No farming",
                    :"No farming potatos",
                    :"No farming carrots",
                    :"No farming melons",
                    :"No farming wheat",
                    :"No farming trees",
                    :"No diamond tools (excluding picks)",
                    :"No diamond tools",
                    :"No armour",
                    :"No splash potions",
                    :"Craft no tools above wood",
                    :"You cannot mine obsidian",
                    :"Your primary weapon is a bow",
                    :"Your primary weapon is a sword",
                    :"Your primary weapons are splash potions",
                    :"Your primary weapon is tnt",
                    :"No tools with unbreaking",
                    :"Your only weapons are bows",
                    :"Your only weapons are swords",
                    :"Your only weapons are splash potions",
                    :"Leather armour Only",
                    :"Iron armour Only",
                    :"Gold armour Only",
                    :"Diamond armour Only",
                    :"Boots only",
                    :"Pants only",
                    :"Chest armour Only",
                    :"Helmets Only",
                    :"Enchanted leather armour only",
                    :"Enchanted iron armour only",
                    :"Enchanted gold armour only",
                    :"Enchanted diamond armour only",
                    :"Enchanted armour only",
                    :"Enchanted weapons only",
                    :"Find and wear a jack o'lantern, never take it off",
                    :"No leather",
                    :"No iron",
                    :"No gold",
                    :"No diamonds",
                    :"No shears",
                    :"No buckets",
                    :"No potions",
                    :"No redstone",
                    :"No coal",
                    :"No lava",
                    :"Build only using dirt",
                    :"Build only using stone",
                    :"Build only using cobblestone",
                    :"Build only using wood",
                    :"Build only using obsidian",
                    :"Place only functional blocks",
                    :"Use only spruce wood",
                    :"Use only oak wood",
                    :"Use only dark oak wood",
                    :"Use only pine wood",
                    :"Use only jungle wood",
                    :"Use only spruce wood",
                    :"Use only birch wood",
                    :"No ladders",
                    :"No boats",
                    :"Cannot build with planks",
                    :"Cannot build with cobblestone",
                    :"Cannot build with wood",
                    :"Cannot build with stone",
                    :"Eat no meat or fish",
                    :"Your only food is meat or fish",
                    :"No health potions",
                    :"Minimize jumping",
                    :"All resources must be used as soon as possible",
                    :"Use no storage except your inventory",
                    :"Never have more than one of each tool at a time",
                    :"Never have more than one axe at a time",
                    :"Never have more than one sword at a time",
                    :"Never have more than one pickaxe at a time",
                    :"Play on hardcore",
                    :"You have one night above ground. As soon as night falls you must move everything underground, seal yourself off and never return",
                    :"All food must be grown above ground",
                    :"All food must be grown below ground",
                    :"You have one day to dig out the framework of your base, after that you may not dig or place any more non-functional blocks to change it",
                    :"Never retreat from enemies",
                    :"Only use weapons or armour from villages or chests",
                    :"Only use weapons or armour from villages",
                    :"Only use weapons or armour from chests",
                    :"Only use weapons from villages or chests",
                    :"Only use armour from villages or chests",
                    :"Only use weapons from villages",
                    :"Only use armour from villages",
                    :"Only use weapons from chests",
                    :"Only use armour from chests",
                    :"You may not travel above ground, tunnel everywhere",
                    :"Only 15 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 15 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 30 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 30 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 5 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 5 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 2 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 2 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Build everything out in the open. No walls. No doors. No building underground. No fences. Don't try and be clever",
                    :"Build no base, live in villages",
                    :"Do not kill Creepers",
                    :"Do not kill Skeletons",
                    :"Do not kill Zombies",
                    :"Do not kill Animals",
                    :"Do not kill Pigs",
                    :"Do not kill Cows",
                    :"Do not kill Spiders",
                    :"Whenever you die, destroy a diamond",
                    :"Do not retrieve your items on death",
                    :"No dogs",
                    :"No cats"
                ]
            },
            goals: {
                chance_of_multiple: 75,
                min: 1,
                max: 5,
                options: [
                    :"Fill a chest with Iron",
                    :"Fill a chest with Diamonds",
                    :"Fill a chest with Wood",
                    :"Fill a chest with Food",
                    :"Fill a chest with Meat",
                    :"Fill a chest with Fish",
                    :"Fill a chest with Bread",
                    :"Fill a chest with Eggs",
                    :"Fill a chest with Gold",
                    :"Fill a chest with Magic Books",
                    :"Fill a chest with Books",
                    :"Fill a chest with Coal",
                    :"Fill a chest with Lava buckets",
                    :"Create an artificial lake",
                    :"Create an artificial lake and build a base under its surface",
                    :"Create an artificial lake and build a base above its surface",
                    :"Collect one of every Tree",
                    :"Collect one of every Ore",
                    :"Collect one of every Block",
                    :"Collect one of every Animal",
                    :"Collect one of every Cat",
                    :"Collect one of every Horse",
                    :"Collect one of every Mob",
                    :"Collect one of every Wood",
                    :"Collect one of every Rock",
                    :"Learn to use Redstone",
                    :"Kill 5 golems",
                    :"Kill 10 Zombies",
                    :"Kill 10 Creepers",
                    :"Kill 10 Spiders",
                    :"Kill 10 Endermen",
                    :"Kill 10 Squid",
                    :"Kill 10 Villagers",
                    :"Kill 10 Zombie Pigmen",
                    :"Kill 10 Wolves",
                    :"Kill a Chicken Jockey",
                    :"Kill a Spider Jockey",
                    :"Kill 10 Blazes",
                    :"Kill 5 Endermites",
                    :"Kill 10 Ghasts",
                    :"Kill 10 Large Magma Cubes",
                    :"Kill 5 Silverfishs",
                    :"Kill 10 Skeletons",
                    :"Kill 10 Large Slimes",
                    :"Kill 5 Witchs",
                    :"Kill the Withers",
                    :"Kill 5 Zombie Villagers",
                    :"Kill the Killer Bunny",
                    :"Kill 5 Guardians",
                    :"Kill the Elder Guardian",
                    :"Kill the Ender Dragon",
                    :"Kill 5 Mooshroom Cows",
                    :"Renovate a Temple",
                    :"Renovate a Mineshaft",
                    :"Renovate a Nether Fortress",
                    :"Renovate an Ocean monument",
                    :"Build The Empire State Building",
                    :"Build The Golden Gate Bridge",
                    :"Build The Colosseum",
                    :"Build Big Ben",
                    :"Build The Brandenburg Gate",
                    :"Build The Chichen Itza",
                    :"Build Cristo Redentor",
                    :"Build The Eiffel Tower",
                    :"Build Himeji Castle",
                    :"Build Machu Picchu",
                    :"Build Notre Dame ",
                    :"Build The Pentagon",
                    :"Build The Sistine Chapel",
                    :"Build The Statue of Liberty",
                    :"Build Stonehenge",
                    :"Build The Sydney Opera House ",
                    :"Build The Taj Mahal",
                    :"Build The Colossus",
                    :"Build The Forbidden Palace",
                    :"Build The Great Wall of China",
                    :"Build The Hagia Sophia",
                    :"Build The Kremlin",
                    :"Build The Louvre",
                    :"Build An Oracle",
                    :"Build The Pyramids",
                    :"Build a Temple",
                    :"Build a Castle",
                    :"Build an Underground Base",
                    :"Build a Nuclear Bunker stocked with food to last for years",
                    :"Build an Underwater Base",
                    :"Build an Underwater Zoo stocked with one of every possible animal",
                    :"Build an Underwater Zoo stocked with one of every possible creature",
                    :"Build a Zoo Stocked with one of every possible creature",
                    :"Build a Zoo Stocked with one of every possible animal",
                    :"Build a working Redstone CPU",
                    :"Build a working train station linking several bases across multiple biomes",
                    :"Build a Steve Statue",
                    :"Build a Creeper Statue",
                    :"Build a Labyrinth",
                    :"Build a Large Farm",
                    :"Build a Sky Fortress that provides all the resources you require to Survive",
                    :"Build a Pirate Ship",
                    :"Build a Space Ship",
                    :"Build a Volcano",
                    :"Build a World Tree",
                    :"Build a Tree House",
                    :"Build an Elevator using Redstone",
                    :"Build an automated smelter",
                    :"Build an Item Smelter",
                    :"Build a town for 50 Villagers",
                    :"Build a wall for protection around a village",
                    :"Build an Iron Golem for a village",
                    :"Build a Mob spawner",
                    :"Build a Mob grinder",
                    :"Build your neighbourhood",
                    :"Build a national monument",
                    :"Build your real life house",
                    :"Build a tnt cannon",
                    :"Build The Titanic",
                    :"Build King's Landing",
                    :"Build Winterfell",
                    :"Build The Vatican",
                    :"Build The White House",
                    :"Build The British Houses of Parliament",
                    :"Beat the Ender Dragon on hardcore",
                    :"Reach the End in 10 days",
                    :"Reach the End and beat the Ender Dragon in 10 days",
                    :"Defeat the Ender Dragon and the Wither",
                    :"Clear out a Mineshaft",
                    :"Create these Biomes in minature: Desert, Tundra, Grasslands, Mountains, Jungle, Beach, Forest, Nether, Ocean",
                    :"Build a Nether Fortress in the regular world",
                    :"Create a new Village using Zombie Villagers",
                    :"Cure a Zombie Villager",
                    :"Breed 5 Villagers",
                    :"Breed 10 Cows",
                    :"Breed 10 Chickens",
                    :"Breed 10 Sheep",
                    :"Breed 10 Pigs",
                    :"Hatch 10 Chicken",
                    :"Create an automatic Egg Collector",
                    :"Farm every crop: Wheat, Melons, Pumpkins, Sugar Cane, Potatoes, Carrots, and Cocoa Beans",
                    :"Grow a giant mushroom",
                    :"Mine the Dragon Egg",
                    :"Discover 5 Dungeons",
                    :"Discover a Stronghold",
                    :"Create a Library",
                    :"Create a set of fully enchanted armour",
                    :"Create a set of fully enchanting diamond armour",
                    :"Write a book about your adventures",
                    :"Create pixel art of Megaman out of cloth blocks",
                    :"Create pixel art of Mario out of cloth blocks",
                    :"Create pixel art of Luigi out of cloth blocks",
                    :"Create pixel art of Samus out of cloth blocks",
                    :"Create pixel art of Kirby out of cloth blocks",
                    :"Create pixel art of Link out of cloth blocks",
                    :"Create pixel art of Pikachu out of cloth blocks",
                    :"Create pixel art of Goku out of cloth blocks",
                    :"Create pixel art of Vegeta out of cloth blocks",
                    :"Create pixel art of Squirtle out of cloth blocks",
                    :"Create pixel art of Charmander out of cloth blocks",
                    :"Create pixel art of Sonic out of cloth blocks"
                ]
            }
        }
    },
    dwarffortress: {
        title: 'Dwarf Fortress',
        background: 'dwarffortress.png',
        columns: {
            biome: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Grassy/Forest",
                    :"Desert",
                    :"Glacier",
                    :"Mountainous",
                    :"Seaside",
                    :"River Junction",
                    :"Badlands",
                    :"Volcano",
                    :"Island",
                    :"Free-pick",
                    :"Near a tower"
                ]
            },
            surroundings: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Calm",
                    :"Wilderness",
                    :"Untamed Wilds",
                    :"Serene",
                    :"Mirthful",
                    :"Joyous Wilds",
                    :"Sinister",
                    :"Haunted",
                    :"Terrifying",
                    :"Good",
                    :"Neutral",
                    :"Evil",
                    :"Peaceful",
                    :"Savage",
                    :"Free-pick"
                ]
            },
            challenges: {
                chance_of_multiple: 5,
                min: 1,
                max: 3,
                options: [
                    :"No danger rooms",
                    :"No traps",
                    :"No walls",
                    :"No bridges",
                    :"No Goblinite",
                    :"No Adamantine",
                    :"No Trading",
                    :"No Plump Helmets or Eggs",
                    :"No weapons (wrestlers only)",
                    :"Use only the starting 7 dwarves",
                    :"The only metal you are allowed to use is copper",
                    :"The only metal you are allowed to use is Iron",
                    :"The only metal you are allowed to use is Bronze",
                    :"You are only allowed to use Stone when no alternative exists",
                    :"No hospital",
                    :"No farming, obtain all food via trading",
                    :"No smithing, obtain all metal goods via trading",
                    :"No booze (slow mode)",
                    :"Embark with as many towers as possible",
                    :"Embark with an aquifer",
                    :"No soldiers, only war animals",
                    :"All men are soldiers",
                    :"You can only mine veins and up to 9 rock tiles per z-level",
                    :"No stairs, no walls, no doors, no bridges",
                    :"Your only food is meat, all armour must be bone",
                    :"Your only food is fish, all armour must be shell",
                    :"Your only food is meat",
                    :"Your only food is fish",
                    :"All resources must be used as soon as possible",
                    :"Everything but stockpiles must be above ground",
                    :"Perform a science experiment and share your results",
                    :"Maintain a 5:1 cat to dwarf ratio at all times. Extra dwarfs must be terminated with extreme prejudice.",
                    :"Start with only an anvil and 2 copper ore",
                    :"Start with 6 jesters and a single skilled dwarf",
                    :"Spend 0 points on embark",
                    :"You are only allowed to embark with at most 1 of each item",
                    :"Embark with a single pick",
                    :"All dwarves have all skills enabled",
                    :"If a single dwarf dies you must abandon the fort",
                    :"Choose an industry, you may only work that industry (I.E. Only metalworking, only crafting etc.)",
                    :"Metalworking only. No other industry",
                    :"Foodworking only. No other industry",
                    :"Brewing only. No other industry",
                    :"Cooking only. No other industry",
                    :"Crafting only. No other industry",
                    :"Woodworking only. No other industry",
                    :"Gemwork only. No other industry",
                    :"Clothmaking only. No other industry",
                    :"You have one season above ground. As soon as the seasons change you must move everything underground, seal yourself off and never return",
                    :"All food must be grown above ground",
                    :"All food must be gathered",
                    :"Do not dive below 2 z-levels. All buildings must be small hobbit holes",
                    :"No mechanisms",
                    :"No crossbows",
                    :"Embark near a tower. Construct no walls, gates, doors, or bridges",
                    :"All dwarves must serve in the military for at least 1 year and at most 3 years before retiring",
                    :"Enable no new labors. Dwarves can only ever work the jobs they came with",
                    :"You have one year to dig the framework of your fortress, after that you may not build any more constructions or dig any more tiles",
                    :"Only legendary miners may enter the main fort. Construct a training fort outside your main walls where immigrants train",
                    :"No lethal traps",
                    :"Kill all non-dwarf sentients",
                    :"All rooms are max 3x3",
                    :"No alcohol"
                ]
            },
            goals: {
                chance_of_multiple: 15,
                min: 1,
                max: 2,
                options: [
                    :"Kill all Elf and Human caravans",
                    :"Generate 25 million dorfbucks",
                    :"Make a vampire fort",
                    :"Make a were-fort",
                    :"Hermit Fortress (Only one dwarf)",
                    :"Go to Megaprojects page on the wiki and roll a d20",
                    :"Get two of as many animals as you can",
                    :"Make a massive above-ground town",
                    :"Keep the caverns open and reach Adamantine in the first year",
                    :"Using only your starting 7 and the first two migrant waves, reach 150 population",
                    :"Reach 150 population",
                    :"Reach 250 population",
                    :"Capture a forgotten beast",
                    :"Become the capital",
                    :"Bring lava to the surface",
                    :"Colonise a cavern layer",
                    :"Unleash hell",
                    :"Defeat hell",
                    :"Colonise hell",
                    :"Become a barony within 3 years",
                    :"Become a barony within 2 years",
                    :"Become the mountainhome within 5 years",
                    :"Train a dwarf to level 15 in every non social/military skill",
                    :"Build a Colosseum. Capture all invaders and have them fight your soldiers to the death",
                    :"Build a town",
                    :"Split your fortress into two underground societies within the first year, never allow them to mix",
                    :"Build your fort in the trees",
                    :"Build a large artificial lake with your fort underneath the surface",
                    :"Build an underwater fort",
                    :"Capture as many enemies as possible",
                    :"Build your fort in an ever growing tower, max width: 10x10",
                    :"Build a castle",
                    :"Create a device that will continually spew lava onto the surface forever",
                    :"Give all dwarves a regal version of every room",
                    :"Hook every dwarf's bedroom up to a magma trap. Anyone who becomes unhappy once their trap is hooked up is locked inside and burnt alive",
                    :"The world tree has died. Construct a new one. It must reach the maximum z-level and have a radius of at least 5 blocks. It can be hollow",
                    :"Immediately dig to the caverns and lock your dwarves in. Survive",
                    :"Dig exactly the amount of stone you need for each task, no more",
                    :"The initial 7 dwarves are prison guards. Lock all immigrants in their cells and keep them alive. After 10 years in their cell each dwarf can be released as a new guard. Native born dwarves become guards",
                    :"Build Venice. Your fort must be above ground with moats between buildings, you can travel between buildings via bridges",
                    :"Build a fort with a task based on the translation of it's randomised name",
                    :"Treat your nobles like nobility. As soon as the King declares his first stupid mandate, execute every noble in an interesting way",
                    :"Infect all your dwarves with vampirism",
                    :"Turn all your dwarves into werecreatures",
                    :"Capture and imprison all supernatural beings that enter your map",
                    :"Capture a necromancer in a cage, place him in a the middle of a Colosseum with sight of the surrounding area. Have your military fight enemies you have caught in cage traps in the Colosseum."
                ]
            }
        }
    },
    crusaderkings: {
        title: 'Crusader Kings 2',
        background: 'crusaderkings.jpg',
        columns: {
            starting_duchy: {
                help: 'When starting, pick the duke of this duchy, a dejure vassal, or the dejure liege',
                title: 'Starting Duchy',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Afar',
                    :'Axum',
                    :'Berbera',
                    :'Damot',
                    :'Gojjam',
                    :'Gondar',
                    :'Semien',
                    :'Shewa',
                    :'Wag',
                    :'Alodia',
                    :'Blemmyia',
                    :'Makuria',
                    :'Nobatia',
                    :'Cyrenaica',
                    :'Kabylia',
                    :'Tripolitania',
                    :'Tunis',
                    :'Arabia',
                    :'Damman',
                    :'Medina',
                    :'Nefoud',
                    :'Oman',
                    :'Sanaa',
                    :'Alexandria',
                    :'Aswan',
                    :'Cairo',
                    :'Damietta',
                    :'Sinai',
                    :'Ascalon',
                    :'Galilee',
                    :'Jerusalem',
                    :'Oultrejourdain',
                    :'Alger',
                    :'Fes',
                    :'Mauretania',
                    :'Marrakech',
                    :'Tangier',
                    :'Tlemcen',
                    :'Aleppo',
                    :'Antioch',
                    :'Damascus',
                    :'Syria',
                    :'Tripoli',
                    :'Gauda',
                    :'Nadia',
                    :'Suhma',
                    :'Vanga',
                    :'Varendra',
                    :'Jharkand',
                    :'Kasi',
                    :'Magadha ',
                    :'Tirabhukti',
                    :'Dahala',
                    :'Ratanpur',
                    :'Kamarupanagara',
                    :'Para-Lauhitya',
                    :'Sutiya',
                    :'Daksina',
                    :'Dandakaranya',
                    :'Kalinga',
                    :'Tosali',
                    :'East Anglia',
                    :'Essex',
                    :'Hwicce',
                    :'Kent',
                    :'Lancaster',
                    :'Mercia',
                    :'Northumberland',
                    :'Wessex',
                    :'York',
                    :'Connacht',
                    :'Leinster',
                    :'Meath',
                    :'Munster',
                    :'Ulster',
                    :'Albany',
                    :'Galloway',
                    :'Lothian',
                    :'Man',
                    :'Moray',
                    :'The Isles',
                    :'Cornwall',
                    :'Deheubarth',
                    :'Gwynedd',
                    :'Powys',
                    :'Anatolia',
                    :'Armeniacon',
                    :'Charsianon',
                    :'Cilicia',
                    :'Paphlagonia',
                    :'Thracesia',
                    :'Trebizond',
                    :'Armenia',
                    :'Coloneia',
                    :'Edessa',
                    :'Mesopotamia',
                    :'Karvuna',
                    :'Moesia',
                    :'Vidin',
                    :'Bosnia',
                    :'Croatia',
                    :'Dalmatia',
                    :'Slavonia',
                    :'Abkhazia',
                    :'Derbent',
                    :'Kartli',
                    :'Achaia',
                    :'Adrianopolis',
                    :'Aegean',
                    :'Athens',
                    :'Cibyrrhaeot',
                    :'Cyprus',
                    :'Dyrrachion',
                    :'Epirus',
                    :'Krete',
                    :'Nikaea',
                    :'Samos',
                    :'Thessalonika',
                    :'Thrace',
                    :'Dioclea',
                    :'Rashka',
                    :'Apulia',
                    :'Benevento',
                    :'Calabria',
                    :'Capua',
                    :'Salerno',
                    :'Sicily',
                    :'Venice',
                    :'Esztergom',
                    :'Nyitra',
                    :'Pecs',
                    :'Pest',
                    :'Temes',
                    :'Transylvania',
                    :'Ungvar',
                    :'Moldau',
                    :'Wallachia',
                    :'Udayagiri',
                    :'Vengi',
                    :'Gangavadi',
                    :'Kalyani',
                    :'Nulambavadi',
                    :'Raichur Doab',
                    :'Lanka',
                    :'Sinhala',
                    :'Devagiri',
                    :'Konkana',
                    :'Nasikya',
                    :'Rattapadi',
                    :'Vidharba',
                    :'Chera Nadu',
                    :'Chola Nadu',
                    :'Pandya Nadu',
                    :'Tondai Nadu',
                    :'Racakonda',
                    :'Warangal',
                    :'Aquitaine',
                    :'Auvergne',
                    :'Bourbon',
                    :'Gascogne',
                    :'Poitou',
                    :'Toulouse',
                    :'Brittany',
                    :'Dauphiné',
                    :'Provence',
                    :'Savoy',
                    :'Upper',
                    :'Anjou',
                    :'Berry',
                    :'Burgundy',
                    :'Champagne',
                    :'Normandy',
                    :'Orleans',
                    :'Valois',
                    :'Badajoz',
                    :'Cordoba',
                    :'Granada',
                    :'Murcia',
                    :'Seville',
                    :'Toledo',
                    :'Aragon',
                    :'Barcelona',
                    :'Mallorca',
                    :'València',
                    :'Castille',
                    :'Galicia',
                    :'Asturias',
                    :'León',
                    :'Navarra',
                    :'Algarve',
                    :'Beja',
                    :'Portucale',
                    :'Austria',
                    :'Bavaria',
                    :'Carinthia',
                    :'Tyrol',
                    :'Bohemia',
                    :'Moravia',
                    :'Brabant',
                    :'Flanders',
                    :'Gelre',
                    :'Holland',
                    :'Baden',
                    :'Brandenburg',
                    :'Brunswick',
                    :'Franconia',
                    :'Köln',
                    :'Meissen',
                    :'Saxony',
                    :'Swabia',
                    :'Thüringia',
                    :'Alsace',
                    :'Lower',
                    :'Luxembourg',
                    :'Upper Lorraine',
                    :'Ancona',
                    :'Ferrara',
                    :'Genoa',
                    :'Latium',
                    :'Lombardy',
                    :'Modena',
                    :'Pisa',
                    :'Sardinia',
                    :'Spoleto',
                    :'Susa',
                    :'Tuscany',
                    :'Verona',
                    :'Ghana',
                    :'Mali',
                    :'Songhay',
                    :'Timbuktu',
                    :'Kabulistan',
                    :'Zabulistan',
                    :'Baluchistan',
                    :'Sistan',
                    :'Dihistan',
                    :'Khiva',
                    :'Merv',
                    :'Samarkand',
                    :'Baghdad',
                    :'Basra',
                    :'Jazira',
                    :'Kermanshah',
                    :'Mosul',
                    :'Tigris',
                    :'Azerbaijan',
                    :'Esfahan',
                    :'Fars',
                    :'Hamadan',
                    :'Kerman',
                    :'Khorasan',
                    :'Tabaristan',
                    :'Tabriz',
                    :'Haritanaka',
                    :'Kuru',
                    :'Mathura',
                    :'Vodamayutja',
                    :'Anartta',
                    :'Gurjara',
                    :'Lata',
                    :'Saurashtra',
                    :'Jejakabhukti',
                    :'Kanyakubja',
                    :'Saryupara',
                    :'Akara-Dasarna',
                    :'Anupa',
                    :'Avanti ',
                    :'Gandhara',
                    :'Lahore',
                    :'Multan',
                    :'Ajmer',
                    :'Jangladesh',
                    :'Maru',
                    :'Medapata',
                    :'Stravani',
                    :'Bhakkar',
                    :'Sauvira',
                    :'Bjarmia',
                    :'Perm',
                    :'Ugra',
                    :'Yugra',
                    :'Belo Ozero',
                    :'Moskva',
                    :'Novgorod',
                    :'Pskov',
                    :'Rostov',
                    :'Tver',
                    :'Vladimir',
                    :'Yaroslavl',
                    :'Bryansk',
                    :'Chernigov',
                    :'Galich',
                    :'Kiev',
                    :'Pereyaslavl',
                    :'Ryazan',
                    :'Smolensk',
                    :'Turov',
                    :'Vitebsk',
                    :'Volhynia',
                    :'Holstein',
                    :'Jylland',
                    :'Sjælland',
                    :'Skåne',
                    :'Estonia',
                    :'Finland',
                    :'Karelia',
                    :'Kola',
                    :'Iceland',
                    :'Jämtland',
                    :'Orkney',
                    :'Ostlandet',
                    :'Trøndelag',
                    :'Vestlandet',
                    :'Bergslagen',
                    :'Norrland',
                    :'Småland',
                    :'Uppland',
                    :'Västergötland',
                    :'Östergötland ',
                    :'Alania',
                    :'Azov',
                    :'Itil',
                    :'Kimak',
                    :'Kipchak',
                    :'Kirghiz',
                    :'Sarkel',
                    :'Sibir',
                    :'Yaik',
                    :'Cherson',
                    :'Crimea',
                    :'Syr Darya',
                    :'Turkestan',
                    :'Zhetysu',
                    :'Bolghar',
                    :'Cheremisa',
                    :'Mari',
                    :'Mordva',
                    :'Courland',
                    :'Lithuania',
                    :'Livonia',
                    :'Polotsk',
                    :'Prussia',
                    :'Samogitia',
                    :'Yatvingia',
                    :'Greater',
                    :'Kuyavia',
                    :'Lesser',
                    :'Mazovia',
                    :'Silesia',
                    :'Mecklenburg',
                    :'Pomeralia',
                    :'Pomerania'
                ]
            },
            restrictions: {
                chance_of_multiple: 5,
                min: 1,
                max: 3,
                options: [
                    :'No usurping',
                    :"Do not use the 'Expell the Jewry' decision",
                    :'Only marry lowborn',
                    :'Never rebel against your liege',
                    :'Always be honorable towards your family',
                    :'Always be honorable towards your fellow vassals',
                    :'Do not use factions',
                    :'Always lead your army into battle',
                    :'Always honor your alliances and actually help',
                    :'Do not use mercenaries or holy orders',
                    :'Ironman mode',
                    :'Do your best to always play as a female',
                    :'Always say yes when offered the chance to become a heretic',
                    :'Always say yes when a vassal demands you transfer a vassal or de jure territory to them',
                    :'Always say yes when your family requests a fief',
                    :'Never honor alliances',
                    :'Whenever a great holy war is called involving your religion, side with the enemy by declaring war on someone of your religion who is involved',
                    :'Always say yes to culture conversions',
                    :'As an emperor never hold more than one kingdom',
                    :'As a king never hold more than one duchy',
                    :'As a king have no duke level vassals unless it would put you over the vassal limit',
                    :'No demanding religious conversion',
                    :'Always say yes to faction demands',
                    :'Always have a vassal educate your child',
                    :'Always say yes to marriage requests',
                    :'Always marry within your dynasty if possible',
                    :'Never declare war against someone of your own religion',
                    :'Never use holy wars',
                    :'Never declare war on a claim below duchy level',
                    :'Never declare war on a claim below kingdom level',
                    :'Never sow dissent',
                    :'Never improve religious relations',
                    :'Never improve diplomatic relations',
                    :'Never scheme',
                    :'Never proselityze',
                    :'No Retinues',
                    :'Try to reach and maintain absolute crown authority',
                    :'Try to reach and maintain autonomous vassals',
                    :'Keep centralisation to a minimum',
                    :'Keep centralisation as high as possible',
                    :'Raise taxes as high as you can',
                    :'Raise levies law as high as you can',
                    :'Lower taxes as low as you can',
                    :'Lower levies law as low as you can',
                    :'Never retract titles',
                    :'Never retract vassals',
                    :'Never use the imprison action',
                    :'Never release prisoners',
                    :'Execute all prisoners',
                    :'Release all prisoners',
                    :'Always kill yourself when you become depressed',
                    :'Throw a tournament every year',
                    :'Throw a feast every year',
                    :'Never surrender before -100% warscore',
                    :'Never end a war before 100% or -100% warscore',
                    :'Always have a plot',
                    :'Always be a member of a faction',
                    :'Never out a cheating spouse',
                    :'Always out a cheating spouse',
                    :'Always cheat on your spouse',
                    :'Play on full speed',
                    :"Don't pause",
                    :"Play on full speed, and don't pause",
                    :'Always marry below your rank',
                    :'Always marry a ruler',
                    :'Always marry your children to lowborn',
                    :'Minimize your alliances',
                    :'Whenever your spouse cheats, befriend their lover',
                    :"Whenever your spouse cheats, seduce their lover's spouse",
                    :"Whenever your spouse cheats, get a divorce",
                    :'Always have an antipope'
                ]
            },
            goals: {
                sub_trees: [:target_religion, :target_empire],
                chance_of_multiple: 75,
                min: 1,
                max: 5,
                options: [
                    {
                        target_religion: {
                            title: 'Target Religion',
                            option_title: 'Convert to the Target Religion',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Catholic',
                                :'Orthodox',
                                :'Miaphysite',
                                :'Nestorian',
                                :'Sunni',
                                :'Shia',
                                :'Ibadi',
                                :'Judaism',
                                :'Zoroastrian',
                                :'Hinduism',
                                :'Buddhism',
                                :'Jainism',
                                :'Germanic',
                                :'Reformed Germanic',
                                :'Reformed Slavic',
                                :'Tengri',
                                :'Reformed Tengri',
                                :'Reformed Romuva',
                                :'Suomenusko',
                                :'Reformed Suomenusko',
                                :'West African ',
                                :'Reformed West African',
                                :'Aztec',
                                :'Reformed Aztec',
                                :'Zunist',
                                :'Reformed Zunist',
                                :'Cathar',
                                :'Fraticelli',
                                :'Waldensian',
                                :'Lollard',
                                :'Monophysite',
                                :'Messalian ',
                                :'Bogomilist',
                                :'Monothelite',
                                :'Iconoclast',
                                :'Paulician',
                                :'Zikri',
                                :'Yazidi',
                                :'Druze',
                                :'Hurufi',
                                :'Mazdaki',
                                :'Samaritan',
                                :'Karaite',
                                :'Old Germanic',
                                :'Old Slavic',
                                :'Old Tengri',
                                :'Old Romuva',
                                :'Old Suomenusko',
                                :'Old West African',
                                :'Old Aztec',
                                :'Old Zunist'
                            ]
                        }
                    },
                    {
                        target_empire: {
                            title: 'Target Empire',
                            option_title: 'Own the Target Empire without starting in it',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'The Germanian Empire',
                                :'The Byzantine Empire',
                                :'The Italia Empire',
                                :'The Scandinavia Empire',
                                :'The Wendish Empire',
                                :'The Russian Empire',
                                :'The Tartarian Empire',
                                :'The Persian Empire',
                                :'The Carpathian Empire',
                                :'The Francia Empire',
                                :'The Hispania Empire',
                                :'The Arabian Empire',
                                :'The Britannia Empire',
                                :'The Mali Empire',
                                :'The Bengal Empire',
                                :'The Deccan Empire',
                                :'The Roman Empire',
                                :'The Latin Empire',
                                :'The Indian Empire',
                                :'The Holy Roman Empire'
                            ]
                        }
                    },
                    {
                        target_empire: {
                            title: 'Target Empire',
                            option_title: 'Own the Target Empire',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'The Germanian Empire',
                                :'The Byzantine Empire',
                                :'The Italia Empire',
                                :'The Scandinavia Empire',
                                :'The Wendish Empire',
                                :'The Russian Empire',
                                :'The Tartarian Empire',
                                :'The Persian Empire',
                                :'The Carpathian Empire',
                                :'The Francia Empire',
                                :'The Hispania Empire',
                                :'The Arabian Empire',
                                :'The Britannia Empire',
                                :'The Mali Empire',
                                :'The Bengal Empire',
                                :'The Deccan Empire',
                                :'The Roman Empire',
                                :'The Latin Empire',
                                :'The Indian Empire',
                                :'The Holy Roman Empire'
                            ]
                        }
                    },
                    :'Kill the white stag',
                    :'Own every Kingdom that is a part of the Brittania Empire',
                    :'Reform a Pagan Religion',
                    :'Work your way up from count to emperor',
                    :'Set up an antipope',
                    :'Sire a child with the inbred trait',
                    :'As an Orthodox Christian hold Rome, Constantinople, Alexandria, Antioch, and Jerusalem',
                    :'Be the highest contributor in a successful crusade for the Kingdom of Jerusalem',
                    :'Successfully defend from a great holy war',
                    :'Successfully defend from a holy war',
                    :'As a ruler of non-india culture hold a King or Emperor title in India',
                    :'Convert an entire religion to a heresy',
                    :'Become the Saoshyant',
                    :'Have the genius trait',
                    :'Have the quick trait',
                    :'Have the strong trait',
                    :'Have the attractive trait',
                    :'Convert Mecca to Hinduism, Jainism, or Buddhism',
                    :'Acquire the Necronomicon',
                    :'Have Robin Hood in your court',
                    :'Become Samrat Chakravartin',
                    :'Own the Francia, Germania, and Iberian Empires as a reformed pagan',
                    :'Own one of the Francia, Germania, and Iberian Empires as an unreformed pagan',
                    :'Own Rome as a pagan',
                    :'Own Rome and Constantinople as a pagan',
                    :'Own Rome as a Muslim',
                    :'Conquer an opposing religions holy sites',
                    :'Destroy the holy roman empire, in a start where it already exists',
                    :'Destroy the Byzantine Empire',
                    :"Form the Latin Empire and hold all of the Byzantine Empire's territory",
                    :'Own Rome as a Miaphysite christian',
                    :'Own Constantinople as a Miaphysite christian',
                    :'Own Rome and Constantinople as a Miaphysite christian',
                    :'Restore the borders of the Roman Empire',
                    :'Convert Rome and Constantinople to any Indian Religion',
                    :'Convert Rome and Constantinople to any one non-christian Religion',
                    :'Convert all Christian Provinces to any non-Christian religions',
                    :'Convert all Islamic Provinces to any non-Islamic religions',
                    :'Convert all Hindu, Jainist, or Buddhist Provinces to any non-Hindu, non-Jainist, or non-Buddhist religions',
                    :'Convert all Pagan Provinces to any non-Pagan religions',
                    :'Convert all Zoroastrian Provinces to any non-Zoroastrian religions',
                    :'Have 7 friends',
                    :'Have 5 lovers',
                    :'Contract Syphillis',
                    :'Contract the Great Pox',
                    :'Legitimise and then play as a bastard',
                    :'Wipe out the Karling Family',
                    :'Wipe out the Godwinson Family',
                    :'Install an Antipope in Rome',
                    :'Install an Antipope in Rome, and then replace him with another Antipope',
                    :'Put a heretical pope in Rome',
                    :'Have five heretic pentarchs',
                    :'As a heretic, defend against a holy war from your parent religion',
                    :'As a heretic, defend against a great holy war from your parent religion',
                    :'Have 30 diplomacy',
                    :'Have 30 martial',
                    :'Have 30 stewardship',
                    :'Have 30 intrigue',
                    :'Have 30 learning',
                    :'Forge a claim on another title, and then take it',
                    :'Usurp an empire',
                    :'Forge a claim on another title, and then inherit it on the same character',
                    :'Go to war for a title you were going to inherit anyway',
                    :'Defend against an adventurer',
                    :'Have a holy order as your vassal',
                    :'Give a holy order a kingdom',
                    :'Give a holy order a duchy',
                    :'As an emperor, have a kingdom level merchant republic as your vassal',
                    :'As an emperor, have a kingdom level theocracy as your vassal',
                    :'Create a faction and succesfully implement its goal',
                    :'Create a faction and succesfully gain independence',
                    :'Create a faction and succesfully put someone on the throne',
                    :'Create a faction and succesfully change succession law',
                    :'Create a faction and succesfully lower crown authority',
                    :'Create a faction and succesfully put yourself on the throne',
                    :'Create a faction and succesfully put your child on the throne',
                    :'Create a faction and succesfully put your friend on the throne',
                    :'Create a faction and succesfully put your lover on the throne',
                    :'Create a faction and succesfully put your spouse on the throne',
                    :'Create a faction, push your claim, and fail horribly',
                    :'Die in a great holy war',
                    :'Die in war',
                    :'Become a crusader',
                    :'Become a Mujahid',
                    :'Go on a pilgramige',
                    :'Go on a Hajj',
                    :'As a non-Islamic character, bring Sayyid into your family tree',
                    :'As a non-Islamic character, bring Mirza into your family tree',
                    :'Become decedant',
                    :'Have an Unworthy Court Chaplain',
                    :'Become a Kinslayer',
                    :'Be born in the purple',
                    :'Go into hiding',
                    :'Come out of hiding after killing the person who tried to kill you',
                    :'Have all 7 Deadly Sins',
                    :'Have all 7 Heavenly Virtues',
                    :'Be a Falconer',
                    :'Be a Poet',
                    :'Become a Socializer',
                    :'Become a Game Master',
                    :'Become a Hedonist',
                    :'Become a Duelist',
                    :'Become a Hunter',
                    :'Become a Strategist',
                    :'Become a Administrator',
                    :'Become a Architect',
                    :'Become a Gardener',
                    :'Become a Master Schemer',
                    :'Become an Impaler',
                    :'Become a Master Seducer',
                    :'Become Celibate',
                    :'Become a Master Seductress',
                    :'Become a Scholar',
                    :'Become a Theologian',
                    :'Become a Mystic',
                    :'Become scarred',
                    :'Become a lunatic and speak to god',
                    :'Become an Elusive Shadow',
                    :'Become a Grey Eminence',
                    :'Become Midas Touched',
                    :'Become a Brilliant Strategist',
                    :'Become a Mastermind Theologian',
                    :'Take a title in a holy war and then convert to the opposing religion',
                    :"Take a title in a holy war and convert the title's de jure provinces to your religion",
                    :'Be excommunicated',
                    :'Pay the pope to forgive your sins',
                    :'Win a war against an enemy twice your size whilst independent',
                    :'Win a war against an enemy with the help of two allies',
                    :'Conquer an ally',
                    :'Become friends with your liege',
                    :'Become the lover of your liege',
                    :'Raise someone of lowborn birth to the throne of a kingdom',
                    :'Seduce a bishop',
                    :'Seduce a prince-bishop',
                    :'Seduce a king-bishop',
                    :'Play as the seventh child',
                    :'Play as the seventh child of a seventh child',
                    :'Assassinate your wife',
                    :'Assassinate your father',
                    :'Assassinate your mother',
                    :'Assassinate your brother',
                    :'Assassinate your liege',
                    :'Assassinate a vassal',
                    :'Assassinate a religious head',
                    :'Assassinate someone of no importance',
                    :'Befriend your liege, and then assassinate him',
                    :"Become your liege's lover, and then assassinate him",
                    :'Assassinate someone planning an adventurer into your territory',
                    :"Defend against your liege's tyranny",
                    :'Defeat a vassal as they attempt to defend against your tyranny',
                    :'Defend against a rebellion',
                    :'Have your liege be both your friend and your lover',
                    :"Become your liege's enemy",
                    :'Defeat your liege in a duel',
                    :'Be in a homosexual relationship',
                    :'Have a dog',
                    :'Survive depression',
                    :'Live to 90',
                    :'Play a full game',
                    :'Convert to Aztec',
                    :'Convert the de jure provinces of a European Empire to Aztec',
                    :'Own Rome as an Aztec',
                    :'Own Constantinople as an Aztec',
                    :'Own a province in India as an Aztec',
                    :'Sacrifice the pope as a pagan or Kali worshipper',
                    :'Sacrifice a king as a pagan or Kali worshipper',
                    :'Sacrifice an emperor as a pagan or Kali worshipper'
                ]
            },
        }
    },
    falloutnewvegas: {
        title: 'Fallout: New Vegas',
        background: 'newvegas.jpg',
        columns: {
            special: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: new_vegas_specials()
            },
            tag_skills: {
                chance_of_multiple: 100,
                min: 3,
                max: 3,
                options: [
                    :"Barter",
                    :"Lockpick",
                    :"Medicine",
                    :"Repair",
                    :"Science",
                    :"Sneak",
                    :"Speech",
                    :"Survival",
                    :'Appropriate for your primary weapon'
                ]
            },
            traits: {
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    :"Built to Destroy",
                    :"Fast Shot",
                    :"Four Eyes",
                    :"Good Natured ",
                    :"Heavy Handed",
                    :"Kamikaze",
                    :"Loose Cannon",
                    :"Small Frame",
                    :"Trigger Discipline",
                    :"Wild Wasteland",
                    :"Claustrophobia",
                    :"Early Bird",
                    :"Hoarder",
                    :"Hot Blooded",
                    :"Logan's Loophole",
                    :"Skilled"
                ]
            },
            hardcore_mode: {
                title: 'Hardcore Mode',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'On',
                    :'On',
                    :'Off',
                    :'Off',
                    :'Off',
                    :'Off'
                ]
            },
            primary_weapon: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Energy: Pistols",
                    :"Energy: Rifles",
                    :"Energy: Heavy",
                    :"Explosives",
                    :"Melee: Bladed",
                    :"Melee: Blunt",
                    :"Melee: Thrown",
                    :"Guns: Pistols",
                    :"Guns: Shotguns",
                    :"Guns: SMGs",
                    :"Guns: Rifles",
                    :"Guns: Heavy",
                    :"Unarmed: Knuckles/Gauntlet/Gloves/Power Fists",
                    :"Unarmed: Bare Fists",
                    :"Pacifist"
                ]
            },
            faction: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"NCR",
                    :"Caesar's Legion",
                    :"House",
                    :"Yes Man"
                ]
            },
            human_companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"None",
                    :"Arcade",
                    :"Boone",
                    :"Lily",
                    :"Raul",
                    :"Cass",
                    :"Veronica"
                ]
            },
            other_companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"None",
                    :'ED-E',
                    :'Rex',
                    :'ED-E',
                    :'Rex',
                    :'ED-E',
                    :'Rex'
                ]
            }
        }
    },
	xrebirth: {
		title: 'X-Rebirth',
		background: 'x_rebirth.png',
		columns: {
			game_starts: {
				title: 'Game Starts',
				chance_of_multiple: 0,
				min: 1,
				max: 1,
				options: [
					:'Campaign',
					:'Free-play',
					:'Aspiring Merchant',
					:'Argon Mercenary',
					:'Empire Builder',
					:'The Teladi Outpost'
				]
			},
			restrictions: {
				title: 'Restrictions',
				sub_trees: [primary_weapon]
				chance_of_multiple: 15,
				min: 1,
				max: 3,
				options: [
					:'Never use any drones',
					:'Never upgrade the Albion Skunk',
					:'Never use the long range scanner',
					:'Never use boost',
					:'Never use local highways',
					:'Never use highways',
					:'Never land at stations',
					:'Only build stations in temporary or player-owned zones',
					:'Only use missiles; no other weapons',
					:'You may only stock 20 missiles at one time',
					:'You may only stock 10 missiles at one time',
					:'Do not upgrade beyond Mk1 weapons',
					:'Do not upgrade beyond Mk1 shields',
					:'Do not upgrade beyond Mk1 engines',
					:'Do not buy any ships',
					:'Trade only with inventory items',
					:'Dead is dead - if you die; game over',
					primary_weapon: {
						title: 'Use as primary weapon:',
						chance_of_multiple: 0,
						min: 1,
						max: 1,
						options: [
							:'Pulsed Maser',
							:'Inertial Hammer',
							:'Plasma Cannon',
							:'Partical Repeater',
							:'Mining Laser'
						]
					}
				]
			},
			trade_goals: {
				title: 'Trade Goals',
				chance_of_multiple: 5,
				min: 1,
				max: 2,
				options: [
					:'Sell 20 Million Credits worth of wares in one trade',
					:'Trade one of every ware in the game at least once',
					:'Have 20 Million Credits worth of items in your inventory',
					:'Have at least 10 Million Credits in your own account',
					:'Have at least 50 Million Credits in your own account',
					:'Have at least 100 Million Credits in your own account',
					:'Have a trade agent at every possible station',
					:'Have at least 20 stations that only depend on your other stations',
					:'Have at least 50 statinos that only depend on your other stations',
					:'Find and hire one of every specialist type',
					:'Have at least one pilot, one captain and one engineer who all have 5 stars in their primary skills'
				]
			},
			fight_goals: {
				title: 'Fight Goals',
				chance_of_multiple: 5,
				min: 1,
				max: 2,
				options: [
					:'Kill the Xenon I',
					:'Destroy an Arawn while docked at a player-owned capital ship',
					:'Become the Xenon Slayer - kill 1000 Xenon',
					:'Get 100 pilots to bail from small ships',
					:'Have a fleet of at least 100 ships',
					:'Capture a ship without using your main weapon',
					:'Capture a ship with freight worth at least 10 Million credits',
					:'Successfully board 50 ships',
					:'Successfully board 100 ships',
					:'Successfully board 200 ships',
					:'Successfully board 1 ship without losing any marines',
					:'Successfully board 20 ships without losing any marines',
					:'Successfully board 100 ships without losing any marines',
					:'Successfully board a Taranis, an Arawn and a Fulmekron',
					:'Successfully board at least one of every possible ship'
				]
			},
			build_goals: {
				title: 'Build Goals',
				sub_trees: [specific_zone_build],
				chance_of_multiple: 5,
				min: 1,
				max: 2,
				options: [
					:'Build 3 stations in one zone',
					:'Build 7 stations in one zone',
					:'Fully upgrade 10 stations',
					:'Fully upgrade 50 stations',
					:'Build at least one station for any ware at every tech level',
					:'Build at least one of every possible station',
					:'Build 25 trading ships',
					:'Build 50 trading ships',
					:'Build 100 trading ships',
					:'Build 25 capital ships',
					:'Build 50 capital ships',
					:'Build 100 capital ships',
					specific_zone_build: {
						title="Build a station in...",
						chance_of_multiple: 5,
						min: 1,
						max: 2,
						options: [
							:'Shattered Singularity',
							:'Venturous Profit',
							:'Schödinger\'s Drift',
							:'Time Distortion',
							:'Gravity Anomaly',
							:'Cryptic Heart',
							:'Last Resort',
							:'Biting Steel',
						]
					}
				]
			},
			discovery_goals: {
				title: 'Discovery Goals',
				chance_of_multiple: 5,
				min: 1,
				max: 3,
				options: [
					:'Walk a marathon',
					:'Find Jebediah Kerman in five different locations',
					:'Discover every zone in the universe',
					:'Fly for over 100,000Km in the Albion Skunk',
					:'Fly for over 100,000Km in a remote-controlled drone',
					:'Successfully unlock 500 lockboxes',
					:'Successfully unlock 1000 lockboxes',
					:'Survive the Serpentine Haze with less than 5% hull'
				]
			},
			faction_relations: {
				title: 'Faction Relationships',
				help: 'Defines which relationships you are allowed to build with which factions',
				chance_of_multiple: 0,
				min: 1,
				max: 1,
				options: [
					:'Become an ally of every economic faction',
					:'Become the nemisis of every economic faction',
					:'Reach the Ally relationship with every economic Albion faction',
					:'Reach the Friend relationship with every economic Albion faction',
					:'Reach the Enemy relationship with every economic Albion faction',
					:'Reach the Ally relationship with every economic Omicron Lyrae faction',
					:'Reach the Friend relationship with every economic Omicron Lyrae faction',
					:'Reach the Enemy relationship with every economic Omicron Lyrae faction',
					:'Go from Enemy to Ally and back again with one faction'
				]
			},
			main_source_of_income: {
				title: 'Main Source of Income',
				chance_of_multiple: 0,
				min: 1,
				max: 1,
				options: [
					:'Trading',
					:'Fighting',
					:'Building',
					:'Thinking',
					:'Plundering ships',
					:'Boarding ships',
					:'Stealing from stations',
				]
			},
			criminal_activity: {
				title: 'Criminal Activity',
				chance_of_multiple: 0,
				min: 1,
				max: 1,
				options: [
					:'Never',
					:'Occasional',
					:'Frequent',
					:'Habitual',
					:'The only way you can function'
				]
			},
			hard_difficulty: {
                title: 'Hard Difficulty',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'On',
                    :'On',
                    :'Off',
                    :'Off',
                    :'Off',
                    :'Off'
                ]
            },
			complete_goals: {
				title: 'Complete goals in...',
				chance_of_multiple: 0,
				min: 1,
				max: 1,
				options: [
					:'5 in-game days',
					:'3 in-game days',
					:'1 in-game day',
					:'12 in-game hours',
					:'6 in-game hours',
					:'3 in-game hours',
					:'1 in-game hour'
				]
			}
		}
	}
}