Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2294B7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657429012;
	h=To:Subject:From:Message-Id:Date;
	bh=Ozd3czBXxmSMGUDKGxf1hnyOV1eKFq+XW/UJ1XEVDMk=;
	b=PPx3adXjdtl70q/rgHEWKkpGgFJAN2uBcU9f95SXeCGlFEbsDxb/aXT9mIFdL149
	7r7UxvKBcCD9JWddaeRqnIOzp9SB7MPaBpI7rxrIfbVjzquiKOasLzuKT6o2SKaf3d2
	Nb8ddL2trPYgAl4a9C5cGgQ75Ga6kPvHVxmb5wDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657429012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ozd3czBXxmSMGUDKGxf1hnyOV1eKFq+XW/UJ1XEVDMk=;
	b=g2vxDjMxGeXo7v2mAE8LtS7sYEOkv8YsGleV3OfO/pMQHGnRVIIREbjjC05K+meY
	uG53imYEXeBEl7mWWa0kPmCVDVyavqxBwme8lXsCicBX7cr/fZb7Tje7e3YmxcCAm8n
	yljS6V3ueN2wnmXiYZyxpkg9IQUu9C0xgmn4bjFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e677af60-a036ae17-3007-443f-99cc-e96829c7edb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a57b921b3fc48c8377258a8c498a8a66c1d380f68224eecf68fa0fe3855728d6
Date: Sun, 10 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657429012
