<?php
/*
 *	Made by Samerton
 *  https://github.com/NamelessMC/Nameless/
 *  NamelessMC version 2.0.0-pr5
 *
 *  License: MIT
 *
 *  UserCP navbar generation
 */

$smarty->assign(array(
	'CC_NAV_LINKS' => $cc_nav->returnNav('top')
));