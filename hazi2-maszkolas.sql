CREATE TABLE #UGYFEL2
([login] nvarchar(64) PRIMARY KEY,
email nvarchar(64) MASKED with (function = 'email()'),
nev NVARCHAR(64) Masked with (function = 'partial(1, "---",1)'),
cim NVARCHAR(128) masked with (FUNCTION = 'partial(4,"---",0)')
)

insert into #UGYFEL2
([login], email, nev, cim) 
VALUES
('adam1','ádám.kiss@mail.hu','Kiss Ádám','5630 Békés, Szolnoki út 8.'),
('adam3','adam3@gmail.com','Barkóci Ádám','3910 Tokaj, Dózsa György utca 37.'),
('adam4','ádám.bieniek@mail.hu','Bieniek Ádám','8630 Balatonboglár, Juhászföldi út 1.'),
('agnes','agnes@gmail.com','Lengyel Ágnes','5200 Törökszentmiklós, Deák Ferenc út 5.'),
('agnes3','agnes3@gmail.com','Hartyánszky Ágnes','6430 Bácsalmás, Posta köz 2.'),
('AGNESH','AGNESH@gmail.com','Horváth Ágnes','8200 Veszprém, Rákóczi utca 21.'),
('AGNESK','AGNESK@gmail.com','Kovács Ágnes','1084 Budapest, Endrődi Sándor utca 47.'),
('akos','ákos.bíró@mail.hu','Bíró Ákos','9023 Győr, Kossuth Lajos utca 47/b.'),
('aladar','aladár.dunai@mail.hu','Dunai Aladár','5931 Nagyszénás, Árpád utca 23.'),
('alexandra','alexandra.bagóczki@mail.hu','Bagóczki Alexandra','2381 Táborfalva, Petőfi utca 1/2.'),
('alexandra3','alexandra3@gmail.com','Bíró Alexandra','8300 Tapolca, Halastó utca 11.'),
('ALIZ','ALIZ@gmail.com','Tóth Alíz','6600 Szentes, Rákóczi Ferenc utca 89.'),
('AMBRUS','AMBRUS@gmail.com','Ambrus Anna','2400 Dunaújváros, Dózsa György út 12.'),
('andor','andor.nagy@mail.hu','Nagy Andor','8900 Zalaegerszeg, Kossuth Lajos utca 2.'),
('andras','andrás.kassai@mail.hu','Kassai András','4400 Nyíregyháza, Bethlen Gábor utca 10.'),
('andras2','andras2@gmail.com','Fehér András','9700 Szombathely, Wesselényi utca 3.'),
('andras3','andras3@gmail.com','Dékány András','9200 Mosonmagyaróvár, Fő út 8.'),
('aniko','aniko@gmail.com','Farkas Anikó','8800 Nagykanizsa, Teleki utca 4.'),
('aniko2','aniko2@gmail.com','Kiss Anikó','5900 Orosháza, Szabadság tér 1.'),
('ANIKO3','ANIKO3@gmail.com','Borsos Anikó','6720 Szeged, Dóm tér 9.'),
('ANNA','ANNA@gmail.com','Balogh Anna','5600 Békéscsaba, Luther utca 3.'),
('anna1','anna1@gmail.com','Szatmári Anna','4030 Debrecen, István út 7.'),
('anna2','anna2@gmail.com','Boda Anna','2100 Gödöllő, Palotakert utca 5.'),
('ANTAL','ANTAL@gmail.com','Antal Gábor','7100 Szekszárd, Bezerédj utca 8.'),
('antal2','antal2@gmail.com','Balázs Antal','5000 Szolnok, Arany János utca 6.'),
('antal3','antal3@gmail.com','Fehér Antal','6000 Kecskemét, Katona József tér 3.'),
('aranka','aranka.kovács@mail.hu','Kovács Aranka','1173 Budapest, Pesti út 15.'),
('aron','áron.szabó@mail.hu','Szabó Áron','7621 Pécs, Király utca 1.'),
('attila','attila.nagy@mail.hu','Nagy Attila','4031 Debrecen, Kossuth utca 5.'),
('attila2','attila2@gmail.com','Varga Attila','3525 Miskolc, Petőfi utca 6.'),
('attila3','attila3@gmail.com','Molnár Attila','6722 Szeged, Kálvária sugárút 1.'),
('balazs','balázs.kovács@mail.hu','Kovács Balázs','4400 Nyíregyháza, Kossuth tér 5.'),
('balint','bálint.varga@mail.hu','Varga Bálint','3300 Eger, Dobó tér 1.'),
('balint2','balint2@gmail.com','Szabó Bálint','7400 Kaposvár, Fő utca 10.'),
('balint3','balint3@gmail.com','Papp Bálint','5000 Szolnok, Kossuth tér 3.'),
('barbara','barbara.nagy@mail.hu','Nagy Barbara','5700 Gyula, Béke sugárút 2.'),
('barbara2','barbara2@gmail.com','Kiss Barbara','6300 Kalocsa, Szent István király út 5.'),
('barbara3','barbara3@gmail.com','Molnár Barbara','6500 Baja, Déri Frigyes sétány 4.'),
('barnabas','barnabás.kovács@mail.hu','Kovács Barnabás','1088 Budapest, Rákóczi út 1.'),
('barnabas2','barnabas2@gmail.com','Farkas Barnabás','4026 Debrecen, Péterfia utca 3.'),
('barnabas3','barnabas3@gmail.com','Tóth Barnabás','7624 Pécs, Rókus utca 5.')

create user belepo WITHOUT login;

grant select on UGYFEl to belepo;

execute as User= 'belepo';
select * from ugyfel
revert