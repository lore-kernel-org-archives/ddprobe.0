Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC15217E7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 01:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652404799;
	h=To:Subject:From:Message-Id:Date;
	bh=R4rUEljw+r6bBLu3tpOtl8ayO0M6ZDZR/2WXS366wvs=;
	b=SuEhkZBXkT6Yj1cW58UlV+24/ktdDE5tRRhx76rIIipPYF6DZAFx5WFmMcRt/p49
	Wmn7s084kRNKeZ+2UkD120M6HzyQAaEgRMlUfgSN7zTHosXkvYkKOa/R77XkxvbwBWU
	4sJPmo5wSd90+mk1wggP4LXtQBx3DQu7FmZjg61E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652404799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4rUEljw+r6bBLu3tpOtl8ayO0M6ZDZR/2WXS366wvs=;
	b=VfMlX0Nyo3LeOikuGgnfYhSzMVWLw0B96IrHjVEAf+JH2+cgaRIMbPinHTrznvLe
	MP6BC8a57HalEvVJgjZhh2kw7uWXzQzGlmLLq0od8cChhog/UBIqUoN217GhUpK8uAE
	ySHBGl79DOegWkFayxivwIqo1nHlTkccwuxAY4JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb004715-813e66bf-9300-480d-a556-d691e714e9d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 154f7fa87b685118ea1300bf75665778a59995404888079f8c9bbd64d0282423
Date: Fri, 13 May 2022 01:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652404799
