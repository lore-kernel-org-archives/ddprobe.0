Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796244F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645245384;
	h=To:Subject:From:Message-Id:Date;
	bh=H5kG/C/i4tkrzDB6As6DMKStoOjnzXWLd4ER7SUF2hg=;
	b=eHEAC1VKzF2Lr0HPNVq3ozASf3nUwAb7giX49+mV8+k/EiuwAzbGtxgbHKgBknj8
	JcqMeT6jYuAEW36VEt10qUrozgzRPx80EcNZTQS3dkAzyw13FT9sE17sOLlEsarctWK
	I7OzFXOjSoMD4tbyXMnFmydGbHmd9KdP97ONF1XQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645245384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5kG/C/i4tkrzDB6As6DMKStoOjnzXWLd4ER7SUF2hg=;
	b=l/Wr+7ockaNpcc35rL6R3J9jG+yocQw+Bx3rr2arBdobxyJ96ypdVRxQDPEFk5SG
	Pars8NdPClqO9n1Y9X3RNfEdHMdztNmHr2cMoP+JiXE2VVKOkG4kTCWq1K5Q+Gt49tU
	nKWCEB10f3VOCNPDtfBYxYENfBi56nyCJJyL9ips=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10444826-2ca96c4b-f435-4bd8-8cee-70c1600f0a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96418f38026e2e376d6845198bef92cf9ed9fcc2c5e033e9a5384ba618b77920
Date: Sat, 19 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645245384
