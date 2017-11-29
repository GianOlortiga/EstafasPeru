-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: Localhost
-- Generation Time: Nov 28, 2017 at 10:28 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `estafasperu`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `ciudades`
-- 

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL auto_increment,
  `ciudad` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `ciudades`
-- 

INSERT INTO `ciudades` VALUES (1, 'Abancay');
INSERT INTO `ciudades` VALUES (2, 'Arequipa');
INSERT INTO `ciudades` VALUES (3, 'Ayacucho');
INSERT INTO `ciudades` VALUES (4, 'Bagua Grande');
INSERT INTO `ciudades` VALUES (5, 'Cajamarca');
INSERT INTO `ciudades` VALUES (6, 'Callao');
INSERT INTO `ciudades` VALUES (7, 'Cerro de Pasco');
INSERT INTO `ciudades` VALUES (8, 'Chiclayo');
INSERT INTO `ciudades` VALUES (9, 'Chimbote');
INSERT INTO `ciudades` VALUES (10, 'Cusco');
INSERT INTO `ciudades` VALUES (11, 'Huancavelica');
INSERT INTO `ciudades` VALUES (12, 'Huancayo');
INSERT INTO `ciudades` VALUES (13, 'Huánuco');
INSERT INTO `ciudades` VALUES (14, 'Ica');
INSERT INTO `ciudades` VALUES (15, 'Iquitos');
INSERT INTO `ciudades` VALUES (16, 'Juliaca');
INSERT INTO `ciudades` VALUES (17, 'Lima');
INSERT INTO `ciudades` VALUES (18, 'Moquegua');
INSERT INTO `ciudades` VALUES (19, 'Piura');
INSERT INTO `ciudades` VALUES (20, 'Pucallpa');
INSERT INTO `ciudades` VALUES (21, 'Puerto Maldonado');
INSERT INTO `ciudades` VALUES (22, 'Tacna');
INSERT INTO `ciudades` VALUES (23, 'Tarapoto');
INSERT INTO `ciudades` VALUES (24, 'Trujillo');
INSERT INTO `ciudades` VALUES (25, 'Tumbes');

-- --------------------------------------------------------

-- 
-- Table structure for table `publicaciones`
-- 

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `estado` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `publicaciones`
-- 

INSERT INTO `publicaciones` VALUES (1, 'Empresa estafa con el cuento de trabajar 4 horas por d&Atilde;&shy;a', 'Jkean', '&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: ''Lucida Grande'', ''Lucida Sans'', ''Lucida Sans Unicode'', Tahoma, Arial, ''Liberation Sans'', FreeSans, sans-serif; line-height: 1.43em; color: rgb(13, 13, 13); background: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: inherit; font-style: inherit; background: transparent;&quot;&gt;UNIDAD DE INVESTIGACI&Atilde;“N DE DIARIO PER&Atilde;š 21 PONE AL DESCUBIERTO FALSOS EMPRESARIOS VINCULADOS AL DELITO DE LAVADO DE DINERO&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: ''Lucida Grande'', ''Lucida Sans'', ''Lucida Sans Unicode'', Tahoma, Arial, ''Liberation Sans'', FreeSans, sans-serif; line-height: 1.43em; color: rgb(13, 13, 13); background: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: inherit; font-style: inherit; background: transparent;&quot;&gt;EMPRESA GRUPO ELITE SAC DE JES&Atilde;šS MAR&Atilde;A PROMETE ENGA&Atilde;‘OSAMENTE PUESTOS DE ASISTENTE DE OFICINA RR.HH. PARA TRABAJAR S&Atilde;“LO 4 HORAS DIARIAS, PERO RECLUTA PERSONAS PARA COMPRAR PERFUMES A CAMBIO DE NADA.&lt;/strong&gt;&lt;br&gt;&lt;br&gt;J&Atilde;&sup3;venes y adultos de 17 a 45 a&Atilde;&plusmn;os invierten tiempo y grandes sumas de dinero y nunca reciben lo prometido.&lt;br&gt;&lt;br&gt;Dichas empresa propagan sus anuncios por calles y en el Internet (APTITUS Y BUMERAN PERU) jugando as&Atilde;&shy; con la ilusi&Atilde;&sup3;n de las personas que ven en ellas la oportunidad para salir adelante y convertirse en un ejecutivo exitoso. TODOS LOS ANUNCIOS INDICAN PREGUNTAR POR UNA SUPUESTA PERSONA QUE EN REALIDAD NO EXISTE, PUES ES UNA IDENTIDAD FALSA.&lt;br&gt;&lt;br&gt;&Atilde;‰ste el caso de la empresa GRUPO ELITE S.A.C con numero de RUC (Registro Unico de Contribuyentes) 20516212129 y direcci&Atilde;&sup3;n AV. ARNALDO M&Atilde;RQUEZ Nro. 1318, 6TO PISO - JES&Atilde;šS MAR&Atilde;A. La misma que desde m&Atilde;&iexcl;s de tres a&Atilde;&plusmn;os promete trabajos de 4 Horas Diarias en el supuesto &Atilde;REA DE SELECCI&Atilde;“N para realizar dos tipos de actividades. Principales: Selecci&Atilde;&sup3;n, Supervisi&Atilde;&sup3;n Organizaci&Atilde;&sup3;n y Direcci&Atilde;&sup3;n de personal; y auxiliares como contestar llamadas, llevar manuscritos y manejar archivos en una oficina.&lt;br&gt;&lt;br&gt;A cada fictisio trabajador nuevo se le asigna una oficina y un asesor, el mismo que se encargar&Atilde;&shy;a de los horarios, plan de trabajo y sueldos del flamante empleado. Este sueldo depender&Atilde;&iexcl; del nivel que tenga el empleado. Existen dos &acirc;€˜niveles&acirc;€™: Senior, en la cual se desempe&Atilde;&plusmn;an las personas de 17 a 22 a&Atilde;&plusmn;os, ganando supuestamente S/.200 SEMANALES; y la categor&Atilde;&shy;a M&Atilde;&iexcl;ster, donde se desempe&Atilde;&plusmn;an las personas de 23 a 45 a&Atilde;&plusmn;os, con un supuesto sueldo de S/.250 SEMANALES, pasando por la categor&Atilde;&shy;a Senior Vip, la que es un puente entre las dos categor&Atilde;&shy;as mencionadas anteriormente.&lt;br&gt;&lt;br&gt;La capacitaci&Atilde;&sup3;n obligatoria para comenzar a trabajar en esta empresa consta de 6 d&Atilde;&shy;as (empezando siempre los d&Atilde;&shy;as lunes), separando a la gente por los dos niveles, Senior de 9:00 am a 2 pm y M&Atilde;&iexcl;ster de 3 pm a 8 pm.&lt;br&gt;&lt;br&gt;EL PROCESO DE ESTAFA&lt;br&gt;Para comenzar, las personas interesadas son llevadas a un peque&Atilde;&plusmn;o cuarto con s&Atilde;&sup3;lo sillas y una pizarra acr&Atilde;&shy;lica, para recibir una charla, llamada de bienvenida. A los pocos minutos ingresa un(a) expositor(a). Puede tener cualquier edad y nombre inventado al igual que los nombres mostrados en los anuncios de trabajo.&lt;br&gt;Esta primera charla dura aproximadamente 1 hora 30 minutos: &acirc;€œNuestras siglas significan Grupo de Ejecutivos Lideres Integrados en un Trabajo de Excelencia. Nosotros desarrollamos un nuevo sistema de negocio que genera grandes ingresos dependiendo de las ganas que le pongas al trabajo&acirc;€, explica el expositor.&lt;br&gt;&lt;br&gt;El expositor habla sobre las supuestas tareas que desarrollar&Atilde;&iexcl;n los interesados con sus supuestos asesores y en sus &quot;oficinas&quot;. Toca temas como motivaci&Atilde;&sup3;n personal, actitudes positivas, etc. Y hasta citan a Miguel &Atilde;ngel Cornejo como ejemplo para sorprender a los presentes.&lt;br&gt;&lt;br&gt;Luego de haber intimidado a las personas con su charla de superaci&Atilde;&sup3;n econ&Atilde;&sup3;mica, se les dice que lo &Atilde;&ordm;nico que tienen que hacer para lograr lo que supuestamente el expositor(a) logr&Atilde;&sup3; en la empresa, es vender 30 PERFUMES DE UNA SUPUESTA MARCA EUROPEA y, claro, pasar un ex&Atilde;&iexcl;men sobre lo expuesto junto a unos ejercicios de razonamiento matem&Atilde;&iexcl;tico. El mismo que a&Atilde;&ordm;n dejado en blanco, deja la puerta abierta para seguir con el proceso. Esto para captar a la mayor cantidad de personas posible.&lt;br&gt;&lt;br&gt;Exactamente 5 minutos luego de haberse recogido los ex&Atilde;&iexcl;menes, un miembro del Grupo Elite regresa con &Atilde;&copy;stos y se los entrega al expositor. Este llama a un grupo reducido de los presentes, a los que invita a salir del cuarto. El grupo restante, a&Atilde;&ordm;n en el cuarto, son felicitados por el expositor, quien efusivamente les dice que son ellos los que aprobaron el examen, y que los que salieron fueron los que no lograron ingresar pero que merecen una segunda oportunidad.&lt;br&gt;&Acirc;&iexcl;FALSO! A los que salieron tambi&Atilde;&copy;n les dicen que ellos son los que pasaron el examen, y al llegar a la capacitaci&Atilde;&sup3;n el d&Atilde;&shy;a lunes, todos se vuelven a encontrar.&lt;br&gt;&lt;br&gt;En la CAPACITACI&Atilde;“N son presentados los instructores, uno encargado de Superaci&Atilde;&sup3;n Personal y el segundo de Superaci&Atilde;&sup3;n Econ&Atilde;&sup3;mica. Los dos individuos suelen ser muy j&Atilde;&sup3;venes para dar la falsa impresi&Atilde;&sup3;n de que en la empresa se da la oportunidad de superaci&Atilde;&sup3;n, sin importar la edad.&lt;br&gt;Se forman equipos para que sean mejor controlados, mientras los instructores dictan charlas sobre desarrollo personal, disciplina, puntualidad, entusiasmo, participaci&Atilde;&sup3;n, etc.&lt;br&gt;&lt;br&gt;Luego de expuestos los temas, al segundo o tercer d&Atilde;&shy;a se exige como &quot;REQUISITO LABORAL&quot; a cada participante vender un total de 30 PERFUMES en un plazo determinado, para que asi se acceda al supuesto puesto ofrecido.&lt;br&gt;Pero como es algo dif&Atilde;&shy;cil vender estos perfumes por los que piden S/.100 SOLES cada uno, LOS INSTRUCTORES BAJAN LA CANTIDAD DE 30 A S&Atilde;“LO 3 &Atilde;&sup3; 4 PERFUMES (seg&Atilde;&ordm;n el supuesto nivel por edad). &Acirc;&iexcl;Qu&Atilde;&copy; considerados!&lt;br&gt;&lt;br&gt;Los supuestos postulantes a &quot;asistente de oficina Grupo Elite S.A.C.&quot; llegan hasta a pedir prestado a sus parientes y amigos con tal de recaudar lo necesario; y para esto los instructores les incentivan a mentir o, inclusive, a utilizar cualquier tipo de artima&Atilde;&plusmn;a para completar el dinero de la &quot;meta&quot;. De lo contrario NO INGRESAN A TRABAJAR.&lt;br&gt;&lt;br&gt;Sin embargo, la empresa NUNCA cumple con la promesa de los puestos administrativos, pues las personas que s&Atilde;&shy; logran su objetivo jam&Atilde;&iexcl;s llegan a desempe&Atilde;&plusmn;arse en dichos puestos; sino que tambi&Atilde;&copy;n se convierten en estafadores y comienzan a invitar a m&Atilde;&iexcl;s personas para que participen. Y esto con la ilusi&Atilde;&sup3;n de quedarse con un porcentaje de lo que los nuevos incautos logren vender.&lt;br&gt;&lt;br&gt;Una vez firmado un informal &quot;contrato&quot;, los asesores les solicitan ENTREGARLES M&Atilde;S DINERO con la finalidad de publicar avisos en peri&Atilde;&sup3;dicos, asi como tambi&Atilde;&copy;n les establecen &quot;metas&quot; de n&Atilde;&ordm;mero de &quot;reclutados&quot; por semana.&lt;br&gt;Y para esto les incentivan a publicar en Internet un sinfin de avisos, extendiendo la cadena de publicidad enga&Atilde;&plusmn;osa.&lt;br&gt;&lt;br&gt;No es necesario decir que los flamantes trabajadores de &quot;oficina&quot; de Grupo Elite s.a.c. JAM&Atilde;S LLEGAN A GANAR DINERO Y MUCHO MENOS LOGRAN RECUPERAR SU SUPUESTA &quot;INVERSI&Atilde;“N&quot; puesto que &Atilde;&copy;ste es un sistema pir&Atilde;&iexcl;mide en el cual s&Atilde;&sup3;lo ganan los due&Atilde;&plusmn;os del negocio, es decir la empresa.&lt;br&gt;&lt;br&gt;&quot;Estamos ante una nueva modalidad de estafa, falsedad gen&Atilde;&copy;rica y delito contra la fe p&Atilde;&ordm;blica, ya que los reclutados por esta empresa firman una especie de contrato, que no es m&Atilde;&iexcl;s que una fachada pseudolegal para evadir a la justicia ante cualquier posible denuncia&quot; se&Atilde;&plusmn;ala Javier Belauchaga, abogado experto en temas laborales del Instituto de Defensa Legal (IDL).&lt;br&gt;&lt;br&gt;&quot;Con esto tendr&Atilde;&shy;an la excusa perfecta, pues pueden decir que las personas perjudicadas dieron su consentimiento, y sab&Atilde;&shy;an lo que hac&Atilde;&shy;an. Sin embargo se trata sin duda de una estafa laboral porque las personas entregan su dinero esperando obtener un trabajo, pero a cambio lo &Atilde;&ordm;nico que reciben es una mercader&Atilde;&shy;a cualquiera que al final no les sirve absolutamente de nada&quot; explic&Atilde;&sup3; Belauchaga.&lt;br&gt;&lt;br&gt;No se descarta que estos supuestos &quot;sistemas de negocios&quot; sean fachada de actividades delictivas como el lavado de dinero y que busquen personas que ofrezcan sus identidades y dinero para involucrarlas en estos il&Atilde;&shy;citos, con el riesgo de que las personas que ingresan a estos supuestos trabajos sean denunciadas penalmente por las autoridades, en calidad de c&Atilde;&sup3;mplices indirectos de este delito, conjuntamente con la empresa.&lt;br&gt;&lt;br&gt;FUENTE: UNIDAD DE INVESTIGACI&Atilde;“N DIARIO PER&Atilde;š 21&lt;/p&gt;', 24, '', 1);
INSERT INTO `publicaciones` VALUES (2, 'Empresa promete enga&Atilde;&plusmn;osamente puestos de asistente de oficina RR.HH', 'Juan', '&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: ''Lucida Grande'', ''Lucida Sans'', ''Lucida Sans Unicode'', Tahoma, Arial, ''Liberation Sans'', FreeSans, sans-serif; line-height: 1.43em; color: rgb(13, 13, 13); background: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: inherit; font-style: inherit; background: transparent;&quot;&gt;UNIDAD DE INVESTIGACI&Atilde;“N DE DIARIO PER&Atilde;š 21 PONE AL DESCUBIERTO FALSOS EMPRESARIOS VINCULADOS AL DELITO DE LAVADO DE DINERO&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: ''Lucida Grande'', ''Lucida Sans'', ''Lucida Sans Unicode'', Tahoma, Arial, ''Liberation Sans'', FreeSans, sans-serif; line-height: 1.43em; color: rgb(13, 13, 13); background: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: inherit; font-style: inherit; background: transparent;&quot;&gt;EMPRESA GRUPO ELITE SAC DE JES&Atilde;šS MAR&Atilde;A PROMETE ENGA&Atilde;‘OSAMENTE PUESTOS DE ASISTENTE DE OFICINA RR.HH. PARA TRABAJAR S&Atilde;“LO 4 HORAS DIARIAS, PERO RECLUTA PERSONAS PARA COMPRAR PERFUMES A CAMBIO DE NADA.&lt;/strong&gt;&lt;br&gt;&lt;br&gt;J&Atilde;&sup3;venes y adultos de 17 a 45 a&Atilde;&plusmn;os invierten tiempo y grandes sumas de dinero y nunca reciben lo prometido.&lt;br&gt;&lt;br&gt;Dichas empresa propagan sus anuncios por calles y en el Internet (APTITUS Y BUMERAN PERU) jugando as&Atilde;&shy; con la ilusi&Atilde;&sup3;n de las personas que ven en ellas la oportunidad para salir adelante y convertirse en un ejecutivo exitoso. TODOS LOS ANUNCIOS INDICAN PREGUNTAR POR UNA SUPUESTA PERSONA QUE EN REALIDAD NO EXISTE, PUES ES UNA IDENTIDAD FALSA.&lt;br&gt;&lt;br&gt;&Atilde;‰ste el caso de la empresa GRUPO ELITE S.A.C con numero de RUC (Registro Unico de Contribuyentes) 20516212129 y direcci&Atilde;&sup3;n AV. ARNALDO M&Atilde;RQUEZ Nro. 1318, 6TO PISO - JES&Atilde;šS MAR&Atilde;A. La misma que desde m&Atilde;&iexcl;s de tres a&Atilde;&plusmn;os promete trabajos de 4 Horas Diarias en el supuesto &Atilde;REA DE SELECCI&Atilde;“N para realizar dos tipos de actividades. Principales: Selecci&Atilde;&sup3;n, Supervisi&Atilde;&sup3;n Organizaci&Atilde;&sup3;n y Direcci&Atilde;&sup3;n de personal; y auxiliares como contestar llamadas, llevar manuscritos y manejar archivos en una oficina.&lt;br&gt;&lt;br&gt;A cada fictisio trabajador nuevo se le asigna una oficina y un asesor, el mismo que se encargar&Atilde;&shy;a de los horarios, plan de trabajo y sueldos del flamante empleado. Este sueldo depender&Atilde;&iexcl; del nivel que tenga el empleado. Existen dos &acirc;€˜niveles&acirc;€™: Senior, en la cual se desempe&Atilde;&plusmn;an las personas de 17 a 22 a&Atilde;&plusmn;os, ganando supuestamente S/.200 SEMANALES; y la categor&Atilde;&shy;a M&Atilde;&iexcl;ster, donde se desempe&Atilde;&plusmn;an las personas de 23 a 45 a&Atilde;&plusmn;os, con un supuesto sueldo de S/.250 SEMANALES, pasando por la categor&Atilde;&shy;a Senior Vip, la que es un puente entre las dos categor&Atilde;&shy;as mencionadas anteriormente.&lt;br&gt;&lt;br&gt;La capacitaci&Atilde;&sup3;n obligatoria para comenzar a trabajar en esta empresa consta de 6 d&Atilde;&shy;as (empezando siempre los d&Atilde;&shy;as lunes), separando a la gente por los dos niveles, Senior de 9:00 am a 2 pm y M&Atilde;&iexcl;ster de 3 pm a 8 pm.&lt;br&gt;&lt;br&gt;EL PROCESO DE ESTAFA&lt;br&gt;Para comenzar, las personas interesadas son llevadas a un peque&Atilde;&plusmn;o cuarto con s&Atilde;&sup3;lo sillas y una pizarra acr&Atilde;&shy;lica, para recibir una charla, llamada de bienvenida. A los pocos minutos ingresa un(a) expositor(a). Puede tener cualquier edad y nombre inventado al igual que los nombres mostrados en los anuncios de trabajo.&lt;br&gt;Esta primera charla dura aproximadamente 1 hora 30 minutos: &acirc;€œNuestras siglas significan Grupo de Ejecutivos Lideres Integrados en un Trabajo de Excelencia. Nosotros desarrollamos un nuevo sistema de negocio que genera grandes ingresos dependiendo de las ganas que le pongas al trabajo&acirc;€, explica el expositor.&lt;br&gt;&lt;br&gt;El expositor habla sobre las supuestas tareas que desarrollar&Atilde;&iexcl;n los interesados con sus supuestos asesores y en sus &quot;oficinas&quot;. Toca temas como motivaci&Atilde;&sup3;n personal, actitudes positivas, etc. Y hasta citan a Miguel &Atilde;ngel Cornejo como ejemplo para sorprender a los presentes.&lt;br&gt;&lt;br&gt;Luego de haber intimidado a las personas con su charla de superaci&Atilde;&sup3;n econ&Atilde;&sup3;mica, se les dice que lo &Atilde;&ordm;nico que tienen que hacer para lograr lo que supuestamente el expositor(a) logr&Atilde;&sup3; en la empresa, es vender 30 PERFUMES DE UNA SUPUESTA MARCA EUROPEA y, claro, pasar un ex&Atilde;&iexcl;men sobre lo expuesto junto a unos ejercicios de razonamiento matem&Atilde;&iexcl;tico. El mismo que a&Atilde;&ordm;n dejado en blanco, deja la puerta abierta para seguir con el proceso. Esto para captar a la mayor cantidad de personas posible.&lt;br&gt;&lt;br&gt;Exactamente 5 minutos luego de haberse recogido los ex&Atilde;&iexcl;menes, un miembro del Grupo Elite regresa con &Atilde;&copy;stos y se los entrega al expositor. Este llama a un grupo reducido de los presentes, a los que invita a salir del cuarto. El grupo restante, a&Atilde;&ordm;n en el cuarto, son felicitados por el expositor, quien efusivamente les dice que son ellos los que aprobaron el examen, y que los que salieron fueron los que no lograron ingresar pero que merecen una segunda oportunidad.&lt;br&gt;&Acirc;&iexcl;FALSO! A los que salieron tambi&Atilde;&copy;n les dicen que ellos son los que pasaron el examen, y al llegar a la capacitaci&Atilde;&sup3;n el d&Atilde;&shy;a lunes, todos se vuelven a encontrar.&lt;br&gt;&lt;br&gt;En la CAPACITACI&Atilde;“N son presentados los instructores, uno encargado de Superaci&Atilde;&sup3;n Personal y el segundo de Superaci&Atilde;&sup3;n Econ&Atilde;&sup3;mica. Los dos individuos suelen ser muy j&Atilde;&sup3;venes para dar la falsa impresi&Atilde;&sup3;n de que en la empresa se da la oportunidad de superaci&Atilde;&sup3;n, sin importar la edad.&lt;br&gt;Se forman equipos para que sean mejor controlados, mientras los instructores dictan charlas sobre desarrollo personal, disciplina, puntualidad, entusiasmo, participaci&Atilde;&sup3;n, etc.&lt;br&gt;&lt;br&gt;Luego de expuestos los temas, al segundo o tercer d&Atilde;&shy;a se exige como &quot;REQUISITO LABORAL&quot; a cada participante vender un total de 30 PERFUMES en un plazo determinado, para que asi se acceda al supuesto puesto ofrecido.&lt;br&gt;Pero como es algo dif&Atilde;&shy;cil vender estos perfumes por los que piden S/.100 SOLES cada uno, LOS INSTRUCTORES BAJAN LA CANTIDAD DE 30 A S&Atilde;“LO 3 &Atilde;&sup3; 4 PERFUMES (seg&Atilde;&ordm;n el supuesto nivel por edad). &Acirc;&iexcl;Qu&Atilde;&copy; considerados!&lt;br&gt;&lt;br&gt;Los supuestos postulantes a &quot;asistente de oficina Grupo Elite S.A.C.&quot; llegan hasta a pedir prestado a sus parientes y amigos con tal de recaudar lo necesario; y para esto los instructores les incentivan a mentir o, inclusive, a utilizar cualquier tipo de artima&Atilde;&plusmn;a para completar el dinero de la &quot;meta&quot;. De lo contrario NO INGRESAN A TRABAJAR.&lt;br&gt;&lt;br&gt;Sin embargo, la empresa NUNCA cumple con la promesa de los puestos administrativos, pues las personas que s&Atilde;&shy; logran su objetivo jam&Atilde;&iexcl;s llegan a desempe&Atilde;&plusmn;arse en dichos puestos; sino que tambi&Atilde;&copy;n se convierten en estafadores y comienzan a invitar a m&Atilde;&iexcl;s personas para que participen. Y esto con la ilusi&Atilde;&sup3;n de quedarse con un porcentaje de lo que los nuevos incautos logren vender.&lt;br&gt;&lt;br&gt;Una vez firmado un informal &quot;contrato&quot;, los asesores les solicitan ENTREGARLES M&Atilde;S DINERO con la finalidad de publicar avisos en peri&Atilde;&sup3;dicos, asi como tambi&Atilde;&copy;n les establecen &quot;metas&quot; de n&Atilde;&ordm;mero de &quot;reclutados&quot; por semana.&lt;br&gt;Y para esto les incentivan a publicar en Internet un sinfin de avisos, extendiendo la cadena de publicidad enga&Atilde;&plusmn;osa.&lt;br&gt;&lt;br&gt;No es necesario decir que los flamantes trabajadores de &quot;oficina&quot; de Grupo Elite s.a.c. JAM&Atilde;S LLEGAN A GANAR DINERO Y MUCHO MENOS LOGRAN RECUPERAR SU SUPUESTA &quot;INVERSI&Atilde;“N&quot; puesto que &Atilde;&copy;ste es un sistema pir&Atilde;&iexcl;mide en el cual s&Atilde;&sup3;lo ganan los due&Atilde;&plusmn;os del negocio, es decir la empresa.&lt;br&gt;&lt;br&gt;&quot;Estamos ante una nueva modalidad de estafa, falsedad gen&Atilde;&copy;rica y delito contra la fe p&Atilde;&ordm;blica, ya que los reclutados por esta empresa firman una especie de contrato, que no es m&Atilde;&iexcl;s que una fachada pseudolegal para evadir a la justicia ante cualquier posible denuncia&quot; se&Atilde;&plusmn;ala Javier Belauchaga, abogado experto en temas laborales del Instituto de Defensa Legal (IDL).&lt;br&gt;&lt;br&gt;&quot;Con esto tendr&Atilde;&shy;an la excusa perfecta, pues pueden decir que las personas perjudicadas dieron su consentimiento, y sab&Atilde;&shy;an lo que hac&Atilde;&shy;an. Sin embargo se trata sin duda de una estafa laboral porque las personas entregan su dinero esperando obtener un trabajo, pero a cambio lo &Atilde;&ordm;nico que reciben es una mercader&Atilde;&shy;a cualquiera que al final no les sirve absolutamente de nada&quot; explic&Atilde;&sup3; Belauchaga.&lt;br&gt;&lt;br&gt;No se descarta que estos supuestos &quot;sistemas de negocios&quot; sean fachada de actividades delictivas como el lavado de dinero y que busquen personas que ofrezcan sus identidades y dinero para involucrarlas en estos il&Atilde;&shy;citos, con el riesgo de que las personas que ingresan a estos supuestos trabajos sean denunciadas penalmente por las autoridades, en calidad de c&Atilde;&sup3;mplices indirectos de este delito, conjuntamente con la empresa.&lt;br&gt;&lt;br&gt;FUENTE: UNIDAD DE INVESTIGACI&Atilde;“N DIARIO PER&Atilde;š 21&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 24, '2015-12-24', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'admin', '25d55ad283aa400af464c76d713c07ad');