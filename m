Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185EA46AC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653642059;
	h=To:Subject:From:Message-Id:Date;
	bh=3jLHnETKupRIeJIbXpc6jI4zpLegsw6HVBtXj5L9QNE=;
	b=DXaM3EtzKoUb2XJLTnGGhH4IdhcnU1YE6EDMAmgmooKOdros1UYGc7t7W7tfUmw0
	ZwHQaDNWF8B54PIVsz9NRKayLxTBMtnB3XuANYt00hH8n1XuTfuFUwdVXNCiQ0+Bv8F
	M40sDRfEQIZIOZfP8XdlT9zHZFeSRzS8QVX5nfbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653642059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3jLHnETKupRIeJIbXpc6jI4zpLegsw6HVBtXj5L9QNE=;
	b=iGCX70poyC2mmBz7pI+BN0RsWVX0u5wLYp3CTYHf6Lu2h7rasolmUFbYbB0IgETe
	vxCLgASRiZ0dc2CMWXROX/gjDkEhbll9K1tPV0SB32eVt70dHIGgNHml63k+IRA3UOA
	qcFXGUATLRVbjVXh2JCe0f61b61ntTnyu+qbB24Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104bf5e46-9a45f486-a226-4448-aa1a-348730a14bd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c90c0ec3112b0ffe44a654c0d2ad5b1c16a30ea579695f05a1b41d4a55147687
Date: Fri, 27 May 2022 09:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653642059
