<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\Yazi;
use Symfony\Component\HttpFoundation\Session\Session;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $tumYazilar = $em->getRepository('AppBundle:Yazi') -> findBy([], ['id' => 'DESC']);
        return $this->render('liste/listele.html.twig', array('yazilar'=>$tumYazilar));

        // replace this example code with whatever you need
        /*return $this->render('default/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..'),
        ));*/
    }

    public function adminSayfaAction(){
        $session = $this->getRequest()->getSession();
        $session_id = $session->get('_csrf/authenticate');


        if($session_id){
            return $this->render('admin/admin.html.twig');
        }else{
            $em = $this->getDoctrine()->getManager();
            $tumYazilar = $em->getRepository('AppBundle:Yazi') -> findBy([], ['id' => 'DESC']);
            return $this->render('liste/listele.html.twig', array('yazilar'=>$tumYazilar));
        }
    }

    public function yaziEkleAction(Request $request){
        $baslik = $request->request->get('baslik');
        $ozet = $request->request->get('ozet');
        $yazi = $request->request->get('yazi');

        /*var_dump($yazi);

        $yazi = strip_tags($yazi);
        echo "<br>";
        var_dump($yazi);
        exit();*/

        $yeni_yazi = new Yazi();
        $yeni_yazi->setBaslik($baslik);
        $yeni_yazi->setOzet($ozet);
        $yeni_yazi->setYazi($yazi);

        $em = $this->getDoctrine()->getManager();

        $em -> persist($yeni_yazi);
        $em -> flush();

        return $this->redirect($this->generateUrl('listele'));
    }

    public function yaziListeleAction(){

            $em = $this->getDoctrine()->getManager();

            $tumYazilar = $em->getRepository('AppBundle:Yazi') -> findBy([], ['id' => 'DESC']);

            return $this->render('liste/listele.html.twig', array('yazilar'=>$tumYazilar));

    }

    public function yazininTamamiAction($slug){

        /*$url = $this->generateUrl(
            'yazi',
            array('slug' => 'my-blog-post')
        );*/

        $em = $this->getDoctrine()->getManager();

        $yazininTamami = $em->getRepository('AppBundle:Yazi') -> findOneBy(array('id'=>$slug));

        /*$yazininTamami->yazi = strip_tags($yazininTamami->yazi);

        var_dump($yazininTamami);
        exit();*/

        return $this->render('liste/tum_yazi.html.twig', array('yazi'=>$yazininTamami));
    }
}
