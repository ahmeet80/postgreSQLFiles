/*
SELECT - LIKE kosulu
LIKE : Sorgulama yaparken belirli (pattern) kalip ifadeleri kullanabilmemizi saglar
ILIKE : Sorgulama yaparken buyuk/kucuk harfe duyarsiz olarak eslestirir
LIKE : ~~
ILIKE: ~~*
NOT LIKE : !~~
NOT ILIKE : !~~*

% --> 0 veye daha fazla karakteri belirtir
_ --> Tek bir karakteri belirtir
*/

-- İsmi A harfi ile  baslayan personeli listele 
select * from personel WHERE isim like 'A%'; -- Basi 'A' olsun gerisi ne olursa olsun

-- İsmi t harfi ile  biten personeli listele 
select * from personel WHERE isim like '%t'; -- Basi ne olursa olsun sonu 't' olsun

-- isminin ikinci harfi e olan personeli listeleyiniz
select * from personel WHERE isim like '_e%';

-- 'a' ile başlayıp 'n' ile biten personel isimlerini listeleyiniz
select isim from personel WHERE isim ~~* 'a%n';

-- ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
select isim from personel WHERE isim ilike '_a_u_%'

-- İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
select isim from personel WHERE isim ~~* '%e%' and isim ~~* '%r%'

-- 2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
select isim from personel WHERE isim ~~* '_e%' and isim ~~* '__%y%'
select isim from personel WHERE isim ~~* '_e%y%'

- a harfi olmayan personeli listeleyin
select * from personel WHERE isim not like '%a%' 

-- 1. harfi A ve 7. harfi a olan personeli listeleyi
select * from personel WHERE isim ~~* 'A_____a%'

--Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
select isim from personel WHERE isim ~~* '%r_'

