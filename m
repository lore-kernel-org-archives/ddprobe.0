Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056167B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 04:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655613479;
	h=To:Subject:From:Message-Id:Date;
	bh=14MHZVEwP1tXrT4n+49KoI3orZh9MRgtZFpknGZpg/w=;
	b=DjAANB0eDgk0w+3GBGgegTumQ/s2/fynrX37q4ZWkKA1SV+MKjz7FQyGob4KByr7
	eZo/rfqEjRdhnNN3EcneG3Is4bPA2GxGOw8FXHS/iU3a/pC0V73ynBS7ADW3354ZOQg
	zESpEmYhd9VOtEkRYABKKh1+BDyBCRmQVwPnmaow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655613479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=14MHZVEwP1tXrT4n+49KoI3orZh9MRgtZFpknGZpg/w=;
	b=At39ON/POP8sZKwezSUqYFtBG6ejS2b2pprXMxOmY/4hCVllaCKhQktcgxlti178
	y3ST/6w4UJgQi8AKR7cEpjCaxqfdzUtR+KjY5xnzoql3BzuErZD+4jvOVyYVl2q3BvU
	hE766tTVH4EdYMa+3Fd/IS58urtxXchyLpGbVsQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a40d944-711f08b5-6300-49e8-98a8-c4896a8282f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baeae6dbab5dd5ef61df3cd0300c6393d8d8fc45d90e34615f909fd9322d3402
Date: Sun, 19 Jun 2022 04:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655613479
