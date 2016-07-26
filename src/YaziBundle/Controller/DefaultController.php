<?php

namespace YaziBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('YaziBundle:Default:index.html.twig');
    }
}
