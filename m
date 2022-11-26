Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C01EB18
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B26C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669449654;
	bh=2nA/HLtlhlD+8vSW5E7jfDwP/FZTxKrD7o1Ak2rOjZc=;
	h=To:Subject:From:Date:From;
	b=OrUFZUMF9sc2BgItZTSTbh4j9EUJ7/tziALFryo9IMyUK/iKmjmVH+XSMz2BdxB3O
	 izXP51gcFaCMy0PhFvoms2toWixh72yfwWB3HH4Iz0PmENsF/kVysdxrn85xsSq6kI
	 PWGWpdEL6V+gAXqwsHZ/1ZlTYvxs521I/JAA+3+4F5MOgv9/OxR6qKnErAlLdl80hv
	 C/RcMJXYpf/758c2Gt/GY6euIVLBcX5n4JZU1yKQw4H8rVyz8zOVEwfOJ7P+c+13+f
	 rWsvX6dvIbzxivTkWm22u4TdtDbCX1lVHaiu23iyt6EbkyfkjR8uV0NMANuiGKgS+6
	 KPFx8ZpNkDY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61635C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944965438.21565.3691618234573257831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6648af82e44f4bbfe3310b86f7262ebdb6055681963ea8b34c9115229ab14f31
Date: Sat, 26 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669449654
