Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0F7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654866839;
	h=To:Subject:From:Message-Id:Date;
	bh=ZMgulx/5VX/qe8FAA/eQXIXF6TC3tONVEcw5UmYtpWU=;
	b=NxVh10dJ0Cwys0mtaBxo4qQLygJJG/Fptjhc1qS8ZEyZSwJRTGq+ztLfHN8nSi7Q
	Mz7kGpA56QpUQe5+ltoFHqNmPGq5wcodhjlzGvlL7J/cb1FZcHA3TJ9AmMFlV3LADBw
	GbeC1ZH3hpd6OIaolNTrhxQ2dWTe/ugQ1QAEUNO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654866839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZMgulx/5VX/qe8FAA/eQXIXF6TC3tONVEcw5UmYtpWU=;
	b=KwDuG94oczEPi9PnIPFZL0RJV5RnH/BAR3i5osBVxT7fvTzdxcH1Giiqg8+RlTVJ
	PGWNFgeJeoO3QyUt9RyPooIleG5dgSzRv1/6lmzFfNL2WwDZB8+kKqMrY7oxTWN1B6R
	UZHLqIJ98+9BoZvFZNpk0fXpNKjUYsE4LJMphmBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814dc0070d-34dea3da-2e24-419b-ad8f-f02f3405764b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00a947736d57b9b4d558536871400ce093cd1f1371bfe828c44a314c42ff83fb
Date: Fri, 10 Jun 2022 13:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654866839
