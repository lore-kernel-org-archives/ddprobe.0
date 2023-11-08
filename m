Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D2A6123
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UECKvm+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5EDC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699419496;
	bh=Ub51N67nqbNvl9yGj2C9GoUaGGzJsNYoAZhQAuAzWzE=;
	h=To:Subject:From:Date:From;
	b=UECKvm+EEEww3fZXGJ0bs9MRk/Dw6hVhxCjb0M5bVlmT2ovZJtjml+dbqHoMl7SbR
	 89StEIlOUG2tippamysepkKtjcQgm8czxwY0HgTJA2NiHQneQDBAxHCrhuh5EnzerR
	 AF4OCt1WE7iHSMDo4xYm4cfwRrB5EjxuyTaeZ40QA4rQHSYPCv++UoKhSCyHgKz1yN
	 s2hRT0J4qTmRjeyUk3nZhqd1b7DEZxppzxiwELepX5lorXH9SXAWb8hMzpHkRbuvfE
	 z9fxgsk/wcWFBN4HhKDLsrLp8TtPt4DfpaqRsRvlO7eO7AS7/QDcOz8U7DwClHaYfN
	 +0bsGGF+1kXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6100AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169941949638.13312.6323551227013030978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fb44698c4f5dc1d63d4acf4b4f7ecf2c0d87f335f65d7fd6765c162f5d57f7
Date: Wed, 08 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699419496
