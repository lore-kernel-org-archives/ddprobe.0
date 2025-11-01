Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF61DD9AC
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762004394; cv=none; b=PRFtN+pG1G9G1kJvMViQiJbRtE0mi4LnchFBbKyEn/XuL9X1oMfPSAKULU7+GU89vc5J+Z3hDgBVsSrv3rVgqFCwPAD+cbPwdjP3xxxgLQ+x9TZhRSNPl6PStePfaccybcaXPp5cWYiK2Q5qkntmwGwEx+Xj/vTt98hNS2cXp2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762004394; c=relaxed/simple;
	bh=hPtSKJ2EcZFVZcwrXmR2ZGwM3Ibp4PcKp/IMefX6wo8=;
	h=To:Subject:From:Message-Id:Date; b=Cn+u1+aQujh4jsO3CgF6K+8QOAILV2VSIym4v995vFJqDbHnhGQUrCnvXkB43KmwQJMocak2sEmZ1Pr0bJfPPZDhphdH8e8KjB3BC4ia78tRUKGLgNExY1UnIUn6i7xvdDeZSBrol1GEQ/ABaGH+C2TNX6Yl9WnQ/js7D78d3b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp8QAFi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp8QAFi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27C0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762004393;
	bh=hPtSKJ2EcZFVZcwrXmR2ZGwM3Ibp4PcKp/IMefX6wo8=;
	h=To:Subject:From:Date:From;
	b=Bp8QAFi9OSvt4KBf3XFff3yEvF5V9s8jYTHtxRE00qBBcTLx2ixHSzh0H+682NITP
	 lybM3jyk+SD0ijqvRPzqfEIRt4d65fUsH0kQH2EVuX1SEoW9mON2CkCRfuFThpBx/g
	 u9pOOcg8EE9mbqbMbfxrzVVg1taxEvPNiFsJGyErQYuQqaJCyGCjZ9/SB/zdlpqFLD
	 q2v16aX0qW5DVizyT/UR9oVk+6nnYiOzkYEoPTFHurlZgjR0Vxqix1olTC4kk6KU25
	 9uZ1ZEVzhOlEAq/PCx9t5LdNV6cpHZWgZkF+8d1uGbe+LL4a9a20BmWvo+8KWL1NxZ
	 p6A/uSTKWXUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D379CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200439360.3121.8256961120518190867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32ce984ddd298090846bcdca8285f0d3359fa113c2aa1f6d6004032130864f0
Date: Sat, 01 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762004393
