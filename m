Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F0A3EA948
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779970954; cv=none; b=KyQWr85heJFlRbiosv3+0RC4PJNJIIcLpWmLezZnSMgg8nQnZvgx1BXnLPFBedtHDNElywnMGM5RxJ6GdHo18K6pwG4FnLFdgQ4VdXsUbeiQgw5wR5WtW1mLPu8Bx4ts+692qTrobtMq27+6hqzSbf3L+1EOG3ukn8NTN3uYzZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779970954; c=relaxed/simple;
	bh=73SrHZhoJ+fK20P7a75z9no2d/AOC5SjNyV/hkxkvxs=;
	h=To:Subject:From:Message-Id:Date; b=AT17A0uWYFU/0OCA8wOz5Bbkj82sgd8pogS8ZUU6ft/I9nPT3Xn3tgJXrGzqwojqHkeDsf/fStv4/SLQdAw08l5ZWjRxzxI0PWTkV1T2Pt4lWe1sm/0DbG8GSzWk8lvFk8U7l4mfqi46Bysk6tc4MmkYXiuHiyO05Y33Z6Gvt+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqnLqE56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqnLqE56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA31C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779970953;
	bh=73SrHZhoJ+fK20P7a75z9no2d/AOC5SjNyV/hkxkvxs=;
	h=To:Subject:From:Date:From;
	b=WqnLqE56jj0DGyD3p+SIFrOigyGKVSh6O1KP/vxsB02qbv/BzhfgXN8wI0IhOXXpX
	 Rh18VMimOeNoVkIfZ2dGVUMzDEuzvOzA2bgVtV8auqm6+SZrMzZyVIciUTbiAFGH4I
	 oj1Cd7LSFttPCvx/xuyT6UrdAzpxh8dQMLqMx9BBtUktdCCR+wmkifux2VmL1H9q1L
	 3T4UKCgHHCqFKGFnO4ysUZrZ8C4EoRlherRpJ/M/5K5LSfWaFpAwefrFq6aGP+176K
	 pWYkWY7YuhGgWHRDI0tUsE5O3L6xABoziH/lp347csQwXkwY4TDT4DcuFPdNPl1vhS
	 aK6Inps9S9I6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A9CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997095368.23792.6615090018092501356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4004d7fa692a2bc74e2370a957806d20f751cbc38292f138f67d7234e5d9da7a
Date: Thu, 28 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779970953
