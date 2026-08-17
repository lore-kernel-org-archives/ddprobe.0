Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3969E1CAA78
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786951834; cv=none; b=hJs6AigyEaM1J/Vzsdw+zskGx3F7h4BYdLzexptqpp2D1Ryf7OODjS9egkNZvKKuRKAqeA8d4nVEYMYeY1xg29MV5gU7LqT39jiG66qG49rwuYmX1ntC77scarUwBdmzCMzD7my5P6gK1dhSHZ7aw3QOg0fJ8H3LPQ9/VhslyG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786951834; c=relaxed/simple;
	bh=9vxWBG9RJO4KrGXqVL7hVhKGZNJL97AX/DLT07dyAnQ=;
	h=To:Subject:From:Message-Id:Date; b=Jjd825B8G/o8VQpeHmhUnFMbviQhRX6NDQvU5Zh8mv7nIaTWuZnAqUofpDhUwHX/h23pHSD+dF+u1FITWg+Y6XfXYkow/P2/1be+7xUvDPe5Eze/U7XhFDBgRDUHTsdF+kbpLOH0/GKVnylHMQ6Y0ffLVrPK68NRqPJjEQSaoDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZALs1yBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZALs1yBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13BEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786951833;
	bh=9vxWBG9RJO4KrGXqVL7hVhKGZNJL97AX/DLT07dyAnQ=;
	h=To:Subject:From:Date:From;
	b=ZALs1yByJQb0vrnUOtQFc3zSQ/T6TnfAF7n2MBBZkBMTBBizPjkY3zZEiaxYuCG7o
	 78Ljg9bpV0POi0WQkza+O1kmLWKux1VdD6dFwP+CDvTQEGGnj1dCxPJSFrjTeGLG7J
	 HVEiTNbBDnbPFYF54nnMd8uxug2ADcbZ36Ovc4OlrWaW+px2m2N2N9TTDfA+frHKDO
	 vqjxrBCDIwG2eQWXoIO3UJmPqeOzi69SL4vR2PXhjPdCfJz3Uua4iDkhrj4WD9M0Lz
	 Sglxt6/9boYRZrCdcSINTeNOsZyx91VY5K4clplh4MMP7aZ/s26bcScQsVgsoruUIk
	 c8sDqXNR9ZiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED57C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695183369.2784.15531769866252966080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866043de03747802681b580605fa63d9f99ae30e5b8075d8d4f67456c9fac2bb
Date: Mon, 17 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786951833
