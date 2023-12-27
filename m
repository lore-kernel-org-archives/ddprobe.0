Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19388DDB1
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvFV0ggg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F4E0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703658496;
	bh=cKoM9XtCpXDc4xK40WiWAI3PoG6BnirSBQUzopm06KE=;
	h=To:Subject:From:Date:From;
	b=MvFV0gggWNa8d3A4w8242s2xhwL5OHQJH2h4mR1GdXcqdRvRrAKKjf/2tk1pD24d7
	 yFSz6iIOKBueUBT1CJfBIzX+c0k7PoTdfxUpSC3fAnGyDuIiqyr9cyrJdrSRdAOhSt
	 kE2+MTcqQ/ocd7gwKlIkvK9qjLSPPYvZmyOSh1ymsR1bUgVTeOtm1900+KhvYeiEc8
	 gBmGGAftTINyjoch+l2yCew0zLZz5CWA5WbXHZBo0/q8BlGxGVkpZZL4ubFx5uv9j1
	 oSK2W/J5/5JjF/jqt1/6B/i/NzhkjtdvkbbO4dS2kL++/oDtWsVgz+482lCXr4l51h
	 2KnQCyIlfU9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70001C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170365849643.11365.145061470742840452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586bacc7f6cbdfd79484ca661fa0bd60e4b367a917c7ab3ab2175f1f7bf3048c
Date: Wed, 27 Dec 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703658496
