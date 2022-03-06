Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D0710EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646585784;
	h=To:Subject:From:Message-Id:Date;
	bh=zO95AHrM6i4nib4QTpfFrgOHpCbmwmbwDA1SdwBruec=;
	b=JReqz22GBb87ZRQo2q4eT+8j7GKpRTqQGq5Og/VqnQBYnta6/wGP1jMJiGmJTZNN
	zkIlzHwTaJRdPlv2B0QPsySLFAF+PZC61x8H61rPuSp0Zr4NUika/p+3mYbW+VUMDB3
	Pb0fiV5AyjbACSE8VzJaJK5SxZ/dJw5DJIIjfSGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646585784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zO95AHrM6i4nib4QTpfFrgOHpCbmwmbwDA1SdwBruec=;
	b=NX4qfxtq2Z5UnfX6mKsJa31NO7yAFqF+IFqYHCZsxa10EA9pAICpG2Lm1m+kGy8v
	i+zkyGpkyjxdnlCuJu2353j5GjoFeFGhBg0O534BAJz/SXsFa4VhqWEXSb20M8RK74M
	GyoXmQ4o48lBSqWHi3d0GHhnBXTVHldWPyIC1GOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f602929a2-f05f2f5d-a091-4e05-acb5-65e2cbdfaf43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7e1880343b92aada092b3816bb004950eb296a77764f62e7499a5bfdb2d3059
Date: Sun, 6 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646585784
