Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5666E7580C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737729954; cv=none; b=BFvdoNgJFOjTuYIMZnPGNklPSm8R1/nQ/NMi3PdQ4ZnuRI/JUR2kpeTKiPC48M1WE1L6RQOq6UnJw2SxaLhj0NnxWKJ02RwN0e62SMiyjU3erLYppVKImhng7alYR2N+EhDNemi2/FSNBazUWIRkC0pPVMSScbW+uugxvG5iLQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737729954; c=relaxed/simple;
	bh=67OdXcTW0SHCpvbHOj+EjxD4+HXieQirmS0l/SMa2jA=;
	h=To:Subject:From:Message-Id:Date; b=QEGeLvBEns0gCdV6XwXFbd+V4AtgpehX3jS3KSRw++ZPnGeypnwL/KinRQZgBC5Wj/Nz5wpLqP3Ysht7McHxuD+Fx5m31mLivSzGhAD5V2oWORhiS4KhxYZ1xoabPikikgcH4tLjcn3xtE3zkSvaB8Zlnuy81Bso3QOTmrxm1Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rav1LIVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rav1LIVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6679C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737729953;
	bh=67OdXcTW0SHCpvbHOj+EjxD4+HXieQirmS0l/SMa2jA=;
	h=To:Subject:From:Date:From;
	b=Rav1LIVETK5G4ATkUVwOy9XXgRHRIBaA6QdVR0M5bxPY+7qlxf6oBf2hYD8Gcmcbb
	 9jCnOzmNYGPtTzNGz2H4g4AMdj4P6bqQLqUK65RdBxKhThPLgMkzst+21xQPHesnD4
	 lPFkrSG7ezRFBLqsMWbU9hJ8GhIqh/YhCykDX8itnLU6oIsRkdQWLvrh3qad0gjqHl
	 Pz4rrxtU9UFIOhBbAYIkvBcCDaeCzTkVGwW/ASoplvqXy8y8r8J2p3/Licu1kQ2kFu
	 r0GQmpFF9K7XnsLJUQV7qMoZaDyLx9GoOmy+6JHds8IX5tsuOgszseVCUSXA9vx3yY
	 6ZDfggYiVVZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772995358.21739.6036876652531997367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4766d4874335c362aa9dc71f9b5dbe6cd02d1d86e1c7c54e32e3b2d62b0fe2f5
Date: Fri, 24 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737729953
