Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14584A20
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 02:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651111318;
	h=To:Subject:From:Message-Id:Date;
	bh=jFZ8umajw1/VCVrKHo+3jecYLmNQiKtc9VcIIZEc4Sc=;
	b=DbIhndKrfb6JKkYht6FuViQTsQOkp3VpT+uwevQsGzlw4p0tWRc4xzmcjOfWnC2p
	HKdkEynAcSvy3PhPFbsQYSzU/3DuorU8pQnhouM6XzlM1uiZ6aJqzdXUBH2ppVSvKLD
	gk+DLdE0Y8qJjMaReaKam6VVXLrro12MgfxwmTLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651111318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jFZ8umajw1/VCVrKHo+3jecYLmNQiKtc9VcIIZEc4Sc=;
	b=etb2Nf71zs5Gwvwp+sghYvl7107WzboH3sw1zl3RfvsZrFOouVvfZacmLgi0xe07
	ABVdcquPcfG3HDRx/U8D0lKYlmm8w6UtaECENt8rKkqhKXpcC8SqLxfANQhVk9eAq+R
	2risZnuMiGL1FU8+pIvF9BNjHTz2vWmQiZaz/wVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806de752c3-3702b9a8-c102-46de-8d38-482373e93088-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ade38f54930271fcf7df3e3167aa58259a2ef9fabbefe97cba96fb2d81ac3d5f
Date: Thu, 28 Apr 2022 02:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651111318
