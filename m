Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEA67E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFD3C433D7
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669498254;
	bh=TVbUL4c7C6MZ8TrXhjYmnLfQDNHbb9ipvtKFUKXqde4=;
	h=To:Subject:From:Date:From;
	b=u10Q9cKIi1DIBXUpmlWFLoBa/mLKUOjwYP9bdiTED+uIGQc4Odt8nNlgMylRBTVld
	 DfljdsRJ7zHQ0Cnfbo0tgltgwyBZ0INZ9G11mucr+AhlXnzA6fmF1+4HCIRK4lULy9
	 mk5q+UnU8+kX2AZsnelz230PDOQ8z4DYE0si4bMCO5hwJCAU8ww23RylkOaiVMLAi8
	 LxCEXEWgef255T4aJ+KwOqk8bNGAW3zaNc8xKz68CipGonm7S6pjZQ/xfHEI/Kln9x
	 zcVaQUoPJnJQ/dNcr9bZOlkLjo1NBGOqqrqB0xTRH/Ghkf1wCNeih+0v7KuhlICyfQ
	 0tSz6T45shJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620D4C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949825435.5674.8555874634999894725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0aab0d2ff85f9501f042ebeb34f257cca8700eb9da5eac65488bd414008e022
Date: Sat, 26 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669498254
