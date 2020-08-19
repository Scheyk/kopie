<?php

namespace App\Entity;

use App\Repository\RecipesRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=RecipesRepository::class)
 */
class Recipes
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $img;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $one;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $two;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $three;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $four;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $five;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $six;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $seven;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $eight;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $nine;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $ten;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $eleven;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $twelve;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $thirten;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fourteen;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fifty;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $preptime;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $preplevel;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(string $img): self
    {
        $this->img = $img;

        return $this;
    }

    public function getOne(): ?string
    {
        return $this->one;
    }

    public function setOne(?string $one): self
    {
        $this->one = $one;

        return $this;
    }

    public function getTwo(): ?string
    {
        return $this->two;
    }

    public function setTwo(?string $two): self
    {
        $this->two = $two;

        return $this;
    }

    public function getThree(): ?string
    {
        return $this->three;
    }

    public function setThree(?string $three): self
    {
        $this->three = $three;

        return $this;
    }

    public function getFour(): ?string
    {
        return $this->four;
    }

    public function setFour(?string $four): self
    {
        $this->four = $four;

        return $this;
    }

    public function getFive(): ?string
    {
        return $this->five;
    }

    public function setFive(?string $five): self
    {
        $this->five = $five;

        return $this;
    }

    public function getSix(): ?string
    {
        return $this->six;
    }

    public function setSix(?string $six): self
    {
        $this->six = $six;

        return $this;
    }

    public function getSeven(): ?string
    {
        return $this->seven;
    }

    public function setSeven(?string $seven): self
    {
        $this->seven = $seven;

        return $this;
    }

    public function getEight(): ?string
    {
        return $this->eight;
    }

    public function setEight(?string $eight): self
    {
        $this->eight = $eight;

        return $this;
    }

    public function getNine(): ?string
    {
        return $this->nine;
    }

    public function setNine(?string $nine): self
    {
        $this->nine = $nine;

        return $this;
    }

    public function getTen(): ?string
    {
        return $this->ten;
    }

    public function setTen(?string $ten): self
    {
        $this->ten = $ten;

        return $this;
    }

    public function getEleven(): ?string
    {
        return $this->eleven;
    }

    public function setEleven(?string $eleven): self
    {
        $this->eleven = $eleven;

        return $this;
    }

    public function getTwelve(): ?string
    {
        return $this->twelve;
    }

    public function setTwelve(?string $twelve): self
    {
        $this->twelve = $twelve;

        return $this;
    }

    public function getThirten(): ?string
    {
        return $this->thirten;
    }

    public function setThirten(?string $thirten): self
    {
        $this->thirten = $thirten;

        return $this;
    }

    public function getFourteen(): ?string
    {
        return $this->fourteen;
    }

    public function setFourteen(?string $fourteen): self
    {
        $this->fourteen = $fourteen;

        return $this;
    }

    public function getFifty(): ?string
    {
        return $this->fifty;
    }

    public function setFifty(?string $fifty): self
    {
        $this->fifty = $fifty;

        return $this;
    }

    public function getPreptime(): ?string
    {
        return $this->preptime;
    }

    public function setPreptime(?string $preptime): self
    {
        $this->preptime = $preptime;

        return $this;
    }

    public function getPreplevel(): ?string
    {
        return $this->preplevel;
    }

    public function setPreplevel(?string $preplevel): self
    {
        $this->preplevel = $preplevel;

        return $this;
    }
}
