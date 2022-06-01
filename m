Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FBF362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654071479;
	h=To:Subject:From:Message-Id:Date;
	bh=n5P5km/S0fxYl1P5FfAMaUOW6T5Z3Ep0Hgv+UliU5B4=;
	b=alVvdph5QAi12mbwJOF3ivxTB+0Hjn/L4d4NlasN70aYWjps2mH4Doff7BXHK1Zx
	HIh0CXwqGV6Ru3K3upieWyM66c8rSjHd/fRtPM7JQ2lw4QDfRek5n6n/u5iz5NKgYFn
	6xlaim5oawSewQi0mCgELdn/vJYuRNQJDhBIQXGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654071479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n5P5km/S0fxYl1P5FfAMaUOW6T5Z3Ep0Hgv+UliU5B4=;
	b=hBg+JwTZ6XwMixgXC86GjpwIoqH0X0G2knZk4zgHoFLs86qj6TluVn1kJb8ush3T
	PkYInpuieoSZ75Imgy9BAIzAGrIN8KHZBMIyPA5NXyj1lq7m4rJKZ944V+orE7J5m9f
	nMXWElHa21+7ft+ugy146AiOL0q2wzv7k9yezItc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e57cc1b-4b33172f-4ab1-40c6-adf2-a41ad25c7b84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cc53e15ead0c9fee0d447bdd872c4a9493f05c819dc1ebb46e9f0dc4b86edb3
Date: Wed, 1 Jun 2022 08:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654071479
