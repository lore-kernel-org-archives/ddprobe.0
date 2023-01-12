Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1402379F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE37C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673544687;
	bh=C9J8NxL9WCImvjq964aE/vktbcDiGINPEAhOW1pob3k=;
	h=To:Subject:From:Date:From;
	b=N9aUR8MRPuLOKMa6UJG+G1Rs+lnDnVVbeckWKz/dU4MdLiNG5RF6ejxYWutB5tmOc
	 T2NEITKBVpIA7AbB+fY8uRYOTntM5sAKJznyiMR8004bIwStGsF0Ci8UXUT3eeTkd1
	 8PZd4JPPd9NKZge4J38Pefpq3KTZ1NUNbTzLGDIisHnjm3oyTqxssE2vtfTpPlVUCd
	 pyMXJr+/D8xkK1bUfnhEfxmHgj0JLo+Jv1UNOA5MgovO76fPfHjDslAt/ZXQdAhQxz
	 RYsCR5ziwe0HW3tf3iol5osuFy4NAe1qE85N4MfYAoX0SaK+xdA7ISbXXQAHmBMp8b
	 EbZ9YY79bMv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85EE0C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354468747.13764.55015037921102804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b76515f875f01f69925c9f502a42d5c6923482a31eb82330f85e8164c24054
Date: Thu, 12 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673544687
