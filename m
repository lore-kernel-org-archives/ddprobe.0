Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D782DA757
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780069354; cv=none; b=bT3ysNYfpfyIvNBDgvZiJwplECjox7T4geqrWTJgZ4bHkSBYu4ifH/V0F0YFdpWUrlCcK4RpkcxGKz18AI+q/XsdnxYhYeZMIbsMhOGi5nL50uf+Kjr4+YOriblO2OzQWxdxEOJwRVeB/TyYBu3tMYB86qdvpnhJIYKt/sf8hF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780069354; c=relaxed/simple;
	bh=r5mvyK8irN+WXM7eMk6XvCQX/GdKZrk4cnEkrOB4G9w=;
	h=To:Subject:From:Message-Id:Date; b=jH0Y1Y/TDWbbkG+fGTptr2bKu2noSCugjpE5nCl/tl9XFfrQ+mURgje2aD+7G5ItRPKrBtAR2sIQoqXAawUwbFmEkQBxgqRF6+bUQPV6sTmAIAWaFtJK0wAgokrRGaOAquY8M4EtfHnp7+gVao3pktPAksIYWDRsSf46FLdzYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tF1Uncjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tF1Uncjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8596C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780069353;
	bh=r5mvyK8irN+WXM7eMk6XvCQX/GdKZrk4cnEkrOB4G9w=;
	h=To:Subject:From:Date:From;
	b=tF1UncjzATa18V71wDSqEfOIHbyVfG3lJn9xNrWEXuv3iL5QOVZ2wvcpQb5GTJyfv
	 Aj3PN5Ojse9e+H+xqhJQIdbNB/X4fgcQgcTT2+iuY6ITVW77scZPIqxic7wbg4gpqa
	 w3FIwy+TS58xv5BS8dcf2dyVbxFj0MTxkvhPLaSooif8jy98XHWpu7jnGtUJorluTU
	 50plAHahkePV/0tx1Nt5ng2hSwg1WCMHQUWcE2+1+7/1xBl3NrkBfYJKCpFzqi6o+I
	 X9yYydCPrU9AZFBZ454+8rHQy3Vm4b9SlORJrS17O5z08NnJippHR4nqOn5RA/nT/x
	 vot8E8NGsggMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3CCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006935368.29908.4305637835756374569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21d385c6715e927efceff9e23d5635842b210192f09a25ae95be2726f383633
Date: Fri, 29 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780069353
