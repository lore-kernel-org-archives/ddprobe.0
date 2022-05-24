Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E727E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 14:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653402899;
	h=To:Subject:From:Message-Id:Date;
	bh=bHdirTJAKGd74RPSimD3R99hp0xiKUbCzUHwqkbRhJQ=;
	b=Fcoetqe7yWEnsGOO/7/zYdaOUTvagudyXHpYoREl7XlHv8G52R3PFbS9XjVpnN9k
	1lbPVC5BIkWmOKXNLYSduyjLNy/2jeULfiiZD2nfdv4JD3niiKg66ZnYylMP6Gxdx/b
	u+eJwvLe1HM96oT28U1uZWVlpZhcGMEi7BUdZx7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653402899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bHdirTJAKGd74RPSimD3R99hp0xiKUbCzUHwqkbRhJQ=;
	b=Gab/nwLp+qc5MZPfPkROtGGrgnHbIao2F1bVmNiURAlMetC8Ltmc3A3cw0amr8Le
	XCTV3gu53iZwP6KkUp/24D8L0+a5/Nkjb3WJ0s+9icvJp1jrMfwlbh8fiza0XdvgV8S
	C63DtaPM71By9/xZmGrH7+RWrWavBg3W5MsBgAtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f67e1340-8a916e5d-d89b-443a-a51c-34c2cc12b839-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81d5af68dc290830c75767ab58b5c07bb205e5c45f9798d7d2245ff57c9e3630
Date: Tue, 24 May 2022 14:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653402899
