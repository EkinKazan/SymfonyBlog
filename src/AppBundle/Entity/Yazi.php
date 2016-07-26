<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Yazi
 *
 * @ORM\Table(name="yazi")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\YaziRepository")
 */
class Yazi
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="baslik", type="string", length=255)
     */
    private $baslik;

    /**
     * @var string
     *
     * @ORM\Column(name="ozet", type="string", length=255)
     */
    private $ozet;

    /**
     * @var string
     *
     * @ORM\Column(name="yazi", type="string", length=255)
     */
    private $yazi;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set baslik
     *
     * @param string $baslik
     *
     * @return Yazi
     */
    public function setBaslik($baslik)
    {
        $this->baslik = $baslik;

        return $this;
    }

    /**
     * Get baslik
     *
     * @return string
     */
    public function getBaslik()
    {
        return $this->baslik;
    }

    /**
     * Set ozet
     *
     * @param string $ozet
     *
     * @return Yazi
     */
    public function setOzet($ozet)
    {
        $this->ozet = $ozet;

        return $this;
    }

    /**
     * Get ozet
     *
     * @return string
     */
    public function getOzet()
    {
        return $this->ozet;
    }

    /**
     * Set yazi
     *
     * @param string $yazi
     *
     * @return Yazi
     */
    public function setYazi($yazi)
    {
        $yazi = strip_tags($yazi);
        $this->yazi = $yazi;

        return $this;
    }

    /**
     * Get yazi
     *
     * @return string
     */
    public function getYazi()
    {
        return $this->yazi;
    }
}

