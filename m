Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47700A4F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE962C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674465125;
	bh=OIC5b5Noo35cZDPlSbuy8Uc0GI6+odYJKUa1RwHqmOw=;
	h=To:Subject:From:Date:From;
	b=VCR6XjJH1mpw5U9Q1bqGsTG2172jNZEwaB6uTZ3OGIL/AUX8G3kxq2lw8biu7kdxD
	 dZkB9ykVNojciHGj4CA3yVcJ1bPMH6TZ+nMHkosGzHnvHr2s2YfLYy+DlRUZZ+FJkC
	 ThKs17pIDjKlA97cQ3vLcFHQnYCM/I4sWaKtURn5s8aHyNu12Lp61yzB9HJt34uulY
	 rNIDqlhJpu8ybClIjylZZpmnCW+0BFUo741L0gXOjKMCB866zlHehm91GvfKG+epv1
	 YowRxwZLlPOfavun2VuVZ5fe8EJVAuZaxofrBsWAT71V4OmUboMp4e9x8PalNao6g7
	 c+st1tuZfOTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF88EC54EAA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446512577.11995.14867884738497800053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40a07ac69abba4e4d3f39b49b0551feb49bf07eed08b118e6ca45eafa470597
Date: Mon, 23 Jan 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674465125
