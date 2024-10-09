class profile::app::prometheus::server (
) {
    class { 'prometheus::server':
  version        => '2.54.1',
  include_default_scrape_configs => false,
  alerts         => {
    'groups' => [
      {
        'name'  => 'alert.rules',
        'rules' => [
          {
            'alert'       => 'InstanceDown',
            'expr'        => 'up == 0',
            'for'         => '5m',
            'labels'      => {
              'severity' => 'page',
            },
            'annotations' => {
              'summary'     => 'Instance {{ $labels.instance }} down',
              'description' => '{{ $labels.instance }} of job {{ $labels.job }} has been down for more than 5 minutes.'
            }
          },
        ],
      },
    ],
  },
  scrape_configs => [
    {
      'job_name'        => 'prometheus',
      'scrape_interval' => '15s',
      'scrape_timeout'  => '10s',
      'static_configs'  => [
        {
          'targets' => [ 'localhost:9090'  ],
          'labels'  => {
            'alias' => 'Prometheus',
          }
        }
      ],
    },
{
      'job_name'        => 'primary',
      'scrape_interval' => '60s',
      'scrape_timeout'  => '60s',
      'static_configs'  => [
        {
          'targets' => [ '20.84.115.115:9100'  ],
          'labels'  => {'alias' => 'pe_primary'}
        },
      ],
    },    
  ],
}
}
