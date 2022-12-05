Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FCA15C9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D80C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670277054;
	bh=uM5eAmWl49Q4wOv+XWSX/PBkccqonyUqHPU5AvnrxiE=;
	h=To:Subject:From:Date:From;
	b=hzcHrd1e/5tCHGKqj9fj4eEW4S1wNAp8mQZn5y/Mh0p0C3A9GqOYGLCXxM6bnngbg
	 1WFgz9hOp8PKKdj6t8X8x4KR7s0Y5sUTPUHOAN9GUj+GMdI94kgswycWQYKgUq8lR6
	 w60yzzcfkOMtgTKLdINouR9k7jqHMJCZE+5gkLMD/oM842thTyht8eB/r1wAoxYpYZ
	 oWP9Hr9JHY2oEVYO55V5WPdK3aGcYOkyCFvEbXYJ2XCKI+TeOPStyDh9rwv3/TKQ28
	 GjSa43UTmYImvZEMPE9LDYpCw179zdWIWQRouH5ILeBShwyB8CIUD7lH2L3bseIQlz
	 DeIQo7+o4M00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5977FC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027705435.16507.15338780847669377444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e649715331214319f5e7b2fc29d202225dd46c8485d7cc8103dc3db572500f7
Date: Mon, 05 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670277054
