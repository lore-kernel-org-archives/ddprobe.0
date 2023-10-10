Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69530225B6
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2ni4gkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF2FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696963628;
	bh=wMwdelyPczaCLEf6EHA0D7yUMNnEvmNZGccNrMVycA0=;
	h=To:Subject:From:Date:From;
	b=V2ni4gkbn/jIDxhPG1Wli+W6WfQlL/Y7A9ngSwT0n4w8PWb382x2wb8MsV8jJKeAM
	 dP8d4DjMNGHki+3L8vp8lXQcFXEiBXB/00TXbCcYeLASeAvruN9WIIbDtxvjdeR4Oh
	 uYpEvT5RRRu3I9OjZMznaw5JbVwRwwmiUajZ2PK21SUuLLD31Lnyc7HMI6ZNOZvRjI
	 owEqyi0eKtRlGLD6v+bBQuYACdBNDFJ2+wmPH7mLVBtciGKd4V2FgFtBU8lZOq/Ztk
	 s3/KFOQgS6uofZKZVLk1q+yBUoFZY7yol26/6PcZk5eYnmtP7IjQQj9RSsJdYHQgEc
	 LUDcpDhFZwUlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6C6CD8CAC
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169696362875.24273.8040501692952585546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f41de283d089abce389d76b9e766b7451ccca2f5c056a4554bc765de056168
Date: Tue, 10 Oct 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696963628
