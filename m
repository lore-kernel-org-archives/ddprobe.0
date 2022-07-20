Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE33C26
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658330212;
	h=To:Subject:From:Message-Id:Date;
	bh=HwKtm/SLEMueyBH11PeOchoR1r8SRdMYfC81WD9VtnY=;
	b=ZjAJ7Xgl7gwPEAJ5E5/PLk/3+D6el85/pb8rHeSPB01h9CvgnMqL4DKt3lzRPnKM
	WkA9AG3lx4mlBtXJ2eb50Ef3Nrzj2SkUhrMbA7Pgz94cFDwND8bYkntVgIpE0K7uUoj
	XPgrW+FB/pLqZuMwbPldAtiPoB3pfVh8zbzdry44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658330212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HwKtm/SLEMueyBH11PeOchoR1r8SRdMYfC81WD9VtnY=;
	b=O9WMtTh8EQRw7fg+sO+UdmuPa9PcavEUHtzwBfr5KL7uUTbBNKOlefJOOET9yMum
	luOYrvHjrLPLRzKm+vHFGEjoDeQPGJIW36jk+Oql4alcBu+zclGw96dDlp46uGOq1/M
	O84rgzOVUD7bgjv95mTTaldE9VaKF5OrjLLlPSGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c2ee7e1-858a9b82-564d-4288-8523-97d7b4100bb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aadda83f7ada5b7a0d747dcb5b2b26f59f13c43d928a075820a098c9fa24017
Date: Wed, 20 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658330212
