Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2E74C92
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748978394; cv=none; b=bn6yKgP6ke2eoFmxnwgpDlZqoWlgBbODlGf2A3HMsKalq7tMuWOhH6meudMjFLdQz6WCNw5YQj8T3NtAA55jGV6rCsjmW8/idhVkkleGuboH37NkUwHF3ZAcdzmBq8AI9xVXIp4YOXlq59XoDmN6QfTXpWqsy3990/s6Zf4vmuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748978394; c=relaxed/simple;
	bh=Vspn44W2r5m2WnhyqDvbqprBYH9Dr1aFo81k/RgNsqo=;
	h=To:Subject:From:Message-Id:Date; b=jQOwYhuO+qWWwVw4LO6P2UALteL4utbkXTLKVyegRz0zXp0UMO7T6I9f+4B6fkNhhMWa7b39YvlzkwD0y0SxkxT8VaFQ/GDBJPCzj4T41HShdKzy/95zXcvblQ2hN4LifZWVTXqNUV9Vj4hsIsVxW2k2/Elr2mPVVO9s5+TICpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8xQ9FgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8xQ9FgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7090C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748978393;
	bh=Vspn44W2r5m2WnhyqDvbqprBYH9Dr1aFo81k/RgNsqo=;
	h=To:Subject:From:Date:From;
	b=A8xQ9FgAhEyzyx14/dg0L2dSHndW63xWPKAsN6HXFRQkq+2D2i17rMifv6yepg59Z
	 Zk5h/ljlUOnQY/FL21UIBvAczXqVpLMPI040BpRkBwd04RT0RJludqrHseqt69B99V
	 8JwJl008ftIHV/n7GEIXpcLZtEAUcy2IhfG863XK5vwGgLrZCJI7svrPqp2pEKn6lx
	 Tbhq95NTtZfvTB2bjak8radUs80RgiGILeyl7MT98gpTe3EFhuLgLjFkV144xhn/k2
	 0l3Y+ujzmUF/nH2qzX5TiDYLBZ45FxOybsQzxWvdZs+w4DYJHfW2jg2z84nVEZwWz1
	 tS8ZzPXlYKKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A13C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897839359.13079.11515774554603127507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb5b857c11cb6c94d63f79db0536eec5dec527b12394544e4807484bf00b43d
Date: Tue, 03 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748978393
