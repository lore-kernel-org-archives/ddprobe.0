Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C1C7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659037853;
	h=To:Subject:From:Message-Id:Date;
	bh=14jb1QrWaOIejHZvgVGXSPaBzx5l5wKflx6wmP28wZk=;
	b=g/m6vBaX7CF1NAKNX26vvDmmOkr78Oa3y5vTsFwK8YIbTIDDT/BoP9BWiUczv+kh
	Rd2s2tbDdvqzKJmlzep0hwvLh6x5Jl8VM1nE7VWZ+qqr9/pRCGs0CLQdpIpOTWDAtW+
	GIIVrJQsE7V/2AbxD7z1d5nYxcKqXZcC2HmDMMNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659037853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=14jb1QrWaOIejHZvgVGXSPaBzx5l5wKflx6wmP28wZk=;
	b=Tx3k4DsHrUJa0UBnfqgAfPi/0zrH8vIRqKT/vrZCHdNhQY/S2DQXrUavlxlenIPD
	ovuaT/nV4QQ5u8jyNQKnnFLUjYREpxvxRbxXLoe3Bhn/BivXEbH7taNStB4UKd/HxF8
	RgD+sOYwCdfgBEFRAOK9YV1VrDoLK3Z9CdquP4NY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182465ca386-b19a410d-3405-42a7-9706-dec4fa575ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0935d1e3710907145fd8442bc3ce47c22294c0c5b7a8e528449e257f0694dafe
Date: Thu, 28 Jul 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659037852
