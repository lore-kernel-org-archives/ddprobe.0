Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405BF7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659031252;
	h=To:Subject:From:Message-Id:Date;
	bh=dfj1G3aWL8Sd0uFJUp+b/zDLY7dzZwHbBInlI43e9zc=;
	b=QCK/u32jcYs1N6eDtKqykrIxB4bgz/WZXJ2pmzp9uTue1lh960UApQRVPVgcmoWG
	AFZwtikEOlSJi6J+ABLfFFLMorkOylwTtS5ItJ4E8ODKfdESmo4PjSzC1+kDaAyjXMZ
	UbJAoxatOAIHSA2LZuvRXUdgEtvi1VziOSSsYJso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659031252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dfj1G3aWL8Sd0uFJUp+b/zDLY7dzZwHbBInlI43e9zc=;
	b=KzIEx7AY5gWfVXfMYDUgdj6MQaxcwi18RrPDHs5ZAwEZdD5RPH1adEkous3BfmhL
	xNRfctXZrb3S3i3FnAABrIsfPPCy8pSfTgbgTJ5ltB+vXmO+787aUZ7FuDZyzZ+7xGd
	euNLiqYIPuW54nkfB45n0p4xYVyg6G/wKypFaC8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245f7ee31-ce0b2318-e676-4a8f-a607-5315a995917f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24c93c452bfd8e6b556ea5c8f9a6ffd416cdbed3623c41babce8595ddf69f95a
Date: Thu, 28 Jul 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659031252
