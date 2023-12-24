Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E0310E1
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMt7Enlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86669C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703396896;
	bh=38zenVAafaHATRtClJNP3MH2rng8/DiLbwQ71arJ6iw=;
	h=To:Subject:From:Date:From;
	b=jMt7EnlrO24fhTZ8de3QUeiRRrRfB1S9Z9UiJ6xBpTi43SW+yypYj+aKkbe5pCOoa
	 kApvG3iSur5sgG/YEiAtrIk+K3S3tXGXesvD3xY67/fsr2BHQ1vNxWoBpner0lwWsm
	 KPU3o4ACF007mMxDMoUqGtEw5gsFxz9egrEDuu/SX5qiQjOhRuWFs59mLEjkzHdLBW
	 ZvWSJgXRB1GNwNzhUqvbV5H/TKtZcF3yAA8/9RR6S6lrf369NsCYZMOiz+QdZP+RU/
	 T5cKPfm/oy8ugWas/+D+SI/tk++F+XUwRCTLXZ/3AnIVIR9XzDgNPvLh4540o7oeFP
	 2EN7AIRBxmCrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C41C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170339689640.22225.1660063604086588620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e38b2403b99076a2c7cbb26ef6f910ff3ff8d65f043b3fb9a8c37bcf67b9a3f
Date: Sun, 24 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703396896
