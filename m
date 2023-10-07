Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB57EA8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 01:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMjbgRpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE68AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696641428;
	bh=E+ZbdR0MTwUi+xtDhqMEwn2IpN5KMCGV5O9ioDGsgNE=;
	h=To:Subject:From:Date:From;
	b=bMjbgRpmVhGz2XEpjALES+gFuomF/R388QpzHoPZ9PPdr5sVCxbkjWSXQbBxs153T
	 qJq3hMYJ+3hlthOxn/5bWo4YoPKxVYePGf6IaYl1B0l5IJdcrhNJxS/7iawz8P3dW2
	 UfTg2I/uhfGrKC/6YsGnYpjYjOoRaE69cH4VvHZHVGRmGeB44yOX8aVGPKx/iBcdRY
	 sVkFR8zsDhzBrxWBwHOTPrQkxymtex2jUyNP3WARdvcLFXwtSGUl/2eyAWCoUdwPiB
	 FhJQVWuJNjrl3kjzsN0v39t+kJLNnlBNWD/F79zb4AG+PFr0u0Kba9UWqkxPHM5HF5
	 s0uUHkbk+Jh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BEE9413D
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169664142866.25007.1704377971179768814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b2819f416ab324955c136473c42164def64ab82948b4d5f508636b727ff835
Date: Sat, 07 Oct 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696641428
