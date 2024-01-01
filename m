Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB0F9C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3STJ75W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D04C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704148696;
	bh=YsTVj7eNKeTBy34II1mJlj44hHXun+QtVD0HuLXVNmo=;
	h=To:Subject:From:Date:From;
	b=r3STJ75WfPxBlSce1x/uei3/n7YHUqZrSk8Y2xx4o3/ZBcTThiIEiZkItBvN5CB+Q
	 zECLGGCE47QX0h8uFM4F8lIIkeou/N5OnyR4ZnqkokHjNVTy0loM/oo1idHydGZ8mO
	 S5AAitsmB6B5OcuwjTVCI/1v6tTwPjB2/Z3S6Pcq2qVzS7S34U9VQB2lN0Ydd8HyJj
	 fO3UMw8BOvlZBU2isFpgi45fqRHJBLMvW6hcVF0CF7feAX3LYb5a6C3b5pJjq292ls
	 yFzrbxgDOQds8a6wRVqR0NICDygPx740H1pb6EYgEioTYrs5Si/CDAECRX4FgWXH23
	 iPJPFsrbw0GRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D87BC47074
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170414869640.11409.4434089349460880136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add631dc6ee6872c00d48ba339bfca460fe2b0b055a9569172cc51024fc031c5
Date: Mon, 01 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704148696
