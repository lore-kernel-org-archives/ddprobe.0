Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6DE391822
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786597834; cv=none; b=JTeF7OhtEG+QhJO9no7qeD8MWEuwRtIdixvwLSK7MCI4YcEJbQSdBLm2i/EllQ4KulXhqWcgwbkWnJHnqLvrRi9TjryGtSzdoY6lNVBxkKXD2BCb001hv+h3GgJd8n8niyVTRYj3BwtPtx/MVxnEJB2zaxQhohGrLROfl2X28ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786597834; c=relaxed/simple;
	bh=LTSf2cSCPsxtCVcU6Pv8xptn6lv995S5JKB5aCEVVy4=;
	h=To:Subject:From:Message-Id:Date; b=Iiepi+Zqq9B1LU5wb0371gXmGSizFPJ02KS6SKcyDykxHBK1t3g4MdX8Y6qGdcmI6HwaAN59bdXnjUCRD0RP3k/BVKOxzaWQf/3+D8rKSXS/da4s87pKvFh05TeB9q4jEil94UQH4Ey5ShjJorPPdA8a8SMsQvuXu0pobR4lN9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjlSfR8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjlSfR8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5853C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786597833;
	bh=LTSf2cSCPsxtCVcU6Pv8xptn6lv995S5JKB5aCEVVy4=;
	h=To:Subject:From:Date:From;
	b=NjlSfR8/8/bSJfHj6S+bFTXlBPly57vnZUtn/vtJ2aNnXbij+bCCJpnSgvZz9xa74
	 O+YMONlNd0EsHKTd+ZQFCMnotvXC2eGGcpS4THPVxNwjBQ9VV0aZg7+hkkVq5gHg7f
	 tncX2bN8zclDnlbY4s7WKUXKzjNFZY2Lsu/SHzeLp29NANQk0p8DRx1idOCJYHcs6X
	 9Tj2VpGHeIIDrJgmKFwJFZZVK5DRZqXEqzAjAkARp32FfsiMpZdXF1Qb0Ib8a9DyMk
	 s3AOzccFCnKwA7kS5XShxLwiQ30JkQzo2g11vx5l3dImQo8T32/Aw6TSNJfnoUzPd8
	 Sq04GdCkqmiLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45DC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659783368.9287.14951568511745284151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9674539bb4009dc0e686fc259b36211ce943cb0bb7668792202a2a4de26fe106
Date: Thu, 13 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786597833
