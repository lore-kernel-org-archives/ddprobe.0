Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31908F45
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837E9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671560487;
	bh=yUCNk4jrb4kI96Fuy1UPpeoBgaqXzZIn5mnGIFnQlP8=;
	h=To:Subject:From:Date:From;
	b=c/EcCRfqTxPLvgmt0i5O9SMyZHKuD0rIqILsThebUxaUDLptZB1Uu4TdaFsoxABr9
	 ArDLGnAEC86jBeazI8ItYFzLmgYequjlLYBy0YkzXPS+J6JOGTTjD6zIE0hh37V58o
	 mvdAULunJKjpyND9CeiUnugYqOkB8M2LcKrHiJ3NnkZNLfII+gjpVn/eAanHUtQ6nG
	 ZSWEofyBHrBIVXtrDiLhI4A8CpGQeKwGlj91DEO9QFmBMcWTmEGvoGVED1LuelzgX9
	 OxHU3sgjz28UAPtgtTx2vQwD8CuTlfvqVk95Uya4BvybQvf+QGaqNwdRRKxJTrstsV
	 iLri8VhzZby5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B45C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156048741.19022.11547644507915988223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a715017077910559becc10b6f36b7cbec8197cc7776eb78174e5e79a065d2d
Date: Tue, 20 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671560487
