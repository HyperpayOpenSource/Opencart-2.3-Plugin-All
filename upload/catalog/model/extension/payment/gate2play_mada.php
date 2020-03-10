<?php

class ModelExtensionPaymentGate2playMada extends Model
{

    public function getMethod($address, $total)
    {
        $this->load->language('payment/gate2play_mada');

        $method_data = array(
            'code'       => 'gate2play_mada',
            'terms'      => '',
            'title'      => $this->language->get('text_title'),
            'sort_order' => $this->config->get('gate2play_mada_sort_order')
        );

        return $method_data;
    }
}