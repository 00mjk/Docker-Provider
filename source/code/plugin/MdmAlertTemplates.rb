class MdmAlertTemplates
    Pod_Metrics_custom_metrics_template = '
    {
        "time": "%{timestamp}",
        "data": {
            "baseData": {
                "metric": "%{metricName}",
                "namespace": "insights.container/pods",
                "dimNames": [
                    "controllerName",
                    "Kubernetes namespace"
                ],
                "series": [
                {
                    "dimValues": [
                        "%{controllerNameDimValue}",
                        "%{namespaceDimValue}"
                    ],
                    "min": %{containerCountMetricValue},
                    "max": %{containerCountMetricValue},
                    "sum": %{containerCountMetricValue},
                    "count": 1
                }
                ]
            }
        }
    }'
end