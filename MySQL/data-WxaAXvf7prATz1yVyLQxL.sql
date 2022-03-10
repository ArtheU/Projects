DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `produit_libelle` varchar(255) default NULL,
  `produit_prix` varchar(100) default NULL,
  `produit_photo` varchar(255),
  `produit_description` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`produit_libelle`,`produit_prix`,`produit_photo`,`produit_description`)
VALUES
  ("Denton","34","https://twitter.com","netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,"),
  ("Amery","50","https://youtube.com","Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,"),
  ("Aidan","78","http://bbc.co.uk","Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem"),
  ("Martin","96","http://facebook.com","id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam"),
  ("Owen","46","http://cnn.com","orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum"),
  ("Burke","73","https://netflix.com","elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus"),
  ("Reece","79","http://facebook.com","purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc"),
  ("Evan","75","http://youtube.com","pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,"),
  ("Ian","26","https://naver.com","enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit"),
  ("Theodore","84","http://google.com","sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,");
