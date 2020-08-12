<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Asset\Package;



class LaGombaController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('la_gomba/index.html.twig');
    }

    /**
     * @Route("/about", name="about")
     */
    public function about()
    {
        return $this->render('la_gomba/about.html.twig');
    }

    /**
     * @Route("/rezepte", name="rezepte")
     */
    public function rezepte()
    {
        return $this->render('la_gomba/rezepte.html.twig');
    }

    /**
     * @Route("/contact", name="contact")
     */
    public function contact()
    {
        return $this->render('la_gomba/contact.html.twig');
    }
}
