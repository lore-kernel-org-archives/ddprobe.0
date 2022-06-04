Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE509111A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 09:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654336079;
	h=To:Subject:From:Message-Id:Date;
	bh=ElbkdeySk7BZhp9r8ADRKMDnP0yM3sNLbhnI+6YVaM4=;
	b=RNlR1hqmmFetpLg4hhXjABF2BYgl2BqfcywJUAy981p8HI12hsz5WQyNLjwA9o+I
	/aORq6oghJeHSnrSlDS+9j+ZWosoeaCinO+TMbQU/TYySsiXmDI2+gP0/3KP3hJJ2EG
	/21GE88P9M3dNeX5qcRCokg/JNNtjD+7We5DC638=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654336079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ElbkdeySk7BZhp9r8ADRKMDnP0yM3sNLbhnI+6YVaM4=;
	b=P6is2djTVYbTxZhT1Bdt/zUagy/CrryppY2wqMSimeo33+84FykBXmsDx0einVZV
	pFSGkkvG6z8k72JtrYGZr5TS6ZegoPVeLxOyUoMuZ/1qdtyWAFCKgCcgdVGXw6aBfg5
	9Lc4qjXDCu88PvYvR1e49v1z0SBdeiw/wgf+mvrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e1d457c-de36035c-1722-46de-8fbe-dc64d2d6c542-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc3746df31008f69c9f85d64de61c98a4aaac047b3f8c2322dd0ea43f967f476
Date: Sat, 4 Jun 2022 09:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654336079
