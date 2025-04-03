Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B2D1A23BA
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743697194; cv=none; b=WGVZgGeEEEiMkDva5ZaOBtnyuoSJlDPA20zYPoMdpcV1p1W5m/i/sMiG4ia6YjqGAYZ4FID6iRziXnQxYdiDgBPmG4rjev6gbp9Jn4EZTdnma8Hs4mwuDjwD941ypHN1rcdIREFLXeQdxMd/ghNw4aMdgm8zUdFnFoTQthJSzxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743697194; c=relaxed/simple;
	bh=/n1lXNDSKL3i2UJp9u5M6B6d0onS/S9c+VZG4dqCCes=;
	h=To:Subject:From:Message-Id:Date; b=R2xWqD3N1iXwIuBcYBCaH2sDMt/FYvuN93mpHnchJhLf1MaY/ezLRUAXJr84/B0sK+ppjJLAU5hnGsOyDy4Ja3+HRmfMyMS0W7mEh+rdhPN6Q3FpegN3Vaof+1+Mi2PXJGJPoI0+5RTaV0ssfqdVdCoPQ28JIi66rjzAir9cUkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWKYfSBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWKYfSBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D82C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743697193;
	bh=/n1lXNDSKL3i2UJp9u5M6B6d0onS/S9c+VZG4dqCCes=;
	h=To:Subject:From:Date:From;
	b=gWKYfSBbZcyi8STSeG9o9kG2CO9+DprB0Gi89joGPgAEtKdnIpyoDXbbGgs+cIvY5
	 3tbaeclIUum88907nSufc1JIsbm4WBdp7ik7ll0EuZ0UMIM3YijlvsAfN1/ceGkDb6
	 gYWwYCPz1okfrj2+PqqzQ1tvkBkP0DL6F4f6VoRTr7w0wTONdmokk2hAa8cQW2uXvE
	 aTjoFAfXAJJNn0aSzd+s9peTXeRRog6fPkw9vh4NXzwJ/GfiEEzGXyLiQNnTEgvdwF
	 iDSWDWaBmE/N8haGyvBsBV7CmMVphCbaPAeYdZSgNxwQrQKNzzh2WegGuk2HekGE7/
	 F+x4ajrSg/WjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F2C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369719358.8192.11864622003667169895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c80435770ec8482099d804afa8bd39d407fdd4befab9954fc5a5919228e2df
Date: Thu, 03 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743697193
