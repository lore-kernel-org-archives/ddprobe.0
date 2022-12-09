Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF14B7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1F4C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670545887;
	bh=h9dp47WIealRYUlxctXVjazj5OJRwYmJ1rottkaQObU=;
	h=To:Subject:From:Date:From;
	b=NnpElEpnmsdau5VDLXSIxMHh+ITV7MdwajK4NEToK3NY7xcwRraJ0YTsoLNt++rKv
	 dXyKQ21Ny7+OuEqWwr44iaK3PvjxdgoMcxawCaW80xCc6l8PyL4VxGArKrSAYFzjp0
	 acmKYbpMRsA50TqlHCOAblw9tKQWdKP4NzFwBQGhcvRRfrwM76q63W0DWAm8kXXbKm
	 qPlHfMF/BslzhmlcwA+avmAIAGMyrnzpC8N/RXC/VkiNFSjWOWnudPkRrkaqvFKAaL
	 YyXtGLotWhBfPGn6h6wvKZgtTnU4QCrz7EOhDHfb8OCSm+QZyXW4gDfqy8QDltN8xB
	 LvZUWldzQp7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623F8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054588739.9565.3370572935741788678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c910c4a9531e015eb6290ae18be6b4fdf8e405c32b5e8c537f4fcf606be13f
Date: Fri, 09 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670545887
