Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FC234A766
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767721433; cv=none; b=mg5Bt2Tvwkb6A5Hnsxi0c2ZtCEdFDO+XtSjOTB/exZM36s6H5qkWL7MnBc68sPWS2f3RkcCkKQSMstlyMeXpf2EwXSFYuMzimz/D+tNUEyZwjb+/8flguREGKm1l1gAG1WEWWLeqOLLJ2Jdpp5Am5Re3vZtY41T/NCdf4DxggKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767721433; c=relaxed/simple;
	bh=InSLGffCg1AsM56/G6JEjrjKfnW4cbMHQXGZrEK+qmg=;
	h=To:Subject:From:Message-Id:Date; b=ntaCsKG/hgHU7MghFqLDFIeSPUs9NxE/IJGrI4SEUTRLrTLheIn6Cfnyv2McYFWAyRmr/od//kMjHlWAYDZii05VbtPqoDYHXGmcWjIbSIJoHBlFReTiNAiSwRdXyJkrx7W+WiuRsJWAFBVbDMrLeD9/11xiUEndyj6Ek5Hpehg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=er1Id+PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="er1Id+PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDBEC19425
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767721433;
	bh=InSLGffCg1AsM56/G6JEjrjKfnW4cbMHQXGZrEK+qmg=;
	h=To:Subject:From:Date:From;
	b=er1Id+PWsJBDu1YhQT6ZQaTX67ctwqi3qDfkaHHjktqbJfDnp/Xi7N+kp4PUPfWvv
	 9O0fu7ggrwwcSY4g+vUHm+2TzFyQAiD/ZujoeUYtowG3SFoyotX1bHdaBss9jBJ9Qv
	 DluJiGGHZwJq0Tj+Bx8duUC+RLhzJoD+cqTuKqFKJuxC3MWXVEBTBX69IjiJ+5WU/G
	 bG12u5I6D+YA0UfLw3FkPXGwrRKgmnuwdcaLqj/JeksFcICEdFpnhvL+lc9fe16gSQ
	 9kll9SwTdnb8jSaNus1KX7mkMw2ksZ6/3oZqxMZN1QumLQs0PvKeRPAAJqrlXi5cXC
	 Zmb/TrRlb8nuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DDCEFCE5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772143357.14055.10398266140494586718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b01603fcd7a7086e3656d4bec40f8444f2529412d14e1d58e11d37288c8d69
Date: Tue, 06 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767721433
