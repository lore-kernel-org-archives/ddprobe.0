Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59478A52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C13C433C9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688463368;
	bh=OvAko9rn/arrKl7CjhlgxNy47iaCm+TRTqs7M6WmSdo=;
	h=To:Subject:From:Date:From;
	b=DGiepetuMsFmn0u05TN4EXXne7Ki5xqderm7oMsB2/2br/x4oglfForzc0yYOdZ2r
	 07gMFitJI1/JL6B0gz5PYzlPLA6MRi/OWaX4lxrB+zwvknw6T5BJwEijmWYW7DmIX8
	 M3PHftVr4+vrqYmo8rKU3NmMX5X/3Sun+AY7puxsWmisn4h79C7O1lnkvqKThyluZ/
	 SojpgalYm0CauK80yXXknpeZFfBLja0XI7aS5WVVANELbqjGC/9p/wW4y5wveHOF17
	 TMVeVqu2VkmJwG9y60giMxm/f7uk95ILbBpA+IuknbB26ojpTNWsuIi9qDRjKlxeDM
	 sHwWwBzi2rvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05AFC001B0
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846336871.12330.10541958930766675179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd3d1a79a8307eb2fc5e673f0ed8b8f7c1142ac0a1f2e82db3e16054e5c2210
Date: Tue, 04 Jul 2023 09:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688463368
