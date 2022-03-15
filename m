Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6075B1844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647322285;
	h=To:Subject:From:Message-Id:Date;
	bh=5g6oL2wkiosY+giRxQben7gLjKM0KgjClB28OqvNBSc=;
	b=B/ZJjWmaZNrfYik0VbSQmpGIlEWI98UfZX9OvDE0Yjl1uYvefk/lDei4f3KRryUH
	a4G1q6U5ia4Xm6Ys/LFV6B+Joc0oFHhEb0J4m9FnbzAlfwRSVr9qM96ofN6Gh7nHua/
	a6HLXb7a3BRyyy7kDLBz0Pc7BihHMO++6intt978=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647322285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5g6oL2wkiosY+giRxQben7gLjKM0KgjClB28OqvNBSc=;
	b=P+yas7RxRHhE3ID8V5hca4mK176nQ+nL0TTzb5BhvS6fTuHT3j2XmOVSkTvu5CFE
	unvbTacO71uiTNGErIGC5Cvo6Gvukpr88wOSh6/t+OblkjZTs7+bkPvtBmZ0DCaYzES
	smfMpQ+IR7FyL9oU4lL15QQOQBq7NLCv/5LsAKpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c0f42af-f206c5a5-d76d-4dd9-8370-01ca2e454c27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74af5a49c399ff9b8185a4bce6be1e45365989f224b138ca1e4124b866fe3002
Date: Tue, 15 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647322284
