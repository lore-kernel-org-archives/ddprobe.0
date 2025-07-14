Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE6A2C86D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752532794; cv=none; b=AYvCTE+FReEv2lIOLe4ivOC4a+4kwJS6S7sLhO+GY0fC837QmNG2ok9Ka2H3Mz9w7CYMCl8LU1+ZnY+jvg2iUmI/2yU+LPmxYC86AsIxGk+0zyIxheUjyHHuLnfxvLQRdHksmo3EyDAHmFxijlQw52Schzy+ef0ESZmS7Vm6clM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752532794; c=relaxed/simple;
	bh=zpC1ilrS2giS6eB+Zn9QtEvjIrGGK3M+UGKxN86+tbI=;
	h=To:Subject:From:Message-Id:Date; b=UOGH7axjadUdJeTGyFTLNEo0E1KuObZiWaWc9byoP2kczOYHbXF1ur54dirgBkb/xYRc8ziqXdkmgCU4wbcGKWz6UVD3oD2nCVYl5tRZzMxBW1HVonuubw1saCgWz7W9aQALNxOtQQkVayn0l0YZxwOUKtNd/lTqmRXT24vSsu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1+bkkGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1+bkkGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE692C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752532793;
	bh=zpC1ilrS2giS6eB+Zn9QtEvjIrGGK3M+UGKxN86+tbI=;
	h=To:Subject:From:Date:From;
	b=U1+bkkGRYElIBj3NxRG9KngeTpm+Iwp2xdnEBo1LVp2aDUneOyWfy8/6wWNRpe3N8
	 bkPGlfNY9QGhwJqgtjto1fAXjXMj9oXDLOovargHOOL9Iur798HUEwB+1yhTujukms
	 qjsct4ZB49VEk3A/OIgt6Ke1ZMLSV2vZQcGfGaT931Z7TBKpZqW4KaCYjBDuU4iWrx
	 qkkezQKNN+s267j6t1gEZwHKGpLLVmtcBVpBl2BIeG1pLTkAuSfgjEfU53k0JRw1ll
	 BDPVRuYlZDeZQfJWxIQEAAG7fkJYXBZtqUoSAZaDIKzJ+Q0HSY3v888jaDhrTG+PFz
	 t4qPWCKJjr6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B87DC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253279360.11484.12846014439848425476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1c72eccbbd6a2cf91482e0d067c435a903e29c0cc84525e20d758486694023
Date: Mon, 14 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752532793
