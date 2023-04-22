<?php

namespace App\Events\BedEvents;

use ApiPlatform\Symfony\EventListener\EventPriorities;
use App\Entity\Bed;
use App\Services\HandleCurrentUserService;
use DateTime;
use JetBrains\PhpStorm\ArrayShape;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\ViewEvent;
use Symfony\Component\HttpKernel\KernelEvents;

class OnAddNewBedEvent implements EventSubscriberInterface
{
  public function __construct(private readonly HandleCurrentUserService $user)
  {
  }

  public function handler(ViewEvent $event)
  {
    $bed = $event->getControllerResult();
    $method = $event->getRequest()->getMethod();
    if ($bed instanceof Bed && $method === Request::METHOD_POST) {
      $bed->setCreatedAt(new DateTime());
      $bed->setHospital($this->user->getHospital() ?? $this->user->getHospitalCenter());
    }
  }

  #[ArrayShape([KernelEvents::VIEW => "array"])]
  public static function getSubscribedEvents(): array
  {
    return [
      KernelEvents::VIEW => [
        'handler',
        EventPriorities::PRE_WRITE,
      ]
    ];
  }
}
