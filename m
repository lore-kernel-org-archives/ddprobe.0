Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BEA245005
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756496394; cv=none; b=c6h7WnS5S95FAjD35f3a/T7GWSH4a8YT71bP8qLI2rLXH/TxsFudDitqz1oXEFKwfyq8SGgbs10FElvhsDnLpMvKlxYy/G5gOY8MRtJUXjyvK3uayhX/5U71bFB2vHlLsopiJkCoXUZXkIXPSxQXrYM4sT2o5O8QSELAZj3RJm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756496394; c=relaxed/simple;
	bh=yAAc7BC0XVcYJFvs/U4zE89eeMrU0QPCP6wxlb+Yu5E=;
	h=To:Subject:From:Message-Id:Date; b=D1djP6Igx95rdJpAj+e4316mChcNdJDbH03ci5HOm+8pRLIGtc9aygusPRwB6+z0gpaJbjHHfnuBcOUmp621MzP3IJz4vljyS4EL4vH3NIlFqbU4lLeaH2annp/jpgYu3kCtJQlo4AzP8XuZa0khigZF1sC5gkbzZO9+P3gGsrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwLLJUVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwLLJUVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756496393;
	bh=yAAc7BC0XVcYJFvs/U4zE89eeMrU0QPCP6wxlb+Yu5E=;
	h=To:Subject:From:Date:From;
	b=mwLLJUVAwDkQQhu7HjMnvruiHnNl4dv1UFrK2hMSkjkYJLcuc6fd1EMFli8PPlfJr
	 IqZJDBeqiT1rjcJg4VDheVeaWHNYlCB+ev+HjcUI8FcBzFdvd/72GBVrwehj1RvN0f
	 Hs7oQBbncO4/hP2vWeqbR22B/XvwuKrWOJAZ8hQGG9aQ9I43MsuC3oJtKjGqJhXbYW
	 WJVIzCw78OZEhQgvhMdvWcLj4Uh5mf33mDTuey/lNy/ROCjZZk2sfaWl4uzU6eaWuv
	 7naPHBjcKqD4YsLaZA8pFwKBdBu99/N3Da6LbvGSZ7TRyx0SQVoxwl5Y6fur5/SZ89
	 bfh8TqdkXy7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F840CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649639357.30256.6470711980571776278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e1e94037815ccb2a41576c8656d57f3af4fcd8745fa0034242fc3b45447366
Date: Fri, 29 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756496393
