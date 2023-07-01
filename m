Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EBCC2F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1276C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688226848;
	bh=HdV/0yu79pDcriDjepdSweCW3SFzA1o6KJ0UndstJkg=;
	h=To:Subject:From:Date:From;
	b=NMPzckgXfWYqQFnmv2TqUbkGu2iO/uH077nL/BzvGsHnmaQUf0vXwrmmOzaG019Bg
	 2NS2na4tNk4DMIYl+dDp3//kaW98q7A48CmbEELiAKIpavpiHye3N1A4PFwXMTh2IR
	 SqtwtrRaEX8CpYUK9MiQk9MQXWRNm5AxPU+MmmNLqvq7lctk/J34LB6g3RNXYfebvc
	 pq/354mfS2VQHerRd3h/rrwCuIgh1QBewxAU/3It2EHFLFR+rfcvV0/fnTRNqwLc9J
	 sy1mj2S2X8nzASal3jrVyTTwPhtKUlTjbooPxWWaiQT887wcIkRsnSGkaGnpNm3EpG
	 eTmODEBmhrjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF580EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822684870.6884.2024045073016537623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7077d8afd22c4c29bf50d4ae4c91ab996a7fe093c52b31f4ad87c3e6a12df1ad
Date: Sat, 01 Jul 2023 15:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688226848
