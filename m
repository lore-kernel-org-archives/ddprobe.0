Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED9116428
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01461C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688158389;
	bh=S+YU8SQYklX+hVnr8XH6Smwu6/goHRMLMcDQBk9MEAc=;
	h=To:Subject:From:Date:From;
	b=Hxf5CguXdpvQj01i7ZU9bwkdnMw2BoAVoN1gzwOyNy/gY+3I/jc4mRy79WHJr4gQg
	 PbjlHQ2a2o3uJRu4i/RlU7BKWLcDbw8quWDE/WnJvrtTGvYLd301hWjrguw4xQTd/q
	 LzrFZBvvUOFlAKQtFfPMFKQHEAUcJo5sy1rX0MkP9vB1RhjdDBCNu5KtLWRsAlRIuR
	 jmYVEaApgijgg0D36I60ToEtClOt8Gr/r2PLbibk5ybucIS1hIo9850uZp/qBq68ev
	 zckMgWevYxIj4aQ6oNdNAnbk/blx65CCHzGeKFEmu3zZClyWnCwuLSgY/gMjdjQ5pt
	 bsI5SOT42a4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D90C6EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815838886.4417.6773169104357667148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387c89ae54600f9465632b215e8760d5c57e4c5feaca11a3d427579f0b43ab39
Date: Fri, 30 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688158388
