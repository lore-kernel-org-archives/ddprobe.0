Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E225A344
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747826395; cv=none; b=GbX/mHiXKEbi58s8c8DMwVawsjjCcPJzdCPu/ZB5RNedN8IDEuByzAX6wR9U2pC38lDwKqwkMB/AGg9SFRO+9TMuX+1exo+OwpYhXHMtbBBjp2N9K2vhnaHXAa6YLWi8SCu8WeOs4pMdctpNQTIGlQmkyOtpXwVJCxQL9yCofnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747826395; c=relaxed/simple;
	bh=nfqJvU8Fg+rwU5Sr3e7avI/oJ3gg8/xxO3sVtMHGiXE=;
	h=To:Subject:From:Message-Id:Date; b=rreWfVMJbxQZLWs3noP9RUob/Xr0VpgEHoI4/rjsoBE6dt1RjTb2wVKtt3r0RTuJGBOZxBk3RBBRWBgkZeVawrsQniE8+QgCSvZVh44lSNqfPxaf7Md42u10IicwbSc3XaKZHxxkKb8SClmUvm1weUyXsMNZ16rJJjxPcQBrT7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBBC4T7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBBC4T7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2140C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747826393;
	bh=nfqJvU8Fg+rwU5Sr3e7avI/oJ3gg8/xxO3sVtMHGiXE=;
	h=To:Subject:From:Date:From;
	b=JBBC4T7TkUKCGN4DE6Kf5AetNY8XA7s+VBR2tVJbUa3qV6BAjGs7vskp65sYCHO1h
	 lDsYMv2ja2RUIqPq6NZqMDcD7paNemwLwJ/UWVayL7Kmqcd9lox1g/sK7L+4akeKSt
	 BJMUSChb0NGx3pKwUQtDNhw+Rg2eD02lUypIwG6MhxSy/+5kNeZIx7eHRE0fQDghNz
	 9943H0D1qijl20WXVSSy/MSranh6jNzMxcpehowJ+CxAFZkU25mkgoKj/nF4hXF33A
	 iVDT4QskL76sb1TKtsMxi25swbbceSStFKJnbe/KzjYYdHhExiuZg8Wwm+Mqs6q2jJ
	 bHm5oFB/wdNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A0C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782639357.2546.9906514711353416809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9776c2b411faea78fe7059c68928983a0b85122bc746d6644e276a41832501d
Date: Wed, 21 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747826393
