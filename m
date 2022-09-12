Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12CC1C31
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73284C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663000253;
	bh=jqP7GPlooFFREeFLQQwJx4R+bD1tiZSKD7nbGtb3vnY=;
	h=To:Subject:From:Date:From;
	b=JDHXvV7kmB48Z+pqDr1OZaJ5CsZXrU4tLphjhtQAsPMS1csQ3OL7lxFlhaYBCvGiL
	 GIYJ3b/uR5qe8jsmqnYUxKt080tf1lSGnQUl1inOm3QdOJVZs6yBuvgya5i90FmpTK
	 u8Wr7GopHFUDjTdNC9paqCmZwkXGLqK7jzNZqXbsGiFKleTOpC7tejNN8sqY5s9cz2
	 nRFgD4Mc9NOxOYt9R9v4s7eJZ7vj7Eo/6Pv2Ajo9HYRHai3sYfwa3VAS0Vj9r08Wx9
	 mEynYbif5BclVgJT0G0DRPfdNN8gbPKnCBO3yyHJ1SBQodIGFoKPu0pen1EGrk15ly
	 3d5C1F7CPdZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5802EECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300025335.25916.1712836205600887624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd287e7d3015527ec1f8ca5f2ed7ac14cc1daba0acba5c2b9a48876e972bddbb
Date: Mon, 12 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663000253
