Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082557A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656505612;
	h=To:Subject:From:Message-Id:Date;
	bh=I5pmIMt7fZWlsQggHDzyIIreOv+GPr829YeAKxIDNuU=;
	b=OBZgva7vgyg6YmRgNRs05H8gGTesl5cz/ucEbrllWkLjF1qn4Jz4GHB3LPedhboB
	hwXM6H0lgGoteMw6hkmwTT0QeqOwaq94BLv0ZhmX90BORuqEd0xsrkeU1hmOdY3VxkR
	a98sCo72Xr5KPiAJkvsNOUh1Ad4uUKsI63Y89S8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656505612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5pmIMt7fZWlsQggHDzyIIreOv+GPr829YeAKxIDNuU=;
	b=RnEUHL/8eDY2YE2QfpdN13GXfOqXjw+79imFdrm6ZgQ1Zhse/gS06m+ypopMn1a+
	xd5dCIvPc924xJkLB7l72pFe652eHWxNKg+l6gfFgy2I1UBTDh8mPb1BHp7q/KosBxa
	oEVfChrOfBQTZB4gZHJlMAD7E0TSPSd0cqc6jv7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af6db80f-0a9e8eb2-4c37-4074-9cb3-7a69b6598119-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a37c620bd1a15c3db14d88d9bb142747adefff056f7a02c62c75026b11e770c
Date: Wed, 29 Jun 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656505612
