Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1185964D
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712774297; cv=none; b=GtZvzPInQHq3/24Xw2FhyKG+VjxXy+fEl4SkM6n8AXIUOswXRaGO+60BbTqjDhdAul2VQee63c6/Xet3KZsW4Vjg5S+k1Ne90u+JLv7bE/Op8TkOJ6p6cVbliLasnF2avh7fJHUgV1zZ/4AojIY5gceoRF2zb+IOdpj6cMQXo78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712774297; c=relaxed/simple;
	bh=JfkhEB5+C6JXGgJZU3Xkk1nEkGtxKQeX1YcW5Fqq74U=;
	h=To:Subject:From:Message-Id:Date; b=g6Ywms643w5ImQW8GKlKXYLkvD+m5Xvn/lhdnPgxQ104NfK/3DXReaiZ/1iZZLaRvPNmLL+DYp+1CAfj/2GWPtDIDNyDnflBkQksZBV8eCcm7uZeQZ63KYgoxPkjUmMaGxQyWPqIpfyuWwcvfts3IALScvGaPhPOhExBFZ22Kl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAZgp1O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAZgp1O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F0DCC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712774296;
	bh=JfkhEB5+C6JXGgJZU3Xkk1nEkGtxKQeX1YcW5Fqq74U=;
	h=To:Subject:From:Date:From;
	b=uAZgp1O+cqSkyuLNMcGFQnGy3fQltmhXhQ58wLVXrCSljedCDwiUlban7iscVFstt
	 QfRVjHFcHPQ2u+Hln6P4cbomETvzUpRy+VvssjNunYdIgpeNRnZba/8bGLkchI0Dvs
	 siunlHItG0Fc+9lu6VtPENu2BuEX4pWvCdzKYiiV6Fva62QbLi7USmxhqNdzMosPrN
	 Zl9naozGqB6MXDvI7d73hp+E1QtzqfadP+RMNbwUOkUbYL9psRcoQ/EaIPrefm8cpV
	 t+oQnTYD0n1pVWzvCWZJi/jtZcd0LaxpTi064SVcDMMHy1wEZ5AvjZy95fF1OR3fyq
	 y9Exv6w+Vt/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 786C2CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277429648.13272.10509444272727756807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bad213dc9efa4c3e38095b614a25cebe490314c0311383bf82fd2fa8da5ecb
Date: Wed, 10 Apr 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712774296
