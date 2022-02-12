Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E967C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 03:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644637828;
	h=To:Subject:From:Message-Id:Date;
	bh=Ue00XpQnGIDeEJxxrdvIq8ffTQgktEtzgWCyJBtn3lU=;
	b=do6FZzi2qzVA5euR20E49yByCb3mGM+i2iRZnhk5pH9aKPSs0Orm6SfqF9IreMfg
	XQ8OC/HX3wr/OWF+9g5tWPaZrSwLVDjPk647voHreYfuzeE8kKxuL8FZhF2wv72b/Yf
	gOfPo6JnOaadUwmBrLr2B1/XsLNmKtgwkSChWEm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644637828;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ue00XpQnGIDeEJxxrdvIq8ffTQgktEtzgWCyJBtn3lU=;
	b=DX6a+zCzlYGfg7FVQy63pao57e3GDhOHPNk6iQL6v5kSjflvtScx7GeCNhHNG0eT
	CXpXYQGNgxqMCEuXQ/3WDEKP/AGifWGRiYQE2Vb8wqjolWCj1IJef8RHa7vVW4Qti1A
	uRn6jYNuGOn4AMmOayLeKRoTyN+RmCIkKWWsvBuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec0db452-42262246-4d45-4361-82ae-f8003c052cb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 946da594d9c7da1db4cca5f46cfbe63186419fba1427f24a8753a9543975401f
Date: Sat, 12 Feb 2022 03:50:28 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644637827
