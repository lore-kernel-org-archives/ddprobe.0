Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF017299AB3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747088993; cv=none; b=fbydYNqyamI4cjChc0qcQiiDwRJwJFViwEnx55hKq6fapVel11Zcv6Uz4o6Vvq/kvHOCHSsmSqy4V2Ky3kPkp/OhdGE5CzyaZr+9clObFz1loKmmKeIoZGbbuJhMmkA+K6s2/JAfBkfwePrKzUU5K9cmTBcpm+bWibCWCdnmnX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747088993; c=relaxed/simple;
	bh=UZw+gIoSzA65S4XJ96aQGruXhsY9CaFiKymeVvcTmn8=;
	h=To:Subject:From:Message-Id:Date; b=uw0Y5SWEjPgHzdFwf6uk7teeYAMih6bkn2trQKDacJkwxbqxqouRNMcYySmIcbQi7p6FjJxJy8bpqeknUMbQ74wJ3/F6KotTEQB522aLTj6sdIDOlmm+Y4Z85SnTHXw8z60tSf6ZNm1Mo1fAB9DZX2lqE2pGYCgl2OzeeixXSI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGGL50vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGGL50vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE84C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747088993;
	bh=UZw+gIoSzA65S4XJ96aQGruXhsY9CaFiKymeVvcTmn8=;
	h=To:Subject:From:Date:From;
	b=KGGL50vCcgjFfDzmnIZcGAq90t05APaNa2LpkPuz+p8S2BaI/OENhF7jG/c6hoz28
	 4msXXZNY7EbUbG2eXDNWr9GVLpexYjyXbEFXf1/QwxkX8uR+bnpTr0HjggfLyVs8vp
	 XPUdL3GhI6HcY3zlwDFTypEGXBIt9RiMd61rlHIMi1aPiB4DjMkMZYA6Q/wDjMf7fw
	 42YVIyp4onIA3w9yLZuQc1D7PWTyUyOHB5PacfEjgn2N8V8YHb/Op512oFEJgnGNEr
	 a45PEnjI7RffsMN7uP4HACjJtRg6FCwR+eSD9ZfW51Rn2QCTVmBcG4wcUJ0DSk8Bk2
	 tThJSiVpLZ3WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016EC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708899358.758.483939207345347529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f0599c129f672176dbc055d517d36ebcdfe04c5fd6c3e5628cd3d9a026c331
Date: Mon, 12 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747088993
