---
title: "index"
date: 2021-10-09T12:25:53+08:00
draft: false
---

index helloworld

{{< boxes/square >}}

{{< highlight html >}}

<section id="main">
  <div>
   <h1 id="title">{{ .Title }}</h1>
    {{ range .Pages }}
        {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
{{< /highlight >}}
