Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AD717E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8C7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661673052;
	bh=vI8Cje41jbFXDcRFI+czHn+ZR6ppUDKuz1EUK8UDew4=;
	h=To:Subject:From:Date:From;
	b=N4Ro1t4w1/WK9MtYMvJufmasOoWUFTP44EKj8tP+mWZrr0BMLspGE6Q8BnIHjDjiu
	 xp8XcN1D61aKHTYhoruatEZRSwW55pixRlj/qE9A5je1L3QNe/zlLw9yqLoWBSdlQ6
	 l3C+3RNknBnhkOEwLkZXJv1QaYcNy7HSkFno873yKwkZR627/GSp2UvL+6fz21T0Ut
	 bxn6GmJdRESg3GQZ8JXFj49VVdqoXC3w7K32JFwCgwotyU+VP8KPj0bKMVpBTZ4jZj
	 Y/jkyiFrkjthOJhuec+/tIsl7hhcbFB55kQtqUH6IrBSkfY4kkco25YnwAB7ePqrDa
	 dqaV3EVRu4u8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5454BECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167305233.26742.14126025979642807010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b119f19070871feba54aa04003e1e5d0fd3b444643bb4fc7437e083f158da0db
Date: Sun, 28 Aug 2022 07:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661673052
