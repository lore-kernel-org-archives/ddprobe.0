Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC4D197A8B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742079594; cv=none; b=uiOTkdwaNMYa7rpZ2COyBgMt1KSmzQcDNGsldlRrm1q9/iuSzGCnqbj0wNEdBV1nQBvq0KRNLQoKBXlW70ujxPTAz2mIfBbRrCzdEU1mkmMXgPY1wUTONE01r/LjMxQ86xydnPhAea3PvDVW15hNIDCL4IAYU0hc1+o1A/ic818=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742079594; c=relaxed/simple;
	bh=S6gWr2r/R2KKFaBoevAH3AYWr/bIRIfEpnZlJVReUhI=;
	h=To:Subject:From:Message-Id:Date; b=SM7vfiN5q6PwZxABcdaANFHrxgdny2ktJmxRDCbHi6LHviEG8vIY6c7gtWKWiD+oJ2TFwP8InVKWvr+LWZXk1IKCIRpVJJYcz5lEX1WKYN7t5oD8E0VauW4Wdo7Iu9YxNFEWJFgv7jUBVawtFmF3+yj3jXG3GBcEsgUuYUktCR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juhxz/WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juhxz/WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0E6C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742079593;
	bh=S6gWr2r/R2KKFaBoevAH3AYWr/bIRIfEpnZlJVReUhI=;
	h=To:Subject:From:Date:From;
	b=juhxz/WUyplPI6kesda4DT4kLcNxDFDn+fxqxyJn1Qyyf+3WjvjwaCltRfUWj9VQW
	 vAgnFD3swtL1Oqh/U61a7o3UY3lobrJ8tU54Unvn3poF0VRvTJuuqCB+BJ+pGz61ez
	 SuVAXpLuJRuYzmS38SL1tsq/1/AHSWSN5DN+6mUrJBEpywIi0xmDiIO2btjmu0tGSD
	 E4j4K9guME1updpKKEOG+owNmrCG03miF5sSukGtk46ipxAQ6Alx9NVW9LaCa0lkYZ
	 RdbGrEgII8gvk1orxYXGNInlxBz5CyN3DAoX1ItO4wbIu5SZmMlpirxdewk4YldwXJ
	 9FKka67HZGpug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95123C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207959358.8671.6270121572858774532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbffbe26644fce84771188a53dee5eb9fbee9834bde1af199ea92a7b08db6172
Date: Sat, 15 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742079593
