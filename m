Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F4156C40
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326394; cv=none; b=Y1YR4M/lyVASHWtwBs2O7exWXRZWojHEvVXM48t6nnXHXzg9K96eiIbtZD6g8K0C1eOw0VGO0Wo2tolEDNRb2jcWXeOG9SyPwGlAsljswtZYoLHRyf4F3G/KBzzK6F9D1Sv7kzitnt+ck/3gCQ+tNt8CbGwJXNx9+IPYM6dOWj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326394; c=relaxed/simple;
	bh=TRmELqPkK3ePQJWpbSObJlypxjHKYlY3mb9rV6WD9AQ=;
	h=To:Subject:From:Message-Id:Date; b=ozjigg0HiJMxt/32wmjyDu+O0mLEADUjlhvDAO694+nA2Iz29iXIuyo5p6IsxVwdF8hw4Diyt05xn2dkLSxUN7RcyP7Fm2t1ua6g2Fx+LLSBJSy1ZPVewaOGCcVonvdH2NdKtcP4gRIOnIA/YtCncb8XNjeuzY99eMCQxva3E4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGauwObE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGauwObE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE07AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749326393;
	bh=TRmELqPkK3ePQJWpbSObJlypxjHKYlY3mb9rV6WD9AQ=;
	h=To:Subject:From:Date:From;
	b=NGauwObEfwaifq/kHe1vu7fh/5wvT74rEhPGF8NgkQNVqlXHUmTugnnN5H/rucXoG
	 GtHK3M4hswy7fngz1Tz43bY7qM9WZ4kR+/qY8yJK1RTyCIFy7t4fMVPTw3go7TVj/T
	 ax9xFbDP9f79xtTG5s97dUTVKstUbxxM/ebFSocxGyGTUGrtQKYv3OQhk2uQddR9MS
	 TWYzVOoQArZsMkpNrcOUrahiXi/nO5bAUvB6mK4FW3eHPOSEc71aiTFgtTsgAn33KB
	 ufvfBTy1cnoflenGISfXj4Ek0WOLiF17T7NEOVJaJzIVkLMbwy+8sqW1rG5sbG87+H
	 Rda/hkLcJsRCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932639360.28392.2931787964751877075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab2923af6b2dfe8a59773d1461928fa5c4dbc9810e88e1beb6ad1acc35609ed
Date: Sat, 07 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749326393
