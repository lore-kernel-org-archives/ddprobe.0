Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30B43C37
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2DFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663109453;
	bh=UmnxtTUMwQ/LL1nWwmDZZssU4oFYsbh9tXjRmNM46Bs=;
	h=To:Subject:From:Date:From;
	b=dpTnnrrZEI/etTyUR44xDGHOvufdg/ZsaWof98xZG0H3M+vxVL9GGA5EaVo4dRBjm
	 tXXwacjU2Hho2m4WC7/n7YNhZ22j4rxesS6JsjvWjBULZ93MfAmYrMilFJCOsbwGFJ
	 SJGuR2KWYHlse7W+H/US1zsfKA+HAYW4I35VTr4GXDQfkLnEA0rVG8l07Knvn33BAm
	 Gt24rIdtxzW3Cz0rO1h8+B4DmJ7ySzUTVKKLn06ZaxgCPBy83GSHZXrUvH8SaTJgY3
	 0n0sl9EmccvCikQnghfn177C0/LQlz67AAuxQaQdjlCsFLHFnEXmXMn4mMriUrd0Y/
	 lEXNdZkYSUYVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F29ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310945333.29678.2166862661987704021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a3e8257fd5a68cf30172f9959e4b295ead524d7c26c95ad64ae5072a87a8c2
Date: Tue, 13 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663109453
