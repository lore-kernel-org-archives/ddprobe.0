Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275A28BEA
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ago2Ekzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9BDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699795096;
	bh=CSJeOOC6fUMAQ/M8b5noR8wH7noe/59LaQzDjJCO7BE=;
	h=To:Subject:From:Date:From;
	b=ago2Ekzkyfr6Ew/i5N+ZyIM12N40vQ2RoyOeyt03TdNKfNZ+M+I8jNniER0HJj9OW
	 zvpFAEri+oVjMIQ8FQoL5BrU7bGz5Yo0dpaOZEFsXBjnv7gA3N0ZtpXMOxnP0T2eYU
	 1OwQV3Q1BAlOtSAfsieBeIbBexUcjALYDJb//w4ubqCqM5OnRXlRP+scmx1yBkKo/m
	 Au2VZN4cFQFwMosCgrlk/OqQ58NGR5dm8Bwz9Ppu47ED1QY9SKG5tmXq4gPdBE3/Dy
	 RoEmgot1qa9+G1reLg7J5O30ggqvHH2mIAMej+L4tUKmPblJUu+uD5VbqEpNtaSPEv
	 WL4kgSlegSKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE3AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169979509644.15934.5841453822092164056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20662f4a681c925ba8f024ed67a8760391d0eef43099d05e74c2a9563769872a
Date: Sun, 12 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699795096
