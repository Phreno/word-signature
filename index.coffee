###
# Récupère la signature alphabétique d'un texte
#
# @module sign
###

###
# Tri alphabétique.
# On souhaite normaliser la séquence.
#
# @method alphaSort
#
# @private
###
alphaSort=(prev, next)->
  return prev.localeCompare(next)

###
# Construit la signature d'un mot.
#
# @method sign
# @param {String} txt Chaîne de caractère dont on veut obtenir la signature.
# @return {Object} Un object qui dénombre les occurences de chaque lettre.
###
sign=(txt)->
  signature={}

  incrementOccurrence=(char)->
    empty=0
    increment=1
    signature[char]=(signature[char] || empty) + increment

  txt
    .replace(/\s*/g, '')
    .split('')
    .sort(alphaSort)
    .forEach incrementOccurrence

  return signature

module.exports=sign
