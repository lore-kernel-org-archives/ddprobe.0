Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF334C6E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 18:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652465701;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZP8F/sXbxtftOGD5YvhcGw7MQrgGFdrSwjUKefzqXQ=;
	b=ZWcOs313EShp8p7PIVNwm52K9cOwQBvmjxug5mcywtADM1BUNtTjUm/KJ4TzjoM3
	IK3+bxLDERKIsFcN6I9Z1etN1bWCGUKmD8Oi8uFWZH4f8OWy7spgHl4Ws/pZVK17lWc
	Uf4d3q4F0pPvmbTK+ZxwclPCiH8ix5Eb0jtqDrzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652465701;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZP8F/sXbxtftOGD5YvhcGw7MQrgGFdrSwjUKefzqXQ=;
	b=bg4PINToRzlxapDZ9E8ADDOlOO9Cu66QO1XpvcFd3q71a2yMTq6AyGsbR+qKx85C
	LLFeSScfp4Tcfpu2Aw0dWg9Dkqv8J87pxXOjaAQhxPtFk9nZzBS897mL/D+whwp6byH
	LFBxaVDr3r5//YIriRnY33cGIlGeaXO8mpev1UIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bea191fa-a07bd4d6-bd2c-4513-bbb8-536cd478fac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419c6ff8c5944d92828b046f2ec48d83086817868d34028a52826ce5a732b711
Date: Fri, 13 May 2022 18:15:01 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652465699
