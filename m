Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAAB364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77239C4347C
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666490453;
	bh=7W63m4AOEDBBtw3Qy/McQVMv5qwGN1w9DfqJqBt0ts0=;
	h=To:Subject:From:Date:From;
	b=D+r3evH0FWUNbwxu1DZUTWtORFMreDNF7DTexxV+xRTrgPzOcp5Klz8CvGvVpKgvs
	 ExVFJKV2rZzaqsPMAq8eM3zn5O2JCzuh3sWG/8p7DChBenUBA8g2ThPzkVyyTdbgBu
	 tlel72ZFX/Cwwd13Agtuo4XIsnDEXOgWoiEiXd0PCWQCuUu55XRDVZcYP03iCb9bQd
	 RGqv+eFWG4WNKB2S5cS2OZ4nYro/ybdeiZwNqhyGL3w0hdGjnaq+DgZnXlaLdxfCqF
	 d/juXhbBeV/wTQvVRc5lmop7RlIGUzGlznbM+F0XxsvFa+aokMTQBSFqyOIlhdp6vJ
	 I6lm7YI1fVWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D038C04A95
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649045334.29007.18251310532711444814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a902c0f758f67dcc3255a125a795103cd6ca12b67a5e09395eb8f5b5a7fd3a1
Date: Sun, 23 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666490453
