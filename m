Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E46522D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32B3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674861185;
	bh=WsOI1Xlnr4pDqQnbAyd93wm1kL3VrUupuu7EG6rB0+w=;
	h=To:Subject:From:Date:From;
	b=tzVPG0O15XnVwzhwtujbSErfdhq2v5fJOvxN0KZ4bGbm5T/lRWpCgDjzrQ4+AAS85
	 lvnxef6fvQXlYgIMiTRLBzLPfVtL9wnAoeqOZiRDVsqUqJ7axAdByBHfPuRJkomyTq
	 GcLoO8Fif6Izj/SXkZiFBGSHkD+Ciu7NLOKQshOnIpEmd2cNM5jHQ2jVo/R2k4EiaP
	 8Mbc51STa+0FzsciBBFZWnYS21TpF7pAHkXONbIyUu6i8DWSPQyEs5fZjiCkTNJABe
	 YZK038RLfMCjpkVwNS0wXJDpS7NyJ+yEau1NjAzsHBD1AzgJkao0vIuR+i5VYvWKe8
	 TO96JTDMrTXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58EBC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486118579.5291.14458724105361916583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fdb8245ee48e5f2f772e0d8eaad8decb61c127b89e62c2476a8bee69a96137
Date: Fri, 27 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674861185
