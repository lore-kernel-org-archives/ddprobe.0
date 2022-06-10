Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847D9362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 05:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654837739;
	h=To:Subject:From:Message-Id:Date;
	bh=Mh4x51Ad9oZGkltqp00mJMLHj5RKcU5NpK2+TbUAPXA=;
	b=I8JU4ojdpcKX2qC51maRN7ItYhdE4KCFnvwu37vUJA2e9RsPS5stvjfw0EZgwoZ2
	V+j1zGNYGKr41BnN8zJbwoMMlOlqP7vV5I894KRZijTYwAUHju+WMaectpkt4IZensq
	pv71Di+504/JEaqpFzgxHc12NxUXeOBfRDZB8aTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654837739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mh4x51Ad9oZGkltqp00mJMLHj5RKcU5NpK2+TbUAPXA=;
	b=I5PLASvB7crRhwjmQKDgSaMpaqlFAZ5SyTFBpCrHOeGw7kx5RCdQEqa6lNJnbanx
	Ne1Gvn+lTpzI/+RuVmVZ5fx2F3tLSOwSCnKont8zzTL3ZS2qfis/W+GvK4b/+yzVaRv
	2NxpR5yIIT7MY6u2NYPFrb4PnMYsA2tn9l4vgMrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c03fee7-23b2a6a2-56de-48dd-a2c7-f4929c18472a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a9b52686e8fabdb6521e53d2ec58cf73542e62b7565abdf35fe5a7908fbb2ff
Date: Fri, 10 Jun 2022 05:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654837739
