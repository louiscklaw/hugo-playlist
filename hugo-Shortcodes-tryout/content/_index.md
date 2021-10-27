---
title: "index"
date: 2021-10-09T12:25:53+08:00
draft: false
---

index helloworld

{{< githubrepolink "louiscklaw/portfolio" >}}

{{< wiki "https://en.wikipedia.org/wiki/GSM" GSM >}}

{{< br >}}

{{< boxes/square >}}

{{< youtube w7Ft2ymGmfc >}}

{{< vimeo 146022717 >}}

{{< tweet 877500564405444608 >}}

[Neat]({{< ref "dir1/helloworld.md" >}})
[Who]({{< relref "quote/first.md#who" >}})

{{< gist spf13 7896402 "img.html" >}}

{{< gist spf13 7896402 >}}

{{< figure src="HelloWorld.svg" title="Steve Francia" >}}

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
