Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E811343899
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787404234; cv=none; b=qUxiCEinU4iOPK+Jiad8In9jukECgdoAnWFa/QK+ELwlwyCn4gOpbM3lkIp8oiHl2Hl/7cY1N5pJpUWgPXQsTMLDPFCXviRtT10RkfWPSNnsMhiuX3/ymzlGzXQSSGra24i8T2P2aLL7+0RuEzlk8H5Yzl8GW+lXvUdXBx5X/NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787404234; c=relaxed/simple;
	bh=GbFOX1QdZJ5kC/gNMoun/tO8yhzwjk+j3D8rVwtNHb8=;
	h=To:Subject:From:Message-Id:Date; b=DRMBqdmy1x1tTnh6WoGF0gqG7hZASwxLUbOyedGC2Q359/Pzx1rL4STm3n0rg9L8yKLfFIsRKinIEqlJ4EvzU8N/8jkqCzGKXBmYYyNs9n+ISQUIgVW+N3mhhjpnm3TZvxqaxryBkoWtvo/uxqbWVnXIFj606MHLIY4WOERrXFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWj+ydhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWj+ydhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE779C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787404233;
	bh=GbFOX1QdZJ5kC/gNMoun/tO8yhzwjk+j3D8rVwtNHb8=;
	h=To:Subject:From:Date:From;
	b=tWj+ydhQmRmq07aSMTmuK/z73H6i0FmAK8zg7VvYLpJuVPqUSrfkhAVLsMoIRRiMP
	 0MG20L/+LdOAIWhlwg9U2ROIC5cfCrIeqGmh6PCnxOfKMvoaJRVoYHKj7DL2jbH5CJ
	 duq/Iv4WoFr4JWnBzKDziHoCh+xcj+axPvO227OuBSzm0X9l0i1rjEW29XPGT8Zdlu
	 O5ANXeidrilAiN7734oW66OFD8kILXcW4On6Aqvby369fhcEtZ1dvuvOvlAZu7q3pf
	 qVS1en5udK3jIpqJ+/qHR9g7NTo/52Rk/zi3ScralyXfxyJi16X8ujnpP9F412Uko0
	 bJId0QkmYP0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1659C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740423369.32013.155979369957256183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba5a7b743bc23fa417f20a1444aad4c73586638b1c1847a9eedc0ee97b3f3ba
Date: Sat, 22 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787404233
