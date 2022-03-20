Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F2E33CE
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647816084;
	h=To:Subject:From:Message-Id:Date;
	bh=vDgo3QXEqQ2wyHEmTyHiz053bVETRDpI4PNOxmBry10=;
	b=EbWLsPKldEeQds/pkl+ftxypoUf8ec4+1i8mwRJZfUaY2Pxp0nYQWOTgst0y6UjE
	CfAx/ABVBNBwpYwlX1Fzy5BO4YHGS8nI3uRetWKv7mmJ+OhcXrKVcYO2bz7BMM+YZcI
	aoockraYb1jlxnsn8o1aZSVDnX/GNghYbxM5ANsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647816084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vDgo3QXEqQ2wyHEmTyHiz053bVETRDpI4PNOxmBry10=;
	b=PnJRmWLIutvbJzYSsg9v8AWXiuIvZxI4md8VLZxUcd6X9Yyu4HxzvPWWnLhR6/Ow
	0GfM31xOa9IM1QW7FKiyc2v7X8r6pbY4EXw6ngxzETsDH4x65FrkvIiirGzOtSLj31G
	6FTOVr5Ae+NISVPZN9ha7uyBayOIWh1wUrXWA9+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa97e0d1d-4a314d0b-e9d7-44a7-9fed-de3eb22d9f49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 998bdb258e6a986bfac32d4f9f7d003f2546c40c482effa2a27da5943841781d
Date: Sun, 20 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647816084
