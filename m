Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B703115C81
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B90C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666999854;
	bh=HkcL5KgpeZWybCYiv8O4+UrHa6Oy1YKcSyfl70g6uMw=;
	h=To:Subject:From:Date:From;
	b=ouBIJMEINcuU3azpAVD7MR3SuFwEd3wClZfW1xT5CQRo8X9qICMnSKIJtnNjSDCa6
	 r4XUxoh4H4hn9Sq4vyY1q6YjT4bD4uFg3Y3QvyixyszxWP73gxvRO3AkuEZ9lqqdjy
	 vi68t0LwsRhe1yXdpsjvQ9grJP41EGxmBP+rqVANX4u/ioPh/yShU6YC+2TmfaEeza
	 c5SxSqy4gGxmESD4/tbYv/YlSapLW2K5ISBq7GfF8z5wmBbtcyUr8x3oS6n8pQ9Ze3
	 ik9sG3dJ08pK0Q/s0zwzFfuMcvWARAr7pWgusQNM+5VYM+Tb0OGZCpdicuXozqLtZ5
	 OJoAQKJ+Wowqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D7BFA3741
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699985433.3603.17143849631606775379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6357dc019ec805b5ec647fc0a4a9807cfc2066744813b455ad7b1f30aad076f
Date: Fri, 28 Oct 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666999854
