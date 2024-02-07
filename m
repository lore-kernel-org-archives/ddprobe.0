Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED9433B4
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707334697; cv=none; b=L8B4DowiW16MsWvB10Hv0LSk+0P2/oYH5U6KvdMxrt5kNIw1+JqZE2RDGsW4novnjO9L2UFYHmnlTwo4mT5tKj0/iuxk2k1LQSILw3nk5jGKzq+6Ou3MBB3ONGGndfzY+0hidLHBqjkMC0JcbDyJBhDk7Gfh2fyVWi1V8Gm32Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707334697; c=relaxed/simple;
	bh=4wdyjBslld/Sdj65MuZdrylXmwWOrbfJKbIyavzV4gQ=;
	h=To:Subject:From:Message-Id:Date; b=oF7k7kqP73gAuGGZ7pH8tfuC9pn5C7mEvFHhbwjfKGGGUUjHL6C/cCFGw5iFXN+9Wlpqz/+s1OS0Qa9WoUPVkzlMnYqrAqujSEV+2ikEUF9nTrEKR5xZe6lnGESCZ7QeXmPZgoAbS9Bjgk4Sj34Ibg9ATP6v+8cRX9CK4bNT6JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S21IK2D4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S21IK2D4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93ECBC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707334696;
	bh=4wdyjBslld/Sdj65MuZdrylXmwWOrbfJKbIyavzV4gQ=;
	h=To:Subject:From:Date:From;
	b=S21IK2D4IhZ3VwazaQCwXMGSh3lF05slAT3HsFiNBzxNya7RCpe/okbwn97KH5RpW
	 lVQUPd8KC12LGbQmBDGMvbxjlh6u7ztgnQ3t4PLZQhQH3ga4+khLRAN5WH0WoNMukl
	 MJEvfXNqrIENV0heYvo5TEUhv3456eq6lvjCewMw2z5G7HsFTe9XRx3dmmQju3DHCL
	 ptJlWgPTVUnSPqhEL6B59Bo0fJhLneYi7NHMzWc1KSPR048k3mJwWRlAARNMbmbr/V
	 9eqDIGJ6qXnOe791H0Xt7MmhBFE6sshfUOmh92NkbX76pny8/d+HjZ814JmEBmj78W
	 D3ee38nmyHodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DC3C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170733469641.12978.17708141571999121172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926cef4cf736671bf86cad9d9ed96ed9fa77fcd980d409cdc742ab2cd99f620f
Date: Wed, 07 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707334696
