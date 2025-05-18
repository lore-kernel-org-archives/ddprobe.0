Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B11BD01D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747601994; cv=none; b=Bic+/UDqNOU1DXEVwwLUJ82pYkOkq3bxwqtkYCNGKApQt8gfh/dNaaN1+BWFRSsO5C/l6qMRTpjCw7pNAiRRe7iq25RrzwWv9jNSDqkICmzMwimp7E9cH3x7yWmo9TVKOYQ7ED3p6RkS/O0c2VTjeB5gb8Pd2gTKu/Pu1PFeRNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747601994; c=relaxed/simple;
	bh=+t6EwdX2w6NKUjba1VRyV1tWrLVgphABdrszxD5iApo=;
	h=To:Subject:From:Message-Id:Date; b=jnEJ5AqZNUye16kNkr3ZEyHVR9jxxRV3FUEI/MX5LAxLJqxnlXAcYvDdvlhyz584bzv5s0ahXZ0pjNRnqgvcGB1R0I7t4k2cE/HO86Nl0QihQG798YM6c8w8TAmQtbmgFL78/jlL/z0pZp+hEkVAXw4rJlI0vc33p4c6WA6FmGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L20Lh+E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L20Lh+E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A11C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747601993;
	bh=+t6EwdX2w6NKUjba1VRyV1tWrLVgphABdrszxD5iApo=;
	h=To:Subject:From:Date:From;
	b=L20Lh+E8HbGg65GzsWfg4cNymHntM2gFdhcvAFdtvxjf/iBWuGyBXJ8nNOkEZaag7
	 m6P6Zmkd5cDPDmJ5p0gw7/R8sy0aDlq6ZNhonIe36iPuuAoFcGDB/RBDvdGWyP7bKS
	 uUFOrBKyVbjAP1CODxPRFy5YEsjTc+JPTh8KaRGbv/gtndxTvYlI+Y6LRniqfBOK/p
	 WW6eGGX55tQb4wpq9mam2Pgbnu0TH1UA6AYxirLSfo7Lx0tHlfqgT1wzhIT0I8BeLY
	 /KDfQ4aRdURHFcFpeCKtldS+NXk/t5bte9PyZUXQp9OoFnskSN7Rpnwq+lPeZgWauA
	 DsS7ZCIn7vjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91510C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760199357.7586.12295132373518062364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b668e46c22d92287a5d66a7e4a5efa37e881f8ca83ca7c1798bb2e46887e4b56
Date: Sun, 18 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747601993
