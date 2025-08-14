Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE92625525F
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755138594; cv=none; b=c1FW9doPGVwc/KFAPpAft2VSNnYMBzuGx6glmrR+fm5eN4vA2fRV8Tg1hfQBD5WhjxIWjjICm+hmHgG2OxvK2g7UAtO4XsxPUagH4c71+IoCDuA1vvCNW6vS2+icZE9usJdyt1fGwBxbBXEtGhvYG/u5S4U8h2eZODxHzwXAjE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755138594; c=relaxed/simple;
	bh=p6HqwvP4ggccFFedyMS/jjd4kAaahiOCN79/hkHESZU=;
	h=To:Subject:From:Message-Id:Date; b=fK/eoeNqHZTO/+2CsSynOOCwOZDawgNnI6d7QH9bzG0YQ5H8VM+SwFxHdWCT8KnvKm7/OdkkHaI73m2BJjQT9ZdvjD7mKuZAsp8fhLu2vmIkm8mtXbDiHL2JvzFgzV2SauW5Egf72iX0Zdb136B5/cNz6KH6ZrfrqiPAXMr4tbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkXXog0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkXXog0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44ACC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755138593;
	bh=p6HqwvP4ggccFFedyMS/jjd4kAaahiOCN79/hkHESZU=;
	h=To:Subject:From:Date:From;
	b=VkXXog0UKPe23Y6Ra6RNQFgsXDS2C3ZgWziIWyFIXysP8QbyV1fXVpcGgSH43J0Ra
	 FLP6Wxu8rMvTIqRXZDS7S8yR5tE7265Vt2b9zzdzwVf7TQ35mDGkGgyxs7npqqMnaL
	 7i3oRPMzdGTtW4bWmvRWv6PD9nIy0n3/RqK19cUwuSwiZqwfh/o2Ssr1hdEZ6nrIQ+
	 NE67hj+ETRw5TBdgzpDg0kagTtVJzDuWeZsxHi/IDHZMcXXTV7bLdlJwVzW1NQ4evc
	 xpUDknEO+QniJf8wINwXw7OTy/bY46MVMnBy9Zqoxp1T6HBL+oT7uIYTyZWB3i2pmc
	 gHB+4sdwpNyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A95CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513859357.32619.15862356518277094357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627731122443ad5cc2e48f0797de1de762cfeed3de3dc0d9face907401537055
Date: Thu, 14 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755138593
