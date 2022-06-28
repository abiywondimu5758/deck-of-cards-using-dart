void main(){
 var deck = new Deck();
 deck.Shuffle();
 print(deck.deal(5));
 deck.Shuffle();
deck.removeCard('Diamonds','Ace');
deck.Shuffle();
 print(deck.CardWithSuit('Diamonds'));
}
class Deck{
  List<Card> cards = [];
  
  Deck(){
    var ranks = ['Ace','Two'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
    
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }
  
  Shuffle(){
    cards.shuffle();
    print(cards);
  }
  CardWithSuit(String suit){
    return cards.where((card) => card.suit == suit);
    
  }
  
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
     return hand;
  }
  
  removeCard(String suit, String rank){
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}
class Card{
  String suit ;
  String rank;
  
  Card(this.rank,this.suit);
  
  toString(){
    return '${rank} ${suit}';
  }
}   
