<#if executionData.job.group??>
    <#assign jobName="${executionData.job.group} / ${executionData.job.name}">
<#else>
    <#assign jobName="${executionData.job.name}">
</#if>
<#assign message="SUCCESS Job <${executionData.href}|#${executionData.id}  ${jobName}>">

<#assign state="Succeeded">

<#assign noValue="none">

{
   "attachments":[
      {
         "fallback":"${state}: ${message}",
         "pretext":"${message}",
         "color":"${color}",
         "fields":[
            {
               "title":"Job Name",
               "value":"<${executionData.job.href}|${jobName}>",
               "short":false
            },
            {
                "title": "Job Start Time",
                "value": "${executionData.dateStartedW3c}",
                "short": true
            },
            {
               "title":"Started By",
               "value":"${executionData.user}",
               "short":true
            },
            {
               "title":"Project",
               "value":"${executionData.project}",
               "short":true
            },
            {
               "title":"Environment",
               "value":"${options.environment}",
               "short":true
            },
            {
               "title":"Issue",
               "value":"${(options.issue)!noValue}",
               "short":true
            },
            {
               "title":"Service",
               "value":"${options.name}",
               "short":true
            },
            {
               "title":"Version",
               "value":"${options.version}",
               "short":true
            },
            {
               "title":"Feature Flags",
               "value":"${options.featureFlags!noValue}",
               "short":false
            }
	     ]
      }
   ]
}
