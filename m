Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0C61F939
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CCC433C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687365188;
	bh=Q6ZTuBSS2RD0AByAxUq4iwoh5X277/7UyEixDR9X7YA=;
	h=To:Subject:From:Date:From;
	b=rJnHqgYaqioVf8/1yXSt4kFyFV16h84NYuFeFJQJa7H0naymp3eDOp2E4qv9JYyZq
	 r3RKr52ujYwBL5Z7/WO009FYh1nFm9dUf157ZvRkn/eaSy2vWlxwGku6oKpgSd1HD1
	 KU3TTYrEcTgZck5lssNctqmS9m0SMpx/X1XW5aMWt3z5KtsG/DGfIRWz6xW6pLcYn5
	 OTCbu14o2Yf99pjLg/7nYLGHpDGk1vXAdi9Ze47/R2COhHOM3DzhMsgNlLu7Hj/0kM
	 XQ+0/hh8lf3DSfnmWaQtxRhKC5Fr+kIvPp890yLcNECYdn+u2UomFdvZLxFa4rMWi/
	 lxl+M2MZj8X0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4160EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736518873.30982.7289991751485898621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2481ad98f3ad085ddaac3a89febbbafe94d4bd9ea1ccb64f7c1dc1d17690d5
Date: Wed, 21 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687365188
