Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F9D3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645998684;
	h=To:Subject:From:Message-Id:Date;
	bh=u9OmV8peL6gmefn0DyOCDnvEpMTHpcPBHR0hQ9CPUW0=;
	b=KvZn2ZBFANJ2bRqVSwt+BV2Mu8vjrrvmVK04TKPUBJxZ5CUF7nQqu2apIzziUQs0
	NWqncmcRtfWMLenjGlxPggAz1BvMrTxCzyRLjn/dZuGiG+7izxNG9jgevepNVjwnSp8
	FXfB/Dwavp5sHjeynB8kVlVCGqAMUFs1RLXKQDXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645998684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u9OmV8peL6gmefn0DyOCDnvEpMTHpcPBHR0hQ9CPUW0=;
	b=T8D0tJZprBVMO5lvOcwBW/VZYD565OGj8NuBKLb3cfotATDzU27DSP6iPmvVwbgK
	9wlavL87lMyPZwD1gPuo+I+xX6zgWzBRggjCTlxiMZvB3MXqd6gcZfMDviY5AxP2KwY
	LPlgrdvuCBHuil1324hfev6e3U1IUJY/oPtuKRKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d2aba57-c2ff3469-df9c-42e4-a38f-23ed0d894f11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dceb67ff75998d8e2c34051532a3217147407946bdc9f2a227a73f5ecffec76
Date: Sun, 27 Feb 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645998684
