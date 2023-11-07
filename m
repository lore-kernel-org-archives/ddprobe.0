Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C246126
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgbcBKaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5052C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699328896;
	bh=QOY6eKttlYi6wTyZh3pAnF+HuJpZm1mdPaKyLvIm1JI=;
	h=To:Subject:From:Date:From;
	b=VgbcBKaESgXySDKtuN3ByOBP2AXaUopn7OCuhpg/Ph8LQCpPJ9ZjSbgeno/uLHwnG
	 30KGji5CrZlkROJxrtuUZVFXJRJYDmCAkH9GXaUr6Zu0LSWPNK2VJJXcL3fDVo4hTf
	 PjbE9p3tJi+1oZ7jnGhp9G/SfZvfCu3IrNNPlbQJZh/21umwX3VMBkXjqnZDOLF1wi
	 wFQgC8HUlRb1vpZcvgBzN3BZMdgqqs3k4qGPlI+Bp+k0cD7cJMwiNSEOZGAjy9EhJg
	 Wp23hBbd2SPswbWBDVuV+omlkXcjKIxGghQ8Ey2zyq42x+bSIQ/Ti/ppmLio3hMptz
	 P+CNRDQssDGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85DB0C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169932889650.7966.7485603207237800693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a0c64fa123b94fa4c39ac23ec5d641e08876929ed41d55db783df02cb477ab
Date: Tue, 07 Nov 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699328896
