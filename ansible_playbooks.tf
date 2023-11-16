resource "ansible_playbook" "prometheus" {
  playbook   = "playbooks/prometheus.yml"
  name       = "prometheus"
  replayable = true

  extra_vars = {
    var_a = "placeholder"
    var_b = "placeholder"
  }
}

resource "ansible_playbook" "grafana" {
  playbook   = "playbooks/grafana.yml"
  name       = "grafana"
  replayable = true

  extra_vars = {
    var_a = "placeholder"
    var_b = "placeholder"
  }
}