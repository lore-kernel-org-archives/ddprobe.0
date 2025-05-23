Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675B1DACB1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748031594; cv=none; b=IisJ13ERo0uwGjaLOGs/2qHgcuL17TOSEPfSZuMheACKHAPKpbLFkyxPwxisvxzqy6Otlz8sPuPgj/jk6BtKyJKZVsY9gQ56G4vKsSfoMkB2UplllY3gmAUqcWj+KGbU1UrQGthG5VI+v+3yhW3lwEzqC+zDCYGsAZkSpKLERc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748031594; c=relaxed/simple;
	bh=WFhH3nzT4BVZj0tJeZVZIaeOBSMCcaAoj5P5gZWBUdo=;
	h=To:Subject:From:Message-Id:Date; b=T58XuLqLerTCE1JmheElHFIm3jcR/3WZx1lROpPwHwqNXznPIr36L+VJnDEbNPxKjhdE209WStCf+UdUevuGzWfNJyHrxTzWruRSrHnK4guQIa5diUT9RwIOyryD9wdSR0QlajOlTMUqYNfzUQYvRSpOIi7nk9DeYD8RWW4jNGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiNPsbD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiNPsbD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8247C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748031593;
	bh=WFhH3nzT4BVZj0tJeZVZIaeOBSMCcaAoj5P5gZWBUdo=;
	h=To:Subject:From:Date:From;
	b=TiNPsbD+N4wCC+MJ89EemGRAANiZ//nOYtbLWTBW5EGA57YfrFiMsBch2BApEWTN4
	 0WWzItzPIJXu8w+qxzr78LvqK+uG7GBMKCu4i6VQMkYLcAc57NEezMEr/ceYG9+6ZI
	 MvyjfvF1ur49ugVGrlq8RsQ1QjWJdA5ay+WB4zGUgdIq3Le3FUNaGDpPTNK3jOiAaD
	 180wqeZE7FD3o1CXDLsN2vkK40MwsZ2HYsYnjyK+6itWB99n8d1Td9oy5mlPzcJLVW
	 Mp5LDagv0SoGTZlJulFYyLMvD29+i7dxDnqDRfcDNFZp+i9TPJkaOx3oePCM2fK4a2
	 LLsSM0yGYdyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C21C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803159360.18986.1128485439782604240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026ac98ab1a8d095ab485eee3199176b133077372f57960b98b734225b20c239
Date: Fri, 23 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748031593
