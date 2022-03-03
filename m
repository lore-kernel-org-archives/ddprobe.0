Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5A136A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646281585;
	h=To:Subject:From:Message-Id:Date;
	bh=7bASEzPPQw8akB/1RGrzkUsLnWcvzhoqaCJTO/1qtR0=;
	b=D6Bcx8HKQN2I22CbF3e+g9MjE635HoNx0pDJwTQoSPMTP+xZxE8v9GPxJDQ/2zgf
	SJ4e56SwDdn+bYYTtaBETiOvU5xLO7Pl26dRTcuYkfPHMKyyEmiSil/Rj3Yz477ZWbN
	NvMrJzerEyEI3Zxb1Xg2EdbQduq92cMFX15GnbME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646281585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7bASEzPPQw8akB/1RGrzkUsLnWcvzhoqaCJTO/1qtR0=;
	b=UVsDeNAf+GrLldzzw4ZcMkQRvq85/cWCVVVkqVZYJx32ZQeSpCmv1jqfAQHWKO7m
	a3rDKPqrLBNKXlEn6j1SfdsgYrdV55ICmB9V4kdmxc/rWB6yyblnP6YgPv6T+0Ly7wB
	526ALrkmqQRHr0/U6kTWhHfBvNasnIYm1ZBJ+IRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e07709a-e9d31d90-09b2-467c-8c94-cfdb2d645413-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56b5a72db4d5f655bf8b97289040d4d4379a461caf80c027b7bf0dd72e8a78e8
Date: Thu, 3 Mar 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646281584
