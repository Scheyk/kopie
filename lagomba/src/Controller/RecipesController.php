<?php

namespace App\Controller;

use App\Entity\Recipes;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response ;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RecipesController extends AbstractController
{
    /**
     * @Route("/admin/create-recipe",name="create-recipe",methods={"GET","POST"})
     *
     * @throws \Exception
     *
     * @return RedirectResponse|Response
     */
    public function create(Request $request)
    {
        try {
            $recipes = new Recipes();           
            $form = $this->createFormBuilder($recipes)
                ->add('img', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('one', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                    ['label'=> 'Step 1'],
                ])
                ->add('two', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('three', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('four', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('five', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('six', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('seven', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('eight', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('nine', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('ten', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('eleven', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('twelve', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('thirten', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('fourteen', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('fifty', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('preptime', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('preplevel', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                ])
                ->add('save', SubmitType::class, [
                    'label' => 'Save',
                    'attr' => ['class' => 'btn btn-primary mt-3'],
                ])
                ->getForm()
            ;
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $data = $form->getData();
                $entityManage = $this->getDoctrine()->getManager();
                $entityManage->persist($data);
                $entityManage->flush();

                return $this->redirect('/');
            }

            return $this->render('recipes/create.html.twig', [
                'recipes' => $recipes,
                'form' => $form->createView(),
            ]);
        	} catch (\Exception $exception) {
            return $this->render('error.html.twig', [
                'message' => $exception->getMessage(),
            ]);
    		}
    }  
}
