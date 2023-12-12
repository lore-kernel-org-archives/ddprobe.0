Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127A3DF51
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6Jd08/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4DAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702367896;
	bh=XuSmVDgNduXkEtLYiySc6VeHQ1NB5K9DuxRvzVq+Weo=;
	h=To:Subject:From:Date:From;
	b=U6Jd08/H8jMtRm45V9FrfmTVL83XZKVjBBQ0qdVBfn2SsnYuggyHqxEoW01r1JbEL
	 teDGwwytc5+KNecs/ZvhFTZdflaT67WtzSq5ZCzcY4IXaKWbsmPQZJqcCInomWdACJ
	 t9BxXQKBOvzpVhdjH53uywCldcCUflG0JiCqJCsT0E3I1tL1QiFE3mTtwxGr3OPmNV
	 VrMGjjshrUUmiWxMXlaxjdv9Rl0u8N8WtvprjRWY2Zmw+aFIvwhEVSCcDiKnpz4Il7
	 YiCV7agJr5TyqpSo6OwWBPAzu8wgcDzLRV8XW++O7C0zid3I5Kojp541UaCQOf+iE0
	 pWncEYhqbAMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F15C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236789638.19178.9387908149462108433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d853c0c76230cd92be400aa597d97046b097bd10aa07229d1bf83c2f97be7925
Date: Tue, 12 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702367896
