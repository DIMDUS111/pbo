class GameCharacter {
  // Properti private
  #energi;

  constructor(nama, energiAwal) {
    this.nama = nama;
    this.#energi = energiAwal;
  }

  getStatus() {
    return `${this.nama} memiliki energi sebesar ${this.#energi}`;
  }

  latihan(jumlah) {
    this.#energi += jumlah;
  }
}

const hero = new GameCharacter("DIMAS ABIMANYU", 100000);
hero.nama = 'Bayu';
hero.latihan(50000);

console.log(hero.getStatus());
hero.latihan(150000);
console.log(hero.getStatus());

// console.log(hero.#energi); // Akan error karena #energi bersifat private
