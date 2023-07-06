Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9518C19
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E64C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688654228;
	bh=Te1SbC2OUqx8ZTPRP46KxytfNYTwduSACfYQpXNPgMA=;
	h=To:Subject:From:Date:From;
	b=jwR3chJ6jahIUCvOqLRKyfXqIyodcBk/TeEETuPq4y0dLwlTzeb0g4wrLBVE2Bbb4
	 9ZT+20Ieo1p++s6yr7Fgdbv6bsRG4tEDVpihZrf8gGtknDagCgzEF6lkzNPwJzeIx3
	 Y8TNongq0xinn/6IDnoFCHeWfZAMbMBT326zIM/Fq6yc8P4qB2KaFTagQFhe4TQoKI
	 NzvjTO9SSiToYvdaOD6HE3O8KDqvWq8R5U1JKDzpEL/3MBwU+1izvHTk+37qfTD8I5
	 f/QsofkZGfgq9ULOZxCeOElb78wWYnhcRISvPopOjl6YKAEfOTxfC9KLa1hMpbtNJR
	 mkgXn+JOxlP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF6EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168865422871.28470.8245964837429032492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fbd10bc899ab3d872aa97cf89647a0d7973266637ae0b17897edd35b67a681
Date: Thu, 06 Jul 2023 14:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688654228
