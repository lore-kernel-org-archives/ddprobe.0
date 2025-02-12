Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAB1202C38
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399934; cv=none; b=P4bnCN6pgs2KAeKZumSm4inxBh7a7CJKcUH6WU1A7oe/w1d3uQumg5khK/C4Xrbzj1OVsuIKdSylZCXgCL4d4aRIMdasext5j3iBnxyl5Jv0wdCgv3wigNpsbQJtCex4ynPXp7S1EwyujyYDhqQxcsd1+FB0eALYwFmUgS1vyZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399934; c=relaxed/simple;
	bh=uxZDl/WTvhPJk20YzULogQCx9osrr2I6LTlqFYiVFXk=;
	h=To:Subject:From:Message-Id:Date; b=uGtt3/yXJDbB3hYxX4i2fpVJhggI5qKV3+fop/99Xg1reDhfOPm6yvQImtPZnx0PfSKCZVel2Kwo+QdjC/wvLAW/uRIkjSosjMwHsbuez1rKSm0kG3f/TYoChZ7MXbLKbhCXD3S9rLue3q5J5NPxgtq+we+2+AR8dvuQ7lWA1+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZuWQwj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZuWQwj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3233C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739399933;
	bh=uxZDl/WTvhPJk20YzULogQCx9osrr2I6LTlqFYiVFXk=;
	h=To:Subject:From:Date:From;
	b=kZuWQwj5dmqpfvZWIeptp/uMN2I7JYAny5dQ0OKlw+skuBrDKRzEb4cSIAo8bqFbQ
	 JRFU/QjRiqIxHTG6lT341GYzyrSX+ldRXSwKW1MnBVM1/P+zP347+RmHzrZV4j6aQ3
	 JpmOS2x+6Aw5Kk9OLlbZigx0Mi6sLpcDCuXWR3K13PGgsdVZvUegqJlL3kB745xAem
	 +AvE6kLxbpB+d86wGQoAHmq+kobgq1j6VqLCIcCtrTI4+2+MarNCtmCB/UUiUCOpcZ
	 D7d9SkTo7brkfsyMJ+PJr1smlnZPi8b+RKrIa+Or5o7cuNq6le6FzBE6ZCF5GNSHBF
	 frn0i5ggnbipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB9FC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939993362.30951.10625353506101365168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680347f433989dd427d24ac3a258a0b8d81488e40ec00d81312b8bed6393be45
Date: Wed, 12 Feb 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739399933
