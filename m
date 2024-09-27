Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B51B3737
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727476554; cv=none; b=ItkTtlNVVShyOHh9oYvATMWx1Qm2nYTLZpr3xrCxnMWGfoZvED698cH4VFUudak+Yb/jcjl1M1s8PRyT7YpmXmUaaw10aL5Hxsi3a+BeQbvUtAH6jGrhgyO5R3jlTghWib37jZf9p/uOVSCq4T7XbJY2UhSA7RZwdU8Cywla3qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727476554; c=relaxed/simple;
	bh=x3uICirlo1+N2nJP8BnuWrJqcquP5vU4oCPK0fj0rAQ=;
	h=To:Subject:From:Message-Id:Date; b=mzgaTktvOnWg1eBL/bcrOezBh06xarfw8pJqlWCp1ByU2vxCg7itwX+2FFJnEgpUyuo1aLkn8AQC/fmdExvK8nF5wvA2+p7TnG273S9jAedDNG88MhRq2Fms16JKmTl1VCjaPP/N8JW5jLMoggUE5vBY5jtt/3ghfNsbnwslntg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsU90ZA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsU90ZA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFAEC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727476553;
	bh=x3uICirlo1+N2nJP8BnuWrJqcquP5vU4oCPK0fj0rAQ=;
	h=To:Subject:From:Date:From;
	b=JsU90ZA8mCvD9L2Wob2pAIR0Kz8agjqj/xn9+Oo4ari9Rz6az3/jViXpJXRBsGOFk
	 2gKOFqFa1hIojBfo/NDVEQ8DeBc4HSPzAZc++7pEPDfX97+gW0MjvFw1Btg1dhTeFU
	 r65augcOwFONnxAaLo7IU7w7BJtFw6qOTohDRBbNxKZeKl/inLvmEix1LB1XTCepXx
	 iQJvKFK7Rb/tUqMrjbJnaaBaHIByu8ZdKRUG939g0W1r246MhN84P/AIEIeXePGTOC
	 /4wXqLoEWbUq2VDro7B36KJnyb5nZHWFrY0CYEVjcKlMxL3+Bzyysrntft27jFL3/m
	 f9GCgPwUDy4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A9CF6488
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747655358.12803.10881442449689041472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703b986ac883020135bcfddb12f9e5a9e2a20c235d80a962b90a2632ada9f6de
Date: Fri, 27 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727476553
