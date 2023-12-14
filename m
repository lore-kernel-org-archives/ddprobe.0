Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CA066AA2
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmgB8f+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB94C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702595296;
	bh=M5aVPoxNt410V+gJitXGo2R4EG8n2QNTC0T/EPhYO7A=;
	h=To:Subject:From:Date:From;
	b=JmgB8f+B7W6eR3XWfgoe0qxzdnnp1otBM+HSoPB8Dxx+XPiV95Xhyj/Mr/SmMpJqi
	 TLJEyhjaTm6Gi9a+khtXgXLnCWsBlLx0yGFrDDvPICGKFcqYfB0l22H0lqc5nryKKm
	 /d9GDUG33wBtmwW67Q6qujdXHoa2S8k2OK5hqQNOBCMVuk5lAYy2bs37yJ54aTG9mw
	 Adn5yn2CMmZ/pkZvyoYoK8F2KQqYLuANM3Lk4fZscEaIhlXSQpE0R22m3vr7UYtERf
	 7YZr77D53A2xuIyi9P4jnN83hDWoDIuxQL9oNeAKAWz/RUumrF+CfDl+O2x2DY2q5s
	 kb8eMoINg44Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652F0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170259529638.4890.10067879699132102808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e610c6e404b40a9cd09175941695073b272300d13f9b1e71ff0581878462f8
Date: Thu, 14 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702595296
