Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5007E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654346819;
	h=To:Subject:From:Message-Id:Date;
	bh=cozPsOLLe4UXex2Nu3U/4TVpD2bN8+xsHx4mNBiC8r0=;
	b=YMzsbwVvR/G4G2hF9TVQFXeuyWxtnLa7Z4MrpOOTvyE3QZyoi1tdEX+JWCEl38WT
	DiiaLdvtU0hn0+g850VrDJ6OMQc4RbSbb8itq0+N3fu4buWxfROA8z8pdhdfO60uRwZ
	GWKFdA37lJBQ0MOHhCrCK4JTr5HyUz3T+lDxP2o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654346819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cozPsOLLe4UXex2Nu3U/4TVpD2bN8+xsHx4mNBiC8r0=;
	b=I/wbM+sa7f4L0Xt1yHMwwjyC4yfrgCUztOAKnf2cuJ/wvM5Qsv806xWMosw6EQmI
	CZaTfI8iT3HwQfQPC3cKUi5OtIInljri2eyUo3BAgC/Y+j2B6jV096ReT0FEeg2fmpK
	mpSkd9bCPwCCrI1nQx18Av8tKiusQXOxXlT527eU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ec1269a-5b1ad1be-3580-48bd-b57a-f704b557a579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe7ad8c4d791d4626140379f22f091bb6cda70388fb71dac4ff7548411f497f7
Date: Sat, 4 Jun 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654346819
