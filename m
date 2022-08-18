Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1B7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660798852;
	h=To:Subject:From:Message-Id:Date;
	bh=fHNXUhu7poGgy1gDwFvA0u51Gt/TdMu4yWXE1HqonnU=;
	b=g9/ufOJcw6ACQdnwuMko4bzCDGPbRLnc9OQsfkKR4Sdci3J8fpAIxGFUER03L6eR
	rZBDnwR62CiXQjktqQQnRocUJBkemzPLT/WFMLZ6RkDzlKfpszqEmh0wcbbNXHmpIFx
	jMbJL4fkANDhSzKGNVK/M/tfgPZ3hqNLG7tcApNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660798852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHNXUhu7poGgy1gDwFvA0u51Gt/TdMu4yWXE1HqonnU=;
	b=Kgynye18MiRShyLCRhXU34yI7rJTvyB8wmY1V4TiOqRKpwwC49WXasWaQGZ3kkHE
	jR0qrXrAECarNcrm56jRvsQbzbgStnPrSJhd+A8ck9nflBE7rP+FBCCC79STVCABhF1
	Rtu/5X4/3mpJe1GVyjSPn2sCuk1y49fPpVc1bKYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af535dcc-5e290b22-2395-45a3-9de7-45f75b5c8243-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09701eb439d74b2f784c556445f331affd0e106dbf6e30331fce181f8cbac826
Date: Thu, 18 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660798852
