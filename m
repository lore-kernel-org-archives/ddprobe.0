Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507E43A4274
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781726794; cv=none; b=UspNJE6fjDeBfojIEZWJs2Fj+cajT48nxHumRCrjGqNc36quhpBUFzlruqpAs6051cJ3acpHsBQFzR3kxaNh/OiuNVG6VZ8WpPIqCHsFz5woZisX+BzfznmvK4V1sBTIxbj3ZXkHIXJNqhUYye3DBshmDz1Vll36amkbbrc3NMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781726794; c=relaxed/simple;
	bh=Ov9Fdr95Pq3PCDxX8dSJcJxD/AXKADt4rBIElatgKE4=;
	h=To:Subject:From:Message-Id:Date; b=J7/zL0fwLXr3XiLmnjL4R5vpuYzN/FqfPmu+fgUxWw+5WAKT9dOCQqhjKdJ3YMn2o/is3xJZi/zcReQmCzLDrhzg88/m/BLI3BtXpsVN9a/MmzSuJ7ECYnv6TAbGU/IpTFOK72ZexonMb8/HSeZ4KnZxPJOs9NiSWsUEK6MJhL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lANF5IM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lANF5IM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C929DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781726793;
	bh=Ov9Fdr95Pq3PCDxX8dSJcJxD/AXKADt4rBIElatgKE4=;
	h=To:Subject:From:Date:From;
	b=lANF5IM3FCnW0G5JkixE3QXfMcNPdcPeJHdRGnLIzjVbKd0KVw5GwNqyQPkjAxlq0
	 apP2Hl2r7NIahpEpYuPN3nC5SNjEOHBUE59j42yvsH+nScbt30bLnyoftD9x0L30np
	 4BPK124XB29WZf+ozNoEk2fT2/IrkBE+RWCqpCONX0qZ8ee4J+Nb0bISWKhFy4hMix
	 W3TPx1Vna1j9Ijgn0eNuUS9dnGMKdQrbFxtMoNb3a5rUcy7bmolEM3uqlS3i7W5T/K
	 e/hrsYl2BeoD4JdYUUYEmhujXw/YIIG+1GjaPy7E/vwCBh7BtTbDoKImK1KWfybwZi
	 Ske5bcrTDyKpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB49BCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172679369.6739.5655276289295660860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9979813e9b5f801082a2f572e4bef88c427903a1bf128723dec56f219cabeeaa
Date: Wed, 17 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781726793
