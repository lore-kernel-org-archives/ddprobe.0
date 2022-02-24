Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6381878
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645707685;
	h=To:Subject:From:Message-Id:Date;
	bh=c6qKndef7DC7r7bCvvCJam5Pi7INgSkocnX0zz2r/Z8=;
	b=QS2SGKIZyPE6Zn3kBs3IcitvbdQvmwSjNA98N9E8NtDVcLDXLZ8KnVq5XiDGpoPt
	Uej4XTNht/2gkPXJtn3lj+Vt+BQAcHonfLrBX7Km2BITw7PLHFzK2azLRCBG6s4t48w
	ntCGu0uc9lcuphqUD1nMX1E18JIwrXnLXbm5l1Sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645707685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6qKndef7DC7r7bCvvCJam5Pi7INgSkocnX0zz2r/Z8=;
	b=LQwe+lmuhUvXA8IY+Ep+edcn/8CaS+loXd2mMFztJDTn4ilUrLY4P897ofv76VjY
	WpfOeCbqGfgJC24hg8IR+8Km57oLVS4gdDYSavtvSS090rIa46R3oC1goaL07yCyHrX
	uI/2aA59QRA50TENd445GJX/7aubsr2z65JeoFqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2bd26b80-a0c04549-9c92-4ba5-bd29-d00c9f41ae29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0032bb5279ac4aae0dbb4752517032e4e137cc96447596e93c19f74f61e1127
Date: Thu, 24 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645707684
