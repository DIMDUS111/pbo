class baju {
constructor(merk, warna) {
this.merk = merk;
this.warna = warna;
}
info() {
return `sepeda ini adalah ${this.merk} berwarna ${this.warna}.`;
}
}
const matahari = new baju("baju matahari", "Hitam");
console.log(matahari.info());
