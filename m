Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A773D961
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715945543; cv=none; b=CMLaCIJRdOia4Z4sj/yalhQ0sLqykzb51vE0fAGfn5A8mHIgLGfCqM0yMlRyrODiP94lxZAPQiNg+VcAK7zXIp0LRaYAJEcv2ec0mTQ7yGpiD/c+Squpyqr352rV5g/a9DvUovnZYwzevtoy3KEzxHV+VDnqjIEVbmkhglxihL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715945543; c=relaxed/simple;
	bh=bJFgzF2U77DlbBvmgt6dgamLuWUk7/LZ5BsI3E5+BFI=;
	h=To:Subject:From:Message-Id:Date; b=sfhAgdu1bltzpvI6L3gCeQ2HuBclGH9exxfY6s0CWmrb6DJMzgJ+2NmynR4GeLx0z4EPYOoNWwbz0JnkPCZoN09oeZguFsqbjTdC3t8brhE0wV3IqvNONLhXcnlcbm2Ies5wEsWLPreH1G0LVVBid88HDtJqFRawCN2B8IzH58o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQKVwBu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQKVwBu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E567BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715945542;
	bh=bJFgzF2U77DlbBvmgt6dgamLuWUk7/LZ5BsI3E5+BFI=;
	h=To:Subject:From:Date:From;
	b=AQKVwBu2UBNWur1Qo/nGtKlYgbpE+73gy6CmI1IThEt26c9ZW+ga0X4gjUd5YFrAL
	 UrNM7xL32g3m5y/ctQjRq2OZlKTdpXrnHnfYd52icG6aa7zBEMZYqMJx1kTfu5bpgX
	 Nx2Mc77gu66JpA73F/ZRQS7jBeEoDPOvCUzEaAEHfclB8Fwh4Y9zdOUI9PpGdag2db
	 FQqUPA+GZPkb6/uGIJsgyauQidRaY7FKa/tAoaFm+HHFNp79CXL0ERVy4wil8G4h2U
	 AVE4xvR0qOK7snjtbvXS8A4aIebhvr+4YKfKRuSRsfJXb89WfvP5SjeK1ztdxuQTUb
	 THkW5Z40zB0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4CDC25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594554282.25185.13245762991318018207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1efc5e0625a215ede6574074c9f839b5ede15cdccc7e31d8729f2c20537bf2
Date: Fri, 17 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715945542
