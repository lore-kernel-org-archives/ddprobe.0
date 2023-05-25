Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE08D2EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16FB0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685010306;
	bh=vf4ylvWuArC3gaRLDR33mBFjtk0cacztWgzieyQVNo4=;
	h=To:Subject:From:Date:From;
	b=nyb0ijoAp4al5oiZwgz9h3yi+ODTrg/GbhrKZhBLTQkHvWdUHWImfqyWwdlHRW5ea
	 HkkEEmvdQ9wkROVDyfqnZzAYaRAZsn0o+P3uazDSjTkUSnKpNMCrgF7u5eu8cAIQn4
	 QMSQ9ZZapok8gVPsPlVOMapG5HtlPtm1gBwOTovGcyAE9SahQ31G85vu/9jWJhyad0
	 xhAtw/D3k0aCpWI04c9+rECeGp4iiuUoXDy3y/WgKwCTfUN6trlrPSxviMPAeAKBew
	 q2AVkKvKDt5Zm5kEndwlfZnnvd1QEi5a+Fd3+EnVuS6LZgs0faR27j1YsGSTfcP4zS
	 y3TFA60nflylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA5CDC7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501030594.31973.5991725485161714288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ba11fa0d24b5a8c7515e92aaaf2c82b552ddcf455bcb44f71e8b1ee5c6d408
Date: Thu, 25 May 2023 10:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685010305
