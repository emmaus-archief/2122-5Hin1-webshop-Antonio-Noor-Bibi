// Javascript functies voor basker
// De basket (winkelmandje) wordt bewaard op local storage door de browser 
// en is toegankelijk voor alle pagina's van de website 
// 
// De basket bevat de volgende gegevens
// De producten die besteld moeten worden
//   voor elk product is er een object in JSON formaat met de naam
//   item_x, waarbij x de id van het product is
//   het object bevat alle informatie (velden zoals id, name etc) van een product
// Array van hoeveelheid (amount) per product, 
//   de index van de array is het product_id

function getProductInfo(id) {
  return JSON.parse(localStorage.getItem(`item_${id}`))
}

function getClosest(el, qry) {
  var parent = el.parentNode
  return parent.querySelector(qry)
}

function getChild(el, qry) {
  return el.querySelector(qry)
}

function removeClosestCompletelyFromBasket(el){
  const product = JSON.parse(getClosest(el, '.product_id').dataset.json)
  removeCompletelyFromBasket(product)
  // hm..hacky
  el.parentNode.parentNode.remove()
}

function removeAmountClosestFromBasket(el, showDivQry){
  const amount = parseInt(getClosest(el, '.product_amount').value)
  const product = JSON.parse(getClosest(el, '.product_id').dataset.json)
  const showEl = getClosest(el, showDivQry)
  removeFromBasket(product , amount, showEl)
}

function addAmountClosestToBasket(el, showDivQry){
  const amount = parseInt(getClosest(el, '.product_amount').value)
  const product = JSON.parse(getClosest(el, '.product_id').dataset.json)
  const showEl = getClosest(el, showDivQry)
  addToBasket(product , amount, showEl)
}

function openArticlePage(el) {
  const product_id = getChild(el, '.product_id').value
  console.log(getClosest(el, '.product_id'))
  window.location = `/product.html?productId=${product_id}`
}

function emptyBasket() {
  // maybe clearing completly a bit too much?
  localStorage.clear()
}

function readBasket() {
  return JSON.parse(localStorage.getItem('basket')||'{}')
}

function addToBasket(product, amount, showEl) {
  var basket = readBasket()
  basket[product.id] = amount + (basket[product.id]||0)
  localStorage.setItem(`item_${product.id}`, JSON.stringify(product))
  localStorage.setItem('basket', JSON.stringify(basket))
  if(showEl) {
    showEl.textContent = basket[product.id]
  }
}

function removeCompletelyFromBasket(product, rowEl) {
  var basket = readBasket()
  delete basket[product.id]
  localStorage.setItem('basket', JSON.stringify(basket))
  localStorage.removeItem(`item_${product.id}`)
  if(rowEl) {
    showEl.remove()
  }
}

function removeFromBasket(product, amount, showEl) {
  var basket = readBasket()
  basket[product.id] =  Math.max(1, ((basket[product.id]||0) - amount))
  localStorage.setItem('basket', JSON.stringify(basket))
  if(showEl) {
    showEl.textContent = basket[product.id]
  }
}

function basketNumItems(_basket) {
  const basket = _basket||readBasket()
  var num = 0;
  for (let key in basket) {
    num += parseInt(basket[key])
  }
  return num
}

function basketTotalPrice(_basket) {
  const basket = _basket||readBasket()
  var price = 0;
  for (let key in basket) {
    const product = JSON.parse(localStorage.getItem(`item_${key}`))
    price += parseInt(basket[key]) * parseFloat(product.price)
  }
  return price
}

function updateBasket(basket){
  const num = basketNumItems(basket)
  const sum = basketTotalPrice(basket)
  document.querySelectorAll('.sum_products').forEach( el => el.textContent = sum.toFixed(2))
  document.querySelectorAll('.num_products').forEach( el => {
    if( num == 0){
        el.textContent = "(leeg)"
    } else if( num == 1) {
        el.textContent = `(${num} item)`
    } else {
        el.textContent = `(${num} items)`
    }
  })
}

(function() {
  // your page initialization code here
  // the DOM will be available here
  var originalSetItem = localStorage.setItem;
  localStorage.setItem = function(key, value) {
    var event = new Event('itemInserted');
    event.value = value; // Optional..
    event.key = key; // Optional..
    document.dispatchEvent(event);
    originalSetItem.apply(this, arguments);
  };

  var localStorageSetHandler = function(e) {
    if(e.key === "basket") {
      updateBasket(JSON.parse(e.value))
    }
  };
  document.addEventListener("itemInserted", localStorageSetHandler, false);

})();

