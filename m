Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEEC16EC14
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712326698; cv=none; b=owBM0pGd15v/Hj2CMmyKMkUenEeNWHdVVNGEEGCR1YsEGCF3fOv81jGpRt2FaPDHRwh9Qb32EzDwDqv0UZZbBhul/ZNcBUYnOei2Cu7x48UH9prqPaQ+xUqtTkMUUkfStaE55LmtQ3GtY6a1vAhdZ1WE3RAGOnvdu+b+u2QLWno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712326698; c=relaxed/simple;
	bh=G4E9mOq2Grhv3dh80DlTKi1z2q51FZmGZ9oCOfpoNnE=;
	h=To:Subject:From:Message-Id:Date; b=JoN52rYd8CJXtU+Lj5NAuhv+ai20i4S5sDfRMrPzdKV8hobbiHkhwf723GxblLNFxrnwZ8rU0Vc+/d0VCc9YlP+cSRByF6Rc+iGPNOk1pDdiWCiFzU1TXNLJoZaNvDMvFKDsylV+3wB+8qgHXzZQ21UCRjYFMfjAoUTKLhQiwBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S85VB+JC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S85VB+JC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A156C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712326696;
	bh=G4E9mOq2Grhv3dh80DlTKi1z2q51FZmGZ9oCOfpoNnE=;
	h=To:Subject:From:Date:From;
	b=S85VB+JCOAfoEfk56Ev1U37aA4RVEer8jbe6YDWjCp3+mtFVHRkJvjdMZYhilpopz
	 WMtA1C8JQlcwgH1sOQ3BzWyqdCxAiys+Xfrl/cfs5Lx6O03XH4TGu3R6PHo/nKr78t
	 UVli9hdPogn8Ev2GcAcXvrBPU4ZHNwnmZ8F4rly27PsQvn7VGzPIBJH+O8W12wGw8q
	 yPyS//3UG3kJ87C3OCWYDUdIz7aeGuwSFaNIwi+9HYaJbyr71+EaaA37u7h58Zrw77
	 2iClOp3nJC+q03cSKcvfhq29jW/th5/Rn76vEdTS7bZxaaBzt+Kk6jlW/x4gjq4UDs
	 SWSz3PPTchARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8CDC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232669642.13184.15533596210238068062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dfb235207238b51492795b520e9ee5eea8297331906a75b2472bd964b9ec89
Date: Fri, 05 Apr 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712326696
