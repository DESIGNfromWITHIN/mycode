<?php
if ($modx->context->key == 'mgr') {return;}
switch ($modx->event->name) {
    case 'OnMODXInit':
        // Load main lexicon
        $modx->lexicon->load('en:anylanding:default');
        $modx->lexicon->load('nl:anylanding:default');
        break;
}