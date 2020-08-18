<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

use App\Entity\Contact;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;



class LaGombaController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('lagomba/index.html.twig');
    }

    /**
     * @Route("/nora", name="nora")
     */
    public function nora()
    {
        return $this->render('lagomba/nora.html.twig');
    }

    /**
     * @Route("/products", name="products")
     */
    public function products()
    {
        return $this->render('lagomba/product.html.twig');
    }

    /**
     * @Route("/recipes", name="recipes")
     */
    public function recipes()
    {
        return $this->render('lagomba/recipes.html.twig');
    }

    /**
     * @Route("/contact", name="contact")
     */
    public function contact(Request $request)
    {
        $contact = new Contact;

        $form = $this->createFormBuilder($contact)->
                add('name', TextType::class, array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:10px')))->
                add('email', TextType::class, array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:10px')))->
                add('message', TextareaType::class, array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:10px', 'rows'=>'5')))->
                add('submit', SubmitType::class, array('label'=> 'send', 'attr' => array('class'=> 'btn-warning font-weight-bold text-secondary', 'style'=>'margin-bottom:10px')))            
                ->getForm();
                $form->handleRequest($request);

                if($form->isSubmitted() && $form->isValid())
                {
                    $name = $form['name']->getData();
                    $email = $form['email']->getData();
                    $message = $form['message']->getData();
                    $sendDate = $form['sendDate']->getData();

                    $contact->setName($name);
                    $contact->setMessage($message);
                    $contact->setEmail($email);
                    $contact->setSendDate($sendDate);                    

                    $em = $this->getDoctrine()->getManager();
                    $em->persist($contact);
                    $em->flush();

                    $this->addFlash(
                                'notice',
                                'send message');
                    return $this->redirectToRoute('contact');
                }

                return $this->render('lagomba/contact.html.twig', array('form'=>$form->createView()));
    }

    /**
     * @Route("/showAll", name="showAll")
     */
    public function showAll()
    {
        $contact = $this->getDoctrine()->getRepository('App:Contact')->findAll();

        return $this->render('lagomba/showMessage.html.twig', array('contact'=>$contact));
    } 

    /**
    * @Route("/details/{id}", name="details")
    */
   public function detailsAction($id)
   {
      
       $contact = $this->getDoctrine()->getRepository('App:Contact')->find($id);

       return $this->render('lagomba/detailMessage.html.twig', array('contact'=>$contact));
   }   
    
}
