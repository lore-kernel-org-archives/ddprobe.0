Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205C03C2788
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772730294; cv=none; b=vD6cl7clUfcR/cTb8M/dxVESFrCUwWI1/6K8V/Rl7Hov2OclSqvsZB8VVHTgyPrBmwgLfxNl0Q7qUTzx11QdMG/bgRAA+kD87UtlwNrPrqQrEx/WURMCAGgQHK4REqSGFAZkmzwx2RbCKE/pB6Dk/FIVCP/QKM2Pjtwiek3Lj4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772730294; c=relaxed/simple;
	bh=Najk2KVhzFpziRpUzTdhM+MdNsECznu1nJac3+tazbk=;
	h=To:Subject:From:Message-Id:Date; b=MeFc+NA3Pq12b4Rd8nsgTIgafIXyMBB/5A7yjXJ4+HJbjf9tn+WaDHWOduYoM7/r8G2IvCRgK+O0//C5D33UigA9oHskQcynAM+XS5IibnLRU+g4uwsPRWfCGWFnKASSzhiMmJUxWY/am/Y6s4qY0SdxP0oo7xDKst+8y54ndf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXI5sSwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXI5sSwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B4C19422
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772730293;
	bh=Najk2KVhzFpziRpUzTdhM+MdNsECznu1nJac3+tazbk=;
	h=To:Subject:From:Date:From;
	b=MXI5sSwD72f+lDnqFww77jeIiMp1Ht0d/xic8XVjEPWTl7KF64QVfpKtsKMq1g0dl
	 DHG+QUFOBglaSS85raBwcRvGZtdUcanX3KWPR6QKbjQs1IM4odXthn1BfA1Grqhix/
	 PtMglD5Nsb3P6RcMDN6V/Rbpaxiwu9NXtXxiDupgg4OCVpjhMKFMYyax2Qz4QWjWAs
	 g02eza2C+YtjYG0qH5+rAzral3h2cb9BWmVHgY1XVVUZUfTE3wcFFLr4eR9jL1d3+0
	 pIjFcdZuUMtq72riZW3U6ifW49rG8ke8KGemmGQJQH4nxRxFoYqZCFyo0S/nwUfHA8
	 +oA5WKGy6W/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92281F3D337
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273029358.8773.935450487500426740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca2283fd13e8e8c19fc24857d2c346f5acb214b67f0f23fb6bb57663190dc95
Date: Thu, 05 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772730293
