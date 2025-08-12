Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46A35948
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754970594; cv=none; b=Edh18rDNm6h+Ufu9YVoduOVW95jYl/3/TFBrsWW9X7Zd1qfOzRY9NW1cjpAgX5eXVwDDdxG56WHhyLo2Ti4Nr7QFI7eJlVUb1j6Vm/J7h3dfJzmag5MzWI9exMdzFozXh4m4X05j0p1DnFB9z0AS/t33n/spepxFn5qeyiHWItI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754970594; c=relaxed/simple;
	bh=OoVxBGNtwapd22V5JKcYpJl0Y4VCVkMcvSQvZjcTHmA=;
	h=To:Subject:From:Message-Id:Date; b=JzP2LGMp7oe6yxH+uZxG71EIy+en+fKQoFSlhTsuf3XJs4JA2VPW1LYgstCK4fL/f9Z2nn0c0/WfO9cdIjWKH9O2xw9aSaIH2Vit8DUuovwxHDgUmmHJ67jmvFfYvNFoQqG1moUow5xHtk5y2/ibjoGRFZd+0T7Hzdymt++FoCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYpJcl+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYpJcl+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C2C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754970593;
	bh=OoVxBGNtwapd22V5JKcYpJl0Y4VCVkMcvSQvZjcTHmA=;
	h=To:Subject:From:Date:From;
	b=lYpJcl+YEWjob01NFFRPXlaOLLg5nbdwLzvMGGoJF3m+EJpGncxLDPUJ2lS0bkuCr
	 CIJb32pmf/Lq/QcKf1ILq1qHDP1s4yXf4jUXdRcm5FUfta3MBxCMpms0fm/e3gb53s
	 RSKzVHWi9zppsWmdTkC2OUpsn6oigaqvtzMXilWTtpimEHoXI7d87m8PAPdp6dtEWS
	 5WxcdD2IwZROYoaU66z0WiMuxP2iLpzw78H50npd6xElVl5Tttoh+4AFqEgtT/oJZM
	 qlBR4hq+Fr9A1+ZGf/WS/IulWg3LxdhiPGjHayMvdpZn1wRPuY37adcqYerRToR/Oc
	 725HvW3fcXrBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6BC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497059357.6547.11023616668211720968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52640073acc6b0389c32ef5c00781916399d4f5a211596a63d9f291343b07e53
Date: Tue, 12 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754970593
