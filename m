Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B147B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 16:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654704539;
	h=To:Subject:From:Message-Id:Date;
	bh=hLaT04oSC8E001aji5D5PfHrO4dRUPdF3UJ6R15FDfE=;
	b=hVICJ7s2OT7gdW5uRHikL48rZ5wdNjniYUmFcSSsN6oznv+duRceuMflj4Oj/CUi
	oe0Pi3RSzUSCqg9rDUnQEh4hBNLJ8v+inmjO+pEF2KFyQisNHZh0LxJLMFswifjHFgY
	UlHJq+4OP+x5DGYwVRcaGvGzEL39Aiv8UAiVF3S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654704539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hLaT04oSC8E001aji5D5PfHrO4dRUPdF3UJ6R15FDfE=;
	b=CxXxIG1brFGfTbGkhO8W10VM7/aTLy6YYYA/BHBLMVittIzvROuyrt34nVFmAVcq
	j7ZKAZ1qFq9wgkBNrFkXJWQxY/+GMrHPWPPZXArgFEgucwesNFPX8wsPVrr2H1qkmQ4
	pcBNBZRSA9J2NDb0Xff+BPbut2BacC+UfHo4Q3eI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181441387b4-20ff876c-3d5d-4868-8631-73a05678ae16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 790cbaef98e2d3b3aba0826865e636f8093ff03098070808c05e80ea63b8fe7e
Date: Wed, 8 Jun 2022 16:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654704539
