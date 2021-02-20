#ini adalah program bash

#membuat warna/lainnya
#caranya:

cyan="\e[36m"
putih="\e[0m"
yellow="\e[33m"
red="\e[31m"
green="\e[32m"
ping="\e[35m"
biru="\e[34m"

#Note: Nama Warna Boleh Beda, Contoh: yg green > hijau ok, paham? N Kode Warnanya Cari Google Aja

#clear tampilan
clear
#membuat teks
echo -e "ini teksnya"
#memberikan jeda waktu 1.5 detik
sleep 1.5
#membuat teks berwarna
echo -e $red"INi Teks Berwarna Merah$putih"
#note: cara memanggil warnya yang tadi kita buat adalah, kasi tanda dolar ($) + nama warna yang anda buat dan tandanya bisa di dalam atau di luar dan di akir nama warna tidak boleh menyatu dengan huruf/angka
#contoh: $red
# $ > dolarnya
# red > nama warnyanya (harus sesuai sama nama warna yang anda buat tadi
#jeda lagi
sleep 1
clear
#membuat fungsi dan banner
function namafungsi(){
echo -e "$red
  _
 |_)  _.  _ |_
 |_) (_| _> | |
"
}

#contoh oenggunaaan warna dan fungsi lainnya

namafungsi2(){
echo -e "$red
  _
 |_)  _.  _ |_
 |_) (_| _> | |"
}

#memanggil fungsi
namafungsi

#note: nama fungsinya bisa di ubah sesuai keinginan

#membuat menu

echo -e $yellow"Menu
$red---------$green
1. say 
2. ifconfig $biru
3. exit $putih"
#membuat input
read -p "Ini Input> " teksnya;
#mengisi perintah inputnya
if [ "${teksnya:-}" = "1" ] || [ "${teksnya:-}" = "01" ]
then
#perintahnya
	read -p 'Teks> ' teks
	echo -e "$teks "
#penutup
fi

#ulangi
if [ "${teksnya:-}" = "2" ] || [ "${teksnya:-}" = "02" ]
then
        ifconfig
fi

if [ "${teksnya:-}" = "3" ] || [ "${teksnya:-}" = "03" ]
then
	clear
	echo -e $yellow"Thx For Using Tools N Subscribe RDTUTORIAL"
	exit
fi
