<?php

class ModelExtensionPaymentGate2playTabby extends Model
{

    public function getMethod($address, $total)
    {
        $this->load->language('payment/gate2play_tabby');

        $method_data = array(
            'code'       => 'gate2play_tabby',
            'terms'      => '',
            'title'      => $this->language->get('text_title'),
            'sort_order' => $this->config->get('gate2play_tabby_sort_order')
        );

        return $method_data;
    }
}
