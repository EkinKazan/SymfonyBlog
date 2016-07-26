<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Yazi;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class AdminController extends Controller
{
    /**
     * @Route("/admin", name="admin")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('admin/admin.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..'),
        ));
    }

    public function yaziEkleAction(Request $request){
        $baslik = $request->request->get('baslik'); //name i baslık olan ve formdan gelen veri

        $yeni_yazi = new Yazi();
        $yeni_yazi->setBaslik($baslik);

        $em = $this->getDoctrine()->getManager();

        $em -> persist($yeni_yazi);
        $em -> flush();

        return $this->redirect($this->generateUrl('listele'));
    }
}
