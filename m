Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5436810EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70EDC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691272388;
	bh=7aIffRPKzvrDa25KE0+yUIbFqfev9r5HrC4kArDgBXs=;
	h=To:Subject:From:Date:From;
	b=nQ+JMtm1ko1lmM//H6gcEQGfzmr3o5P4PqjZ0qTMcr2ylz2L6/sYIqp5TL5Qv09aQ
	 zBP9CKZ47P6qQiQ3CpSFtXCwHqY/DeBD1m/2QjMa3NUXpexht+KJyP5/q5ngthFulR
	 otBbitWOSQspjHHeo0SYHRr9dvo8nDKo76zrUZz5lYxt6IVXKfem1J52xR5MZqsW98
	 Uah6r4Vz5p49xlEHE0tfPFrciYQ+0AfTLb9U2iq6QVFiqTD1fFQgHQoNOgZ2M5XrJI
	 gGoutKNhosaQhuFX1aWwHkuU6zU0zbXjv2z0rx/t5iaMW2DO/GwyzXZxRrWos6RacJ
	 AAic0KvjhD7mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A856DC001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127238868.8363.13570730467704532348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac879dfdc2cf3841b31b56471489e8cff4bf05d57573f0b4fa047b45af6451f
Date: Sat, 05 Aug 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691272388
