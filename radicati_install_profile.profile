<?php

// Use hook_install_tasks to add a task to the installation process.
// We want to run our task after the profile installation is complete.
// and enable the radicati_default_content module.
function radicati_install_profile_install_tasks(&$install_state) {
  $tasks = array();
  $tasks['radicati_install_profile_install_default_content'] = array(
    'display_name' => t('Install default content'),
    'display' => TRUE,
    'type' => 'normal',
  );
  return $tasks;
}

// This is the task that will be run after the profile installation is complete.
function radicati_install_profile_install_default_content(&$install_state) {
  // Enable the radicati_default_content module.
  \Drupal::service('module_installer')->install(['radicati_default_content']);
}