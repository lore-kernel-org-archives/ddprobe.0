Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384784A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658511412;
	h=To:Subject:From:Message-Id:Date;
	bh=QAlOCygLmds3dbgERXaloyuKVSUYB0F2E5MEedWXXkc=;
	b=hVNg3X+YA0HMEcEHuniA9pJnp8wCwS6EgyT73oFIZqxPZ3eDbUTwUebIf6RlLtrH
	aFLyv9DegEw4fGgDMMF8yVNZKCE8XrM5jH5Q14zuzGSRajKqAlPxj6kTlmKCPfmIB0K
	dsf4E1JGFFPmEg3qaJAaBLrXtLtCzCU7t33TZ6Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658511412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QAlOCygLmds3dbgERXaloyuKVSUYB0F2E5MEedWXXkc=;
	b=G09ZVuVg+Vqv0Vs3AvejJ2t0K4ALCVac3FiG46K5z8kV05+5cVMgcyE6qaAu4A/u
	O8IEoKwM+JyiA5ZBVoWtzgG6bg59I6Hgjg4lN+M0w+2MthB45CVB54sRtTmmiQEMCDO
	0whkeJCEgWPKpTyHk1YY3bsxxAt7aYKz6UTdYoWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226fbcc44-97c002ce-dee1-410a-81e3-12f3174fd00c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cfe3d8eb1c9a80706c79fc800772d68275e36b8c2edc9ef033610198b41af1d
Date: Fri, 22 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658511412
