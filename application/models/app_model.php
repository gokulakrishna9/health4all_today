<?php
class App_model extends CI_Model {
  // Add default column attributes and JS events to table column
  private $db_tables = array(
    'table_name' => array(
      'primary_key' => 'key_column',
      'columns' => array('column'=>array('attributes'))
    ),
    'answer_option' => array(
      'primary_key'=>'answer_option_id',
      'columns' => array(
        'answer'=>array('type'=>'text', 'value'=>'form'), 
        'question_id'=>array('key'=>'question', 'value'=>'parent_record'), 
        'key_a'=>array('type'=>'checkbox', 'value'=>'form'), 
        'answer_image'=>array('type'=>'image', 'value'=>'form')
      )
    ),
    'answer_option_language' => array(
      'primary_key'=>'answer_option_language_id',
      'columns' => array(
        'language_id'=>array('key'=>'language', 'value'=>'parent_record'),
        'answer_option_id'=>array('key'=>'answer_option', 'value'=>'parent_record'),
        'answer_in_native_language'=>array('type'=>'text', 'value'=>'form')
      )
    ),
    'grouping' => array(
      'primary_key'=>'grouping_id',
      'columns' => array(
        'question_id'=>array('key'=>'question', 'type'=>'select_box'),
        'qroup_id'=>array('key'=>'group_q', 'type'=>'select_box'),
        'sub_qroup_id'=>array('key'=>'sub_group', 'type'=>'select_box'),  
      )
    ),
    'group_q' => array(
      'primary_key' => 'group_id',
      'columns' => array(
        'group_name'=>array('type'=>'varchar', 'value'=>'form'),
        'group_image'=>array('type'=>'image', 'value'=>'form')
      )
    ),
    'language' => array(
      'primary_key' => 'language_id',
      'columns' => array(
        'language'=>array('type'=>'varchar', 'value'=>'form')
      )
    ),
    'level' => array(
      'primary_key' => 'level_id',
      'columns' => array(
        'level'=>array('type'=>'varchar', 'value'=>'form'),
        'level_image'=>array('type'=>'image', 'value'=>'form')
      )
    ),
    'question' => array(
      'primary_key' => 'question_id',
      'columns' => array(
        'question'=>array('type'=>'text', 'value'=>'form'),
        'explanation'=>array('type'=>'text', 'value'=>'form'),
        'question_image'=>array('type'=>'image', 'value'=>'form'),
        'explanation_image'=>array('type'=>'image', 'value'=>'form'),
        'status_id'=>array('key'=>'status', 'type'=>'select_box'),
        'level_id'=>array('type'=>'level', 'value'=>'form')
      )
    ),
    'question_language' => array(
      'primary_key' => 'question_language_id',
      'columns' => array(
        'language_id'=>array('key'=>'language', 'value'=>'parent_record'),
        'question_id'=>array('key'=>'question', 'value'=>'parent_record'),
        'question_in_regional_language'=>array('type'=>'level', 'value'=>'form'),
        'explanation_in_regional_language'=>array('type'=>'level', 'value'=>'form')
      )
    ),
    'status' => array(
      'primary_key' => 'key_column',
      'columns' => array('columns...')
    ),
    'sub_group' => array(
      'primary_key' => 'key_column',
      'columns' => array('columns...')
    )
  );
  // form-array: mapping from JS-component to form element
  // form-name attribute: table_name-column_name
  // Add form specific column attributes and JS events to table column
  private $forms = array(
    'form_component'=>array(
      'main_table' => 'table_name',
      'masters' => array('table_name', '...'),
      'form_attributes' => array(''),
      'column_attributes' => array('column_name'=>array('attribute'=>'value'))
    )
  );
}
?>