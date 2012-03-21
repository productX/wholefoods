-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2012 at 04:27 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wholefoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_url` varchar(256) DEFAULT NULL,
  `item_name` varchar(256) DEFAULT NULL,
  `item_type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_url`, `item_name`, `item_type`) VALUES
(1, 'almonds.jpg', 'Almonds', 'dry fruits and nuts'),
(2, 'artichoke_and_roasted_red_pepper_frittata.jpg', 'Artichoke and Roasted Red Pepper Frittata', 'egg based'),
(3, 'artichoke.jpg', 'Artichoke', 'veggies'),
(4, 'asian_noodle_salad.jpg', 'Asian Noodle Salad', 'salad'),
(5, 'asparagus_and_portobella_salad.jpg', 'Asparagus and Portobella Salad', 'salad'),
(6, 'avocado_vinaigrette_dressing.jpg', 'Avocado Vinaigrette Dressing', 'dressings and condiments'),
(7, 'balsamic_dressing.jpg', 'Balsamic Dressing', 'dressings and condiments'),
(8, 'balsamic_green_bean_and_mushroom.jpg', 'Balsamic Green Bean and Mushroom', 'salad'),
(9, 'balsamic_vinaigrette.jpg', 'Balsamic Vinaigrette', 'dressings and condiments'),
(10, 'biscuits.jpg', 'Biscuits', 'prepared food'),
(11, 'blue_cheese_dressing.jpg', 'Blue Cheese Dressing', 'dressings and condiments'),
(12, 'blue_cheese.jpg', 'Blue Cheese', 'prepared food'),
(13, 'braggs_aminos.jpg', 'Braggs Aminos', 'dressings and condiments'),
(14, 'breakfast_potatoes.jpg', 'Breakfast Potatoes', 'prepared food'),
(15, 'brown_rice.jpg', 'Brown Rice', 'prepared food'),
(16, 'buffalo_wings.jpg', 'Buffalo Wings', 'meat or fish'),
(17, 'bulgar_cranberry_leek_salad.jpg', 'Bulgar Cranberry Leek Salad', 'salad'),
(18, 'butternut_posole.jpg', 'Butternut Posole', 'soup'),
(19, 'cabbage_crunch.jpg', 'Cabbage Crunch', 'salad'),
(20, 'caesar_dressing.jpg', 'Caesar Dressing', 'dressings and condiments'),
(21, 'california_quinoa_salad.jpg', 'California Quinoa Salad', 'salad'),
(22, 'carmens_spicy_vegan_vermicelli_noodle_salad.jpg', 'Carmens Spicy Vegan Vermicelli Noodle Salad', 'salad'),
(23, 'carnitas.jpg', 'Carnitas', 'meat or fish'),
(24, 'carrot_cupcake.jpg', 'Carrot Cupcake', 'dessert'),
(25, 'cashew_nuts.jpg', 'Cashew Nuts', 'dry fruits and nuts'),
(26, 'chicken_chill_verde.jpg', 'Chicken Chill Verde', 'meat or fish'),
(27, 'chicken_noodle_soup.jpg', 'Chicken Noodle Soup', 'soup'),
(28, 'chicken_pot_pie.jpg', 'Chicken Pot Pie', 'meat or fish'),
(29, 'chicken_tortilla_soup.jpg', 'Chicken Tortilla Soup', 'soup'),
(30, 'chilaquilles.jpg', 'Chilaquilles', 'prepared food'),
(31, 'chocolate_filled_cupcake_with_chocolate_filling.jpg', 'Chocolate Filled Cupcake With Chocolate Filling', 'dessert'),
(32, 'chocolate_filled_cupcake_with_vanilla_filling.jpg', 'Chocolate Filled Cupcake With Vanilla Filling', 'dessert'),
(33, 'cilantro_rice.jpg', 'Cilantro Rice', 'prepared food'),
(34, 'cilantro.jpg', 'Cilantro', 'veggies'),
(35, 'corn_and_black_bean_salad.jpg', 'Corn and Black Bean Salad', 'salad'),
(36, 'crab_cakes.jpg', 'Crab Cakes', 'meat or fish'),
(37, 'cream_puff.jpg', 'Cream Puff', 'dessert'),
(38, 'creamy_tomato_soup.jpg', 'Creamy Tomato Soup', 'soup'),
(39, 'creme_brulee_french_toast.jpg', 'Creme Brulee French Toast', 'egg based'),
(40, 'denver_eggs.jpg', 'Denver Eggs', 'egg based'),
(41, 'dried_sweetened_cranberry.jpg', 'Dried Sweetened Cranberry', 'dry fruits and nuts'),
(42, 'elizabeths_garden_pasta_salad.jpg', 'Elizabeths Garden Pasta Salad', 'salad'),
(43, 'fresh_fruit.jpg', 'Fresh Fruit', 'prepared food'),
(44, 'fried_chicken.jpg', 'Fried Chicken', 'meat or fish'),
(45, 'fusili_al_pesto_100_percent_whole_wheat_community_grains.jpg', 'Fusili Al Pesto 100 Percent Whole Wheat Community Grains', 'prepared food'),
(46, 'gaucho_beef_steak.jpg', 'Gaucho Beef Steak', 'meat or fish'),
(47, 'gravy.jpg', 'Gravy', 'prepared food'),
(48, 'grilled_chicken_breast.jpg', 'Grilled Chicken Breast', 'meat or fish'),
(49, 'grilled_chicken.jpg', 'Grilled Chicken', 'meat or fish'),
(50, 'grilled_lemon_herb_chicken_breast.jpg', 'Grilled Lemon Herb Chicken Breast', 'meat or fish'),
(51, 'grilled_salmon.jpg', 'Grilled Salmon', 'meat or fish'),
(52, 'grilled_tofu.jpg', 'Grilled Tofu', 'prepared food'),
(53, 'grilled_vegetable_lasagna.jpg', 'Grilled Vegetable Lasagna', 'prepared food'),
(54, 'grilled_vegetables.jpg', 'Grilled Vegetables', 'prepared food'),
(55, 'guacamole.jpg', 'Guacamole', 'prepared food'),
(56, 'hard_boiled_eggs.jpg', 'Hard Boiled Eggs', 'egg based'),
(57, 'hemp_milk.jpg', 'Hemp Milk', 'prepared food'),
(58, 'herbal_tofu_cous_cous_w_carrot.jpg', 'Herbal Tofu Cous Cous W Carrot', 'salad'),
(59, 'herbal_tofu_dill_pasta_salad.jpg', 'Herbal Tofu Dill Pasta Salad', 'salad'),
(60, 'hot_sauce.jpg', 'Hot Sauce', 'dressings and condiments'),
(61, 'jacks_meatloaf.jpg', 'Jacks Meatloaf', 'meat or fish'),
(62, 'jalapeno.jpg', 'Jalapeno', 'veggies'),
(63, 'kale_and_crimini_salad.jpg', 'Kale and Crimini Salad', 'salad'),
(64, 'kale_and_seaweed_salad.jpg', 'Kale and Seaweed Salad', 'salad'),
(65, 'kale_slaw.jpg', 'Kale Slaw', 'salad'),
(66, 'key_lime_bar.jpg', 'Key Lime Bar', 'dessert'),
(67, 'lemon_bar.jpg', 'Lemon Bar', 'dessert'),
(68, 'lemon_quinoa.jpg', 'Lemon Quinoa', 'prepared food'),
(69, 'lime_juice.jpg', 'Lime Juice', 'dressings and condiments'),
(70, 'mama_mancini_beef_meatballs.jpg', 'Mama Mancini Beef Meatballs', 'meat or fish'),
(71, 'mama_mancini_turkey_meatball.jpg', 'Mama Mancini Turkey Meatball', 'meat or fish'),
(72, 'mango_quinoa.jpg', 'Mango Quinoa', 'prepared food'),
(73, 'maple_cream_pie.jpg', 'Maple Cream Pie', 'dessert'),
(74, 'mediterranean_crunch.jpg', 'Mediterranean Crunch', 'prepared food'),
(75, 'mini_chocolate_eruption_cake.jpg', 'Mini Chocolate Eruption Cake', 'dessert'),
(76, 'mini_cupcakes.jpg', 'Mini Cupcakes', 'dessert'),
(77, 'mini_peary_berry_rosemary_cake.jpg', 'Mini Peary Berry Rosemary Cake', 'dessert'),
(78, 'mini_tiramisu.jpg', 'Mini Tiramisu', 'dessert'),
(79, 'mini_vegan_chocolate_mousse_cake.jpg', 'Mini Vegan Chocolate Mousse Cake', 'dessert'),
(80, 'mixed_cheese.jpg', 'Mixed Cheese', 'prepared food'),
(81, 'morrocan_carrot_salad.jpg', 'Morrocan Carrot Salad', 'salad'),
(82, 'new_england_clam_chowder.jpg', 'New England Clam Chowder', 'soup'),
(83, 'olive_oil.jpg', 'Olive Oil', 'dressings and condiments'),
(84, 'organic_black_beans.jpg', 'Organic Black Beans', 'veggies'),
(85, 'organic_broccoli.jpg', 'Organic Broccoli', 'veggies'),
(86, 'organic_cabbage.jpg', 'Organic Cabbage', 'veggies'),
(87, 'organic_carrot.jpg', 'Organic Carrot', 'veggies'),
(88, 'organic_cauliflower.jpg', 'Organic Cauliflower', 'veggies'),
(89, 'organic_celery.jpg', 'Organic Celery', 'veggies'),
(90, 'organic_corn.jpg', 'Organic Corn', 'veggies'),
(91, 'organic_field_greens.jpg', 'Organic Field Greens', 'veggies'),
(92, 'organic_garbonzo_beans.jpg', 'Organic Garbonzo Beans', 'veggies'),
(93, 'organic_italian_dressing.jpg', 'Organic Italian Dressing', 'dressings and condiments'),
(94, 'organic_kidney_beans.jpg', 'Organic Kidney Beans', 'veggies'),
(95, 'organic_onion.jpg', 'Organic Onion', 'veggies'),
(96, 'organic_peas.jpg', 'Organic Peas', 'veggies'),
(97, 'organic_radicchio.jpg', 'Organic Radicchio', 'veggies'),
(98, 'organic_romaine.jpg', 'Organic Romaine', 'veggies'),
(99, 'organic_spinach.jpg', 'Organic Spinach', 'veggies'),
(100, 'organic_thousand_island_dressing.jpg', 'Organic Thousand Island Dressing', 'dressings and condiments'),
(101, 'organic_tomato.jpg', 'Organic Tomato', 'veggies'),
(102, 'paper_towels.jpg', 'Paper Towels', 'utensils'),
(103, 'pecans.jpg', 'Pecans', 'dry fruits and nuts'),
(104, 'peppered_turkey_breast.jpg', 'Peppered Turkey Breast', 'meat or fish'),
(105, 'pinto_beans.jpg', 'Pinto Beans', 'veggies'),
(106, 'pork_sausage.jpg', 'Pork Sausage', 'meat or fish'),
(107, 'pulled_chicken.jpg', 'Pulled Chicken', 'meat or fish'),
(108, 'raisins.jpg', 'Raisins', 'dry fruits and nuts'),
(109, 'randu_dressing.jpg', 'Randu Dressing', 'dressings and condiments'),
(110, 'red_onion.jpg', 'Red Onion', 'veggies'),
(111, 'red_wine_vinegar.jpg', 'Red Wine Vinegar', 'dressings and condiments'),
(112, 'roast_pepper_and_corn_soup.jpg', 'Roast Pepper and Corn Soup', 'soup'),
(113, 'roasted_vegetables_provencal.jpg', 'Roasted Vegetables Provencal', 'prepared food'),
(114, 'salmon_cakes.jpg', 'Salmon Cakes', 'meat or fish'),
(115, 'salsa_cruda.jpg', 'Salsa Cruda', 'salad'),
(116, 'scallion.jpg', 'Scallion', 'veggies'),
(117, 'scrambled_eggs.jpg', 'Scrambled Eggs', 'egg based'),
(118, 'seasonal_fruit.jpg', 'Seasonal Fruit', 'prepared food'),
(119, 'sesame_ginger_dressing.jpg', 'Sesame Ginger Dressing', 'dressings and condiments'),
(120, 'sesame_orange_chicken.jpg', 'Sesame Orange Chicken', 'meat or fish'),
(121, 'small_container.jpg', 'Small Container', 'utensils'),
(122, 'small_fresh_fruit_tart.jpg', 'Small Fresh Fruit Tart', 'dessert'),
(123, 'small_key_lime_tart.jpg', 'Small Key Lime Tart', 'dessert'),
(124, 'small_lemon_meringue_tart.jpg', 'Small Lemon Meringue Tart', 'dessert'),
(125, 'small_seasonal_fresh_frangipane_tart.jpg', 'Small Seasonal Fresh Frangipane Tart', 'dessert'),
(126, 'smoked_pork_ribs_half_rack.jpg', 'Smoked Pork Ribs Half Rack', 'meat or fish'),
(127, 'sour_cream.jpg', 'Sour Cream', 'prepared food'),
(128, 'spanish_rice.jpg', 'Spanish Rice', 'prepared food'),
(129, 'spicy_chicken_wings.jpg', 'Spicy Chicken Wings', 'meat or fish'),
(130, 'steamed_beets.jpg', 'Steamed Beets', 'veggies'),
(131, 'sweet_petites.jpg', 'Sweet Petites', 'dessert'),
(132, 'tabouleh.jpg', 'Tabouleh', 'salad'),
(133, 'taco_salad.jpg', 'Taco Salad', 'salad'),
(134, 'tater_puffs.jpg', 'Tater Puffs', 'prepared food'),
(135, 'tofu_scamble.jpg', 'Tofu Scamble', 'egg based'),
(136, 'tomato_ketchup.jpg', 'Tomato Ketchup', 'dressings and condiments'),
(137, 'tortillas.jpg', 'Tortillas', 'prepared food'),
(138, 'traditional_lasagne.jpg', 'Traditional Lasagne', 'prepared food'),
(139, 'turkey_apricot_stew.jpg', 'Turkey Apricot Stew', 'soup'),
(140, 'turkey_meatloaf.jpg', 'Turkey Meatloaf', 'meat or fish'),
(141, 'turkey_pot_pie.jpg', 'Turkey Pot Pie', 'meat or fish'),
(142, 'twice_baked_potato_florentine.jpg', 'Twice Baked Potato Florentine', 'prepared food'),
(143, 'vegan_chocolate_cupcake.jpg', 'Vegan Chocolate Cupcake', 'dessert'),
(144, 'vegan_soyrizo_hash.jpg', 'Vegan Soyrizo Hash', 'prepared food'),
(145, 'vegetarian_omolettes.jpg', 'Vegetarian Omolettes', 'egg based'),
(146, 'walnuts.jpg', 'Walnuts', 'dry fruits and nuts'),
(147, 'white_bean_and_kale_soup.jpg', 'White Bean and Kale Soup', 'soup'),
(148, 'yoghurt.jpg', 'Yoghurt', 'prepared food'),
(149, 'zuchini_chickpea_quinoa.jpg', 'Zuchini Chickpea Quinoa', 'salad');

-- --------------------------------------------------------

--
-- Table structure for table `item_sets`
--

CREATE TABLE IF NOT EXISTS `item_sets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `item_set_items`
--

CREATE TABLE IF NOT EXISTS `item_set_items` (
  `item_set_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  PRIMARY KEY (`item_set_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
