Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269011FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 02:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652925719;
	h=To:Subject:From:Message-Id:Date;
	bh=fsPyu+VXD9OgxGO8TIolJ4B4Pz7vjVpfTKUCJGo0fGA=;
	b=NIiCdOiJOS6qLaJbPDrXkif0JBL2pGwaaqYYF3tJ36eXiJa8xm8kvxidZsAb2k/U
	xNkXKRob9zSdNc3nCTcW2YztTx1+6rnQK2KLa4UgkKM63rmCkAveB4+EVoeLWvTsk+D
	l3B8oklNRCu/+FL66dtFT2Tdn+8fqGv5j8oPHi0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652925719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fsPyu+VXD9OgxGO8TIolJ4B4Pz7vjVpfTKUCJGo0fGA=;
	b=YJcPF3NMFMsmPwuq9yRC870qEZ8kJP2LsS7wiKuabYjtyvFgLByZ5FmIGG05Rh5C
	Z05Qhy1yKKMXTbsvzM9tyww2gqs378xHYeQRDnzssvhrnAkSmFkwbdOtHhNsKym6Uvf
	Ai29her+AtZXo19lk2HR7xjh0S+UckPYQk12KCKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da0ce381-a0f67a6e-f89b-459b-8d01-412237eda4fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4079c9b7c267cd00b359d2f13b061293bd5d058a2069b4209e327f06696fd14
Date: Thu, 19 May 2022 02:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652925719
