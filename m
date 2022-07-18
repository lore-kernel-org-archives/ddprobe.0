Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490B5ECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658146012;
	h=To:Subject:From:Message-Id:Date;
	bh=nKcxw9gFMqwdpT65AyaueiRPmZFFa74nJFszF6Jk+Go=;
	b=B3rgxA0c+xRbFgE+1hXbwVseUEa2EVUElhPdbWp+pwjzbmO0ZrrNT2tIUfWPKJ2p
	zL2mTDCerze087yhe/ynKeKV9+st8nq/G3/TCGzPSwY+qy/Mbxat9mKi7hNAq6SlKuu
	ZZTh1MrilzW2Kf84H3BNr3B+uqtdPxp6Ht8qb3Yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658146012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nKcxw9gFMqwdpT65AyaueiRPmZFFa74nJFszF6Jk+Go=;
	b=j5V6RnkvmAQlcCKV+WBB64pXatMzzQSUe7yEApaS74VsL3JlANgRiXV/WjtcgAwW
	/ps+vnHN5cMStDre1iMl0V8aN50tXMb6+N9/Qm+i2pBzxRVGbsIB0Z8YRDfhu5ITvFV
	Hf1M4+gvftbz2/rkUp+dy90Ema/KJZwncJ2n2ZaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211343cd2-c9a1db33-4493-4617-aebd-6a2e051df592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30dbdf47a5a500d70687802e0405df8b762ff4c3a5266ccf07a409635484dec6
Date: Mon, 18 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658146012
