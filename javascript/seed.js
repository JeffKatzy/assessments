// seed Store

window.onload = (() => {
  // 'the boys'
  const Jon = new Customer('jon')
  const Todd = new Customer('todd')
  const Dan = new Customer('dan')

  const ChineseBuffet = new Restaurant('chinese buffet', 'queens')
  const TacoShack = new Restaurant('taco shack', 'brooklyn')
  const PizzaAndStuff = new Restaurant('pizza & stuff', 'east village')

  new Review('awesome', 'awesome buffet', Jon.id, ChineseBuffet.id)
  new Review('great', 'gr8 buffet', Todd.id, ChineseBuffet.id)
  new Review('superb', 'superb buffet', Dan.id, ChineseBuffet.id)

  new Review('awful', 'dont go here', Jon.id, TacoShack.id)
  new Review('gr8', 'best tacos', Todd.id, TacoShack.id)

})()
