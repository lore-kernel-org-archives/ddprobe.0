Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5243E1D52D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714840343; cv=none; b=GDfyz9bnG2xknMwC+Nih7cdeE2jCH0KQMSBg+tAEZdw1/MjPyfOQBsc4D/vkqJIujdyLvKvHZIQ5TRezvWDUfB+IcBBLZqJu+hIgy/SMgTJhVWu9NHOBlnspAy7bC6ZMo5Dax0M/oNFUlyGKNvyOOyEslIavEJOELA28CNSdPN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714840343; c=relaxed/simple;
	bh=3bkNQExD0LnPtY1wCO2mFwHvU2z1lkwzq73zDqk6hbU=;
	h=To:Subject:From:Message-Id:Date; b=LuvcucaHm9FkgDcJpaSky+eaG1pSYpaHccZ1RB/17MX+brcjgNBkf3sWMSrsjNfNEtf1NHCLPZAX46g5yBuSPIawYlN+llOvSopgBzJZcdnDKZF1gk3l1EdSDQFbSDzA0gkJ+0aJF5PL8fQ4P7JMPjN7Zhvbf7cOSnGGTMLBq+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Qiy/93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Qiy/93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CA3C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714840342;
	bh=3bkNQExD0LnPtY1wCO2mFwHvU2z1lkwzq73zDqk6hbU=;
	h=To:Subject:From:Date:From;
	b=L1Qiy/93DIcHIjhFxqT8AMWrCFPZC9cFg7/8Ird36RBp4lmIf8fS3xkQlsAvAIxc+
	 vSfrTl68YsRoIPcUo0du/8u7vdINlNLS7CZnJTJ56RWAbyh4O3HdacwipgmTsNrXY2
	 PDfUluuCM15zY78TvC0IblEd/zYJZauSJ9jz7vCaZpw+XwrkRYAOqynGwc1oq59DAP
	 po3qeNE3ONqtPdOtI2KW9utgdc8LgajaXF9Gvb70J3uTKcCLgQETzWlAMInOs5o4DY
	 D40qlOmXUw+wvLep0pLx9PZQuW8/LQmvUm6+vO/aoNBs+9BS1YArHBPaHBoe4Ujm1/
	 31DZQMqO9KeoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E20C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484034279.21325.7113524582743871414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7e9dab853f07900d6f661328483e15d16caf90d1a1a88065be22e73a53c246
Date: Sat, 04 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714840342
