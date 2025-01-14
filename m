Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A6D14AD0E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736865354; cv=none; b=W5Kh3BvKAgf2UVI2pKLB996eKqYUGcugMYV45HGzhMY3iIZnCsRloHbJksiHzH1u7gWBJQIGjPtJoqhPTqptJEOAdftPr7PoFR+zU3eMEYLQ8Eek0LEl5RKEeaJ1DFFIUY9J5tfcNLDH9lf+WtQbtVukq4CQo/R+7vKD8sDJ/8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736865354; c=relaxed/simple;
	bh=ZjbB4cabByPx5DHYNW7imSsz5J1InBDABCKxYfGCeuE=;
	h=To:Subject:From:Message-Id:Date; b=u2ha+8tZqAttnn91iw9167eQhQ6RfKH4f6jnL1m3LRdQehbSJE7LbOQr2CrFNOgPA8ivYL/DcKz3GUIeRS3wj2z/GsyVfmglQKMIIf2kF5LZ4Ht6w8vEvqR46xTVFJZ1TxO94wXkwpAKSdG1IpJBIyN1qg2KUR8E/1XeAF5pWlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhfaSutw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhfaSutw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736865353;
	bh=ZjbB4cabByPx5DHYNW7imSsz5J1InBDABCKxYfGCeuE=;
	h=To:Subject:From:Date:From;
	b=KhfaSutwtdFc6/L6Syh4iNRqrwow9jo5nhc7ozFUicn/bhNeDV+aZH/C9ienKCRW4
	 bB3rdART+22UlvX6LCCjXE/Hgw4MXKuDpsFYzipiggdYVy8s7r8QyudFRgPy+Zxrp3
	 vBceZCBykYKaZWELM97sW/r3jvmpybEZh9Pm+nY/vKehaCMRDPVWrybaUVXJljTQ5A
	 JDZpO//3fkGoende1BoZ5cfgcievpOlWdme1tJ2kPtykaxgmQ9PiA0IwZWvR/wh0ju
	 YxhB3Uu36Cw5Qih8CG0vBfCQKeGfJUXGbrOsFOJqwjqbmltvda55mJbQA1Iygmy8Cw
	 wXeu6t9qbJcOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D7C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686535358.24054.1720956991538796361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d15914fa24138950af1f528df8186bf813f7aad2bc15d722936a54405dd4fc
Date: Tue, 14 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736865353
