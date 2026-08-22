Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A61A2D7DD7
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787389234; cv=none; b=gQFMRupdKWu0R74ke8UIZw8qtgHOVChLDsXlpXofioJJKSaGaVfJCpOMIaVPShO/025YFA59qi5b+qPukLHbENXbD9mbAkAz5fQTqMJIinnlmlRXSsAJ+qkpDmRVB1z54YyjetpK5JdtwYzNOyvSk65qtmeAp194w+0Fh48CXIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787389234; c=relaxed/simple;
	bh=paT09+8o4Xwe/S61eWrAJQYey9jlyhKzXQNcy0tkjx8=;
	h=To:Subject:From:Message-Id:Date; b=KmB8YZcFXRk2ePSbmvQAClWi3O2vKfK7bfT2/l/PDATkQF9NqCcygC9atGMmQfQucOtkoAm8Hw/75F41A6/WEZ5Ty8ZLZYNDFPm3ea7/V6u3bbTL+HVsb0nfp9t3Ib0CBed45M38tHnhimxNs7jh8+fUn0C3rMb2t3JnMPPQiQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG/U9byV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG/U9byV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C7BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787389233;
	bh=paT09+8o4Xwe/S61eWrAJQYey9jlyhKzXQNcy0tkjx8=;
	h=To:Subject:From:Date:From;
	b=rG/U9byV2xjdhVPF0xkwwOULskpMDxyZUaL/wEXEjH6ZNSSSbP3etyY33QmrRVeF/
	 pLAP+tb9r8Sif+pgBHApgIbTvhwceCyL7jbB5ItITrQGE9MN83maYVE4Pfw+d42lv7
	 j8lDrE59Iwp0nx+S7CNH6S1c2gfdqagDCUhygRq14PW7rW657cvvBKmvbHgyJBK6Eh
	 qZBk+di+E5IcvYvGOaYU0wDT2YenGJNEctktEqPyIgRq/b5j/CoC0FcIdlq1PeDZdL
	 /zeLzpjqMTg/dGjdAoEipOLEwLrKcebDfwSgb9QmSP9TMwCacbjNE4UOwtEp4cJq6u
	 +MEBFAZdPI/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F52C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738923374.23779.15856606223267437309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d441f6cb447fff840471430acac0d84aae3efa0146fa8142752475d6417f5b24
Date: Sat, 22 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787389233
