<?php

namespace Watson\Controller;

use Silex\Application;


class RssController
{

    /**
     * RSS controller.
     *
     * @param Application $app Silex application
     */
    public function RssAction(Application $app)
    {
        $links = $app['dao.link']->findAllLimited();
        return $app['twig']->render('watson.rss.xml.twig', array('links' => $links));
    }
}