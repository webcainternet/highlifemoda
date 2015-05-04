<?php  
class ControllerModuleSidebarSearch extends Controller {
	protected function index() {
		$this->language->load('module/sidebarsearch');	
		$this->language->load('common/header');		

    	$this->data['heading_title'] = $this->language->get('heading_title');
    	$this->data['button_search'] = $this->language->get('button_search');
		$this->data['text_search'] = $this->language->get('text_search');
		if (isset($this->request->get['filter_name'])) {
			$this->data['filter_name'] = $this->request->get['filter_name'];
		} else {
			$this->data['filter_name'] = '';
		}
		
		$this->data['sidebarsearch'] = array();
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/sidebarsearch.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/sidebarsearch.tpl';
		} else {
			$this->template = 'default/template/module/sidebarsearch.tpl';
		}

		$this->render();
  	}
	
}
?>