Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E9BED5
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 01:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D205DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 01:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684890845;
	bh=uWZwNTCSicgcd45cymRLsetBcugOHrk3sZ2ov4LHylo=;
	h=To:Subject:From:Date:From;
	b=GNDYkybklm6j44rAZuuzIiunOoeBKcE5B+VFNr+E7G6ehZG7Gwa99YE3Wa6gKqgJA
	 8nqm8CD7LFcxdw5Arx+1JzIzQZmBIC7k1U/QnP4XgMAEywj/XN67JTCBDyGIfJCuO8
	 yIDhm4S1cRlmwz4G76y0dpa0yDWXiVey4FcStIZovwfdxbfZCEP2I/gjlpNWdqLRaB
	 JX4F6cncyfAONpXtFY5jN29UhBNM/QPsOzP3ZTaBxDxsTz+mtURbwIg2d5fs90zvZr
	 53twojr9Zwt0sgklGKUJAB97kmMdtug0xLOtTu2QX+Exs984ys/fSkJjPEbXK1vQYx
	 1z7xx50qZhRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7993C77B7E
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 01:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168489084574.11192.11198190875621624008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c4cb49590e5157a3641b77fb430abe0d680d80cc899efbeaaa94ba98eaa689
Date: Wed, 24 May 2023 01:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684890845
