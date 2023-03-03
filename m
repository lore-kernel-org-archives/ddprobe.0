Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9D41FA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DDC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677828965;
	bh=nM2UmzpXgYB3jNeH1qhWDlIl63AoNPaXvANG+byqyLE=;
	h=To:Subject:From:Date:From;
	b=Z8m76dyCAGdfC9fN5juaoldwwaPRDF+7ZUYnBSgYkNSoBMW0xWpTb3iRaI3mawUcd
	 c4hhEGjEgZ1y5m7DoIylRLzPBV8D1wGlYESje8InclGRzWmh+covTnEHjsL5uxkcIJ
	 QrM7YVRk6O0rvC18qowVbRAkZGwDHJ/0f4+1hgrmkBPuzEFW27XHZKo5NRO64wnm2K
	 eb8RZchy4DTkhbR9mCvdt9rldP9NRJqEOrF79dQOLuIxNgZ51+dGYK5djSP3uWuvj/
	 jKBQkqbQ3VWOFl/au3gz22gFEgseDyRIdu0vftqj8Rhj3esg/6Atu29NZqvpVmNf7t
	 xi+ofCYjxy35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B170BC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 07:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782896571.25392.11145832340714985145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89238998540c8951f5cbfcd365cf44ebb93c2c2fc9c440b3a208b800834dba8
Date: Fri, 03 Mar 2023 07:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677828965
