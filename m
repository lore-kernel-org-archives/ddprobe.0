Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C9430E82C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781814994; cv=none; b=c5exaO97pxeE2uShrvyVRYgVxYZDx3EQLIXy0uQR0LmCUMulv58kfzB/e1Pa3aC36/8VjqDWkrJQd2W8G5TVf7NWFYeDaACH2gVIqQcqPxE5EjUBs0ZiEVVnbomTiglV2cKW2yGlYSNtUL61g3ZVPgfYX7Mqr/RA8tpVKX8OROM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781814994; c=relaxed/simple;
	bh=oLxc2SfYI9+lX3zSvAAnZ/07VZFrIivyIxOEe7YyNPc=;
	h=To:Subject:From:Message-Id:Date; b=UNMsdWyRcvkvdHoYjx82teYPTMkRGrcaSloXiC0W7w3Wf1r4FKWvnUAs9WwpC2hx29OYaz4JlpMbUj88AYWLXVfu55QweRilGqYn8zYhipyX8T9fdqx6bamCmTdFHW7xefMKQ1YYkdz0DAVGTN+Lm0RXTz0Zv7h0Sp8tvr9gjyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfasuTz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfasuTz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2216C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781814993;
	bh=oLxc2SfYI9+lX3zSvAAnZ/07VZFrIivyIxOEe7YyNPc=;
	h=To:Subject:From:Date:From;
	b=XfasuTz7jAmOr47WDR1bCdUAEfmAmb1br70l4iAGcbKyCl0rr7rASVvNNXZ98XQOH
	 EufJ8o5FeW0dapUHjIkm87v1n7FqQe/3EvDzH7LHssYRCgJfP6lVl5jMLSvdLRrSuJ
	 Q5M1fFUqlLdIg+BzlFow9Nyyd4a68JzE3UZ30GkG5PeXCndurC+hqxNsJVx20xGqav
	 EM7r2ByvjwM8w12C61Eust/wpbOsio3O/wqwKAbqBZlBUmERciqFJPo+1sW8AZgcC1
	 FN0CyiMutVMvnabG4q2L2IoZF4afD65YholQF5eSO3+06RhgEEDVaslbAkcwW/Q9t/
	 UeZQeBGeWSV9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C7CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181499368.20704.16110751177026251045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc87ec37718544e270d88a48ef7842b05ede26a1cba58c199d89dcd705511b5
Date: Thu, 18 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781814993
