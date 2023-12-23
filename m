Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03854DDA1
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwDrUuSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F2BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703337496;
	bh=vdU5ZCNe6vITMsyNohiORI3VLxa9Ll2f8izvMrL0GlI=;
	h=To:Subject:From:Date:From;
	b=OwDrUuSqGoynnaFgan7cyNs4dZDy3TAD/lhkHbRr4QxBXVSS6lHMrOAcD6x07988W
	 XabGfLV0Ez0OZrsBhqc8JT7JcUBT8DMXFJ5rLLc2eBwUxKU7cfk7TI1WK51DGSZ/2h
	 B8R2DE1Y51ob4lCDt1eEx71FUoBd3NklIH/p66dXdqn742/WsJhKuAzQz0bWWk5CRU
	 QoBEqAUVDSi5hPpuZxvOYokZYiAYcb+NVEfePNph+pzWF/jb149/rhGUPyF3d+LTAh
	 P/wkiSgi8fYZDv19pihXXmNwA2hv/HeecFXWLEa4cFY/alQ/lR9wlmLDmskkHTxap0
	 Y8KLTnQnvM+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F15C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170333749638.19325.17003617718989276479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d28b30fb530c24b3458e74105890eff0d1c50a6f7af04a4de33954352dad80d
Date: Sat, 23 Dec 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703337496
