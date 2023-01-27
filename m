Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289B7290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D259EC4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674827585;
	bh=o4ciIzHqbOGhdeVGhe+vLiKwUp+GRVLUmDPTOwWhb4A=;
	h=To:Subject:From:Date:From;
	b=VPJy3SXlTZGpJc4tr8THs36g9Zify8UilQicazS2lPQFJvjw98NtP6sEwC9bmfJ0j
	 0Eb4YM6LtwL/cshHsfuhLD4dlyufOj5Lm/V9btXs79Le1j3oJ0tQGdoO/ykC6ya0Hc
	 B8w8+wvRtGiMbscYpl9FVrFkou43WwQPp9a/vwgPTr/6wa1kdEXd12McdP7sSHKsAq
	 Dr1MR1zwxH1u/imQ3KL//LKT2p4cKlIfJym4pOwisr0j3HlJaPpS6+zR491SRL99JU
	 iJ7k3JfDghu0wYsEL3bOyXWiGDo35rJb4p+wolWhlNZLcWkG+lgtRMVVVkRWgseP4a
	 OOp8vMddh1Mnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA467C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482758575.7061.3406262931870072169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f279f57677548c4c4d723106db6343a176f52f15ed87c2c64d1c82223b68c35
Date: Fri, 27 Jan 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674827585
