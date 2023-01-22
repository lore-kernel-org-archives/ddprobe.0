Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399667E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8573C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674382925;
	bh=FNj4zHFDPBkduCZd52cBUH1G/124uTyUdUcFjM5v05c=;
	h=To:Subject:From:Date:From;
	b=XTfL7MCLY6KhbMeXzkAzfFfO2ojTvKe99i3x0Iu1+bWlUPcKZstM7SkdAU1ZsZcDk
	 fLGyYnG1X2zNFH9Xc7NI0bhCsFKLxw5khtJvP/C2XWkL+QJKpXXtyLbNuIfui6GHbS
	 gcSFgjcSpgYq8oIBFSspZ7elOC6i4XBnxY45jxr0U+fyqHJP/U1n0mrDOWmsB9sG+m
	 +Z/8D7YhPF2NscpFKY/45cbtpUHy/Gm+rs9t63YpdJ2BR9ecZwAPnQyQL0GajC2aDF
	 qXBaFA2qdVOkWMXz6sxz5Trat3N44x7lyBWjdep4LLaHZ3cyhPDCRWfjboefUpAP1T
	 yWCInyHhd04IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE51C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438292576.9865.10402154137482399082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b46d2be9fa5e13c0f3c6ebc6a342b3a7d3c3bf54a67c3e3572f42a288ae8d0
Date: Sun, 22 Jan 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674382925
