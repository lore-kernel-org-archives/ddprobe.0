Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40A9A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655782919;
	h=To:Subject:From:Message-Id:Date;
	bh=eGyz57IyWmB+W1RTCFP+03Wx8Dk6KsJrDKDXNMD9HAc=;
	b=k48epidCHCGPVsNuTS7ovCZXzZWm15ATJHm+9yUIa3urwC/NHgjvx8z4CbMjHPNT
	0hOQK5rNqLPKfA1t8sv7w8XrUfyiL6ryaN5CvdnPnKGFy6Ro8eQiUdgEEyW9Six2hRk
	KQV/j6nAAZJiptnbXZO7ykrZrff01lgaa8tuR7tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655782919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eGyz57IyWmB+W1RTCFP+03Wx8Dk6KsJrDKDXNMD9HAc=;
	b=iEDi/CVFkc4UcF1oUfytys1Pe6oXLlYMHz1Jy2S3B7EmtRIRtU90xlcSbIij21Ga
	eV/rjNlvrwM9FG7drI3jkqLMPxcCgj4ckMt9Eo4JBCrcFovoiv/iTlgRJ4TkqhDpHeb
	CsB6s9vGf1CD47A4gs0Q2DkYVeenJupDbjbvs/MA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181845a4c38-46372e7d-70bb-427d-995e-fccbf6439e4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aff23c5c15b289d90db1c19ed0b6c507fac97b7d98ca268a6a41ee9b900f197
Date: Tue, 21 Jun 2022 03:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655782919
