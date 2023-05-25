Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42854FC05
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC55C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685043305;
	bh=M2CQnp9KkVgoEp9dUjhVWFcoMzsvG61VyBFR5OmcBW4=;
	h=To:Subject:From:Date:From;
	b=TQyVB3uHFnzJrn/fKFGSiVqE4YZLH6becyHa+gGqV6jchYC9M1uY+8lzV2m1t0qhr
	 KLHG8qGCV9Wgr4k8iMOXCh2LwKCiuUOdfM4UQmmCIipzdLwV4OqncZvjCN3XywLrAA
	 +bd7iksit8f+pWD9lnH5OnEq5svcH5EHULGWuuTj9wbbQA5wKHyOc0kZeuf1yfiHwg
	 cknzOZ4xOtLZ44ux56owJrueP705tQ6TPhadyKMaNA4zPKLhEdHQ43EaH+2aWiXcYy
	 W0yVvWb3iXljU15HfNef27xwP/kEg3DwBiGUjT9gXFsHx7VEkZXejIgVynrHsHRxW0
	 ZnUV8VeeoUvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF70C7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168504330576.12983.9967049478366109989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7486904e156ad1feca9c0e3beef7759efb4a48e0a4a4cf0487082ac332cabcc4
Date: Thu, 25 May 2023 19:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685043305
