#!/bin/bash

while true; do
    read -p "Birinci sayıyı giriniz " sayi1
    read -p "İkinci sayıyı giriniz " sayi2
    PS3="Yapılacak işlemi seçiniz "
    select sonuc in Topla Çıkar Çarp Böl; do
        case $sonuc in
            Topla) islem='+' ; break ;;
            Çıkar) islem='-' ; break ;;
            Çarp) islem='*' ; break ;;
            Böl) islem='/' ; break ;;
            *) echo "Geçersiz işlem" ;;
        esac
    done
    sonuc=$(echo "$sayi1 $islem $sayi2" | bc -l)
    printf "%s %s %s = %s\n\n" "$sayi1" "$islem" "$sayi2" "$sonuc"
done