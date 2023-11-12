Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0AE1548F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0ZTaksa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82697C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699810696;
	bh=Kp0sA+Jt3JUdw9D+5Wq8QqG9aMPvZ5BQ/H2hQxKixbc=;
	h=To:Subject:From:Date:From;
	b=c0ZTaksaB2tOSs6jPWp+2/9+7y/2oL8jc5iynkw73FURHmhMXJy6v3FFN+RRF1YwU
	 OUogiKyew9pwT7rPvYzPlGeUm/QKRii+XmEHBezrDVoWoYS+fHcmvzUoTWwwk7GRhi
	 KF84gCbFq9WvQisi2j4jVVsAq1m2ho8z/bxJfXO9k/x+2bbV0whWND+Tn6touCY0yP
	 uv6ytdl/ZP72PTZqWI78m0btS4wKIWxxcs7pnRGI1u/PPG4E3c4PUgWZkZfVQ38/PY
	 IaACz7si4oILvZ3jHeSkruBgmsSDtrZz7xGaTYGHNerQS+8IGWakQC/415e3ZpTJBq
	 LVpUueXJ9WmnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6648FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169981069638.31225.12761488577198118752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ed5b27882aaea49cf65fbf7c3f9d7bb224cab4658db7ccf52c721767bacebf
Date: Sun, 12 Nov 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699810696
