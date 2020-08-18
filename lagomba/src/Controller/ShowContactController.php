<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

class ShowContactController extends AbstractController
{
    /**
     * @Route("/showContact/", name="showContact")
     */
    public function index()
    {
        return $this->render('show_contact/index.html.twig');
    }
}
