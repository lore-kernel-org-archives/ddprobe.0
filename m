Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C8713A3EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717608443; cv=none; b=qovWlqu7TwRfyaRHNtC0+hwJB2iRDoTUjPv5WptewoXOMc0k2jmS4TFRbyfo6VdpIoyAaBOmRDmk0c0jSta4udsT+qBy3FlseRuprFuJbRJPrjBH61n7F9UdNrl827e1brqFN5oyf/pZsStg5F/a/iuKvS2e8mXVSiiXe5D8/d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717608443; c=relaxed/simple;
	bh=1FVh/9CiAEKe9RemtDWHVH2/vKo60P8Gq0D0iBo0izs=;
	h=To:Subject:From:Message-Id:Date; b=Jj5rVwwAxu0O/FsKtWkTdrmnS9FSt6UqXMCQO+m+mQvvqSO97wUSdOUW9XbNYk9+F4FAQ6/kjG6AgQgO8kt8ISaLD5dTO9aaHqqJIlqCaD+jnqhrEtJyo3DqwTrB0pjJDMIXOF8lHlmv+8U1hVbJ7kefvf52ojuQQp7AgPKDIrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvSRqw+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvSRqw+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1DAC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717608442;
	bh=1FVh/9CiAEKe9RemtDWHVH2/vKo60P8Gq0D0iBo0izs=;
	h=To:Subject:From:Date:From;
	b=bvSRqw+cPxcpehMLREgB1GtZ4nXG7cZDiMj1Gl43iyOPeDi1PkyFea4bF+FJgJmvj
	 OrVM41jcO7UeQ3/9MQIIzgRNfbVKQO2EYuTfKi7kx3NBvWKMCXiG2r4Dx0UKfZGrT7
	 67lrpelAKBB0wNEMJQINxveiROKTaPGB7GJ2bXrJo8i1zrCSA4GNBOYFhY+XJR6l8P
	 wRL3b0Zwlw0IhY4hlvrM57X68cYy8RI8wdjSK6lKjFs6Ubl0pvL+2FBU3LjV4B0RQB
	 IGyhYWi6YCsgLXXjEO69CAyKNkKvwUDMOEROcp4MXjjmKM3/BNMbdKtLV1cMkXknjr
	 kBczPuUWfs4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD283C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760844282.5498.7779437568671066779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4763dcbc23b423c1bdc48ab512c1fa328891528eabe91c7df785ecd5d7feafee
Date: Wed, 05 Jun 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717608442
