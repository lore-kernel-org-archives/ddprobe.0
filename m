Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE427E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AEEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670631087;
	bh=G5MSnCzPQAvRihYVKTb6Yv78h0SKfj4+3MJWuHiKq08=;
	h=To:Subject:From:Date:From;
	b=QeGRo5q2yHjCDHPRAMJ/2gTlL3g8jRES4WzjnbHmrnuuumIgkL6pm6J0Yzg1rAMnU
	 KhxArSX+li5p9Gqboa3JnsWlQe+P+22BZbhVlASoUw2qhUj3qenj/v4FeI3/giBD2l
	 OCCs+GgKf3vBkGzMgNHgI8+ONLBGHSUrciWGqUx5PYjwMe57Asgr0fUATCdI4DCjBS
	 zVCHNLIXyavmvTN7NLFQ2c6vEjkLRfCR6XsFAmqBdEaxtpQv4xzzb9I4GOiohIJj7Y
	 wz0yLdT5PFAzSzfxXo0eCG7HTKjd9UH098/Jwtustk9osfJwQ64UHMLVQ5UOi/sUty
	 fekHsVFgKH1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C9FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063108767.18762.4586131866473391839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2db99087b0f4007bd25ad42ad4a118b2e1c95b43de7cbf14cd7423f236ec96
Date: Sat, 10 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670631087
