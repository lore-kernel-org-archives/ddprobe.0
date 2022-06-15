Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA715A1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 00:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655252399;
	h=To:Subject:From:Message-Id:Date;
	bh=zMGOZpP6TBEuVr1l1TH7bUoC2t8ALO04OgecyDkZudQ=;
	b=I/0jgNQilTxcZXtEqw1Lm8GIQXy3CEY+5qVlvUM9LpYhjGhiEGnK826QIJBEN+iL
	kDMfe02RL1IM4gSZw8ICTxuEAM0dBI2URSuY5plOb/cQ1D1cghEUV4sY8OjW3IIE5zF
	CUNaG3s1SDVCGHZW+LbPs64qo4+LDZR8pCKaBw10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655252399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMGOZpP6TBEuVr1l1TH7bUoC2t8ALO04OgecyDkZudQ=;
	b=SAcEYPhI5Hp8mqmijPCPNrRVPno625QTULjdtqAfIX6wc7nQ/C3/tzeDjdQlwzj+
	yuWzxMjTF3QxSbXtoRaGH4WhhrKITz8MWmXYl92Hl710Fgd4NPMLxQipnf2fBR8o8Jt
	HGCWqdr3UivqTrP+sE/bWiuXuggCxBBBZM5OF5PE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164bb34a6-80049303-39de-46e4-9149-4d0ffe1b4275-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8037272a47dd9af6985f5dc3c30fc71ecf688863550e160e3cacfc0c12f8d44f
Date: Wed, 15 Jun 2022 00:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655252399
