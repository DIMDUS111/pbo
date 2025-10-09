class baju {
constructor(merk, warna) {
this.merk = merk;
this.warna = warna;
}
info() {
return `baju ini adalah ${this.merk} berwarna ${this.warna}.`;
}
}
const matahari = new baju("baju matahari", "polkadot");
console.log(matahari.info());
