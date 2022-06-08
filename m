Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3C87B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654682639;
	h=To:Subject:From:Message-Id:Date;
	bh=dEbXcZeKcFDPmgmQzonregQdfa8uKAHpBHfHaA0pG9E=;
	b=eGOo5ycW6oYCl1MWEAS+gvluFAiEZ2EGrc3vv7ZjpceP7wMRWnL4Jc5eXJni64yb
	5+86hvPAXKjzSTo2K18/vLtznu8ukMV6QS1uyvOb3c8qkx/gyR/dPrpgJoU5598xiJz
	fOSQixVITAET3MBwcZP4BIDADpI5yQNBQNCT5nks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654682639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dEbXcZeKcFDPmgmQzonregQdfa8uKAHpBHfHaA0pG9E=;
	b=VmCXbQ1awU1SkrEYSJi1cgILl3Gm0w5cgIqd5ZhOvIQ0IUwwMDY5qAlytOH7LaTG
	SVKIS5iy8RQg9Lai28beKx6Vd1AxQt1AgzL3qfS8f2o+4azF/3OT4BG2pKYcJxsesOJ
	+VlNtzl/UvYVADeR5XIPA7ZMmekCePM/ijVZIj4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142c55b98-037d82cb-4699-41fe-bcac-b12613e0a7e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 009d3fd3946642f9e2552a2298de03066854765d537bfec8aa91fd32342a24c9
Date: Wed, 8 Jun 2022 10:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654682639
