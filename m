Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92FD7F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 18:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651084798;
	h=To:Subject:From:Message-Id:Date;
	bh=j7xn0CF1OgSxt2+EQ04Hpt/lmhlGkak2uBZJkV3B74Q=;
	b=IHA8SBxytB2B+PhakCdolr4E8MkYjtg8Qu6jWDH+M5Mb1e5xYUuGY+zrZ1o3prX1
	aN4DUigR3yph+g0cbk5KW5jBJTu7eqfn9PXxPJ8cHxJ74d+C+2PuUJCcIHeti9DBv/w
	8kDyTXrvC9LMbhE68+NFpuXPMGEMUEgFD/RDEAag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651084798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j7xn0CF1OgSxt2+EQ04Hpt/lmhlGkak2uBZJkV3B74Q=;
	b=fnuiaMxRHvtRomHjFLBl1PYimEfxsNB7kXEYQTAmg63AYgs3cYVmcuQW0Ud9/O8n
	7rZnJuPwiIhi929TjVUBfrpX0qhJU4jK2epTBYKrwS7BarZsrGXBdyZBIJxLyJ1qH89
	IcOkkoaRBpG7IJFKuawzgFV32kw8fel7O7VJKB3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c52a943-1c6603e2-5ab3-430b-be80-436153c13602-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93ff68a4e033ae2b88197aafc299294d8dfa600c17425d16c7d6f9a4d6d8bacd
Date: Wed, 27 Apr 2022 18:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651084798
