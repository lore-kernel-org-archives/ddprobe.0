Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFDF175A72
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786420834; cv=none; b=jBehjfLqcNt2XSir60cScwdpg2jHYMEq/1cIlYd5E+QGWkIcFNzQm4Z0f4PhYmCm/kbJ5pdJmDqrx8lS+xl5frWR01wNj7HltUOD4xIkq8aIJLVH5kYFyebwjaagHxYPfahK/pVp1HsZL4XTIwveGbpZQjIc35yevXNsQmN7X4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786420834; c=relaxed/simple;
	bh=1KbkGhkfDXJdnMro3jRy6u1XFIBy8CaIFfwP6z4+N5U=;
	h=To:Subject:From:Message-Id:Date; b=hlbq5Iqfo+OvGQz1cP3nl5cadF9nl5hynToRK9srfBOBqxL4wLn0/5iXUEx6ChEeJkCA1ffltm/+QV6NabBeelN46wnLRyNowQtXjEo2o0p3uHWlegcjEiRNSXmS0hhBHFuknz5x4EtB8mcqDqAyZUSLXPV9rvLKhMVcyyom9Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MevxwSpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MevxwSpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C24C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786420833;
	bh=1KbkGhkfDXJdnMro3jRy6u1XFIBy8CaIFfwP6z4+N5U=;
	h=To:Subject:From:Date:From;
	b=MevxwSpcz5r/jaaVPnk/R/SonLVXBQ1FyKUehlRS8QU0Mpe3tgUNWk9lEK9zgI16n
	 jZ8AOKQt45+m7XGmiSEXodP0NwEnPqGEP2Csrfv3vofJuQGkkcTDIfWyJ+x+NirrmW
	 XKyZ6XbZ+zjjZygvjE1b8udAbpy53DqpRUa35jKsuN2j8qAuXBQ0uSExhseo8Oih40
	 Sf/GkN6YvozUy4g0qbBuVEiUJJJMR3vXIfYCq1MeBbkL3D8NRq1NeKlzNkaTWAmS/c
	 w+NTp5MkIfJNMov3GM3SdhwMq1e1Fso+iAoQvWepXaIGkWGTl3b2XvSajvmKUS+2tB
	 NKcNYpnGCBLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A3FC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642083368.8295.3546695251429289891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b06f340a0462d6371a67fcc66ccc760491cb4b6b909dbd7b3d101df96cde04
Date: Tue, 11 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786420833
