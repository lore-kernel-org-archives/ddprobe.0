Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215E629B8D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761678594; cv=none; b=KKkdzFMFextU2Y6X1Qpn5J8eNS5Zp2hF9iYflvpFXkLdC3bvWMOUbMnF65e2zVkvF8vlOuiRqDipe+saSBCh3unwIP58I8RQZPUElwLydqHiPCEimgDsiYlNKvBhWQz6ZIM6toYVYc371X/6vonCUhVgziV9MhwuV2JB8lZi/rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761678594; c=relaxed/simple;
	bh=vpq1qGjb+cB0uc07Y4kzawknNrTfzwQQlL5jDdfpb/0=;
	h=To:Subject:From:Message-Id:Date; b=AcUY8bg/VDAJgA8KMSFhXpp7Bqqm9ZK8Yq9u/xshFn9xjaa0JvRudxCPxAfYoVmF/hMIssHiyjKVCrNyNkMMFv86vCrnI+r5F7KE9RRSSXbjSl8Ys8bV8XKaXKpsI++XsePcg+ekTV/tQtgCedmHbFYKgWI3FJUVRUMCjoo3w9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTCFtvW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTCFtvW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD90EC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761678593;
	bh=vpq1qGjb+cB0uc07Y4kzawknNrTfzwQQlL5jDdfpb/0=;
	h=To:Subject:From:Date:From;
	b=hTCFtvW+4151TzuqPlPtAMA6HviLTtwexZIDOXZgPHSZuP3Tsv2aC4a5KzJbhc1J+
	 YSNlleb/g4Ht8eoBl/TPbC5bN2gxLK5iPh4mFx6glNBfMsMIETcAwU0fC4qzAhKw+G
	 4lA1XUnbM+VrdIf0kz7npl1btGXtfuBg99lW3BkrKGlQn1BreXF/BMSJaFgXQz9Apn
	 r74hfWlRBztzE/zk8dMPPgIUzb0dDT2J0COuHUx3wEFn3s+2mD1VCbag/rLA4X2rNF
	 JnpxPyI7RfsDh2Ktz4qabQN+BK5yde/AdQbpm8ptKE0/C9cdLr37UeUUtGGQ6k7Aog
	 g3MmN9KZlevAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993CACCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167859361.15991.16005693150261515388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d32c1da887624176937600e9467bbfe90a757fd1988560e76fd272a9cb4e69f
Date: Tue, 28 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761678593
