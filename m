Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC812B93
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766448834; cv=none; b=uBYkpPcTXNVx+AUHgzsK1M4d4Y5UKPPZZ5sBP5IPNvty32TfoINMBAvp4/mlzK+Ra+dWYMM+guIeJGiZN9UkgBtoDPKUYLLI0yH5SNnuYWOC6KsD+GmAy7lQ+mY13qqqXRHa5M9TeERprKzYvmH5lclJ5JrUsnSoutAXsw0NFrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766448834; c=relaxed/simple;
	bh=bFxi4vZMwnuCSoYN49hiUzxXUYRYsz1u+IFrbWsVQGE=;
	h=To:Subject:From:Message-Id:Date; b=tL2rIeGKOSf89FOYlYt4iUmw6HUguyjKcxxqLsM1CfZyAS9swDqpGOdkNOgZ/nBh97lTidmuiz9lwELxn48tVeE0+6ePtT0DskSWkYZQytDTAR1NR6KD7yN4rxdpHoIJNH2pFw1RkK91vn/SZDwKrhm//oLwbF1m80nNHSGHnFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWMZ14Xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWMZ14Xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766448833;
	bh=bFxi4vZMwnuCSoYN49hiUzxXUYRYsz1u+IFrbWsVQGE=;
	h=To:Subject:From:Date:From;
	b=nWMZ14XouxcWcQ3euiYAsq2etUtbBlvS+Vn9fUveLM1SzMK5vTD/CnjrDwJS/n/I/
	 jh1yaYgLtvtA2nWZ96e9gD5qJ8ncbtRUYUsQTjfIzzrtGKE9c/1sB69g70VfrWCQrI
	 Y1y5R0zOFKUBuTLmf2+tX7201pTXpJBAkCQD56zjWVVX+MmKax9eQr0ieahAfDVikA
	 hSoJvvi0hraBXLWjlWZf1drcTucagN4iBp2GW9ATBIleAqVPgAykFzpZOe7gFnSC3T
	 fL7oc5OstgU6BgXihpM6uuZMxC3LRdbER0pYTSzIg4gXLmXeKGpKVz7gsxcGNc1Htc
	 365HkYllAZ6Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462BE6B26A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644883357.6898.1249114847014024672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0afc293e78a00577526e634552945eb2e17f979538ada5542b5dc76ea95385e
Date: Tue, 23 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766448833
