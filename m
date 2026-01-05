Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B5627FB3E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767636834; cv=none; b=B7S41rGaLt+PTnAxISwJReNeR0hv7/sLI6HFE9PaFC2PiXX3bmOi6eQlU7U+9C5gNuQxM6JF6fjLRaBWDKJoc4JFhA0Meq7k1ibmjdbir8mDWql+Y6ehkK4cZuHjYY4RK+zenJlCKgXzcs/Um03XpDICpECl6HQuYT4aTrN6HAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767636834; c=relaxed/simple;
	bh=JIzKGrvRQzs9jL3tr/PBgGL/ElYQpgDLQuhcrQvb6Hg=;
	h=To:Subject:From:Message-Id:Date; b=fwrn2hyoPlnWJvPo0aLfQlFOiwc89LGnuAHA9qip+TUg0S4+HPhYl88Izu/3Ou/13+mBh241kn0ZbrMa6DZxC8eBHgiMMmJz49MvG/V88bwnQ+62RjiRf9nrP9JUORCTiDcyNe8TEFVV+75c4nn+q04TVyVnuBs6xFbf3o1vFC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilFfCMWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilFfCMWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC38AC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767636833;
	bh=JIzKGrvRQzs9jL3tr/PBgGL/ElYQpgDLQuhcrQvb6Hg=;
	h=To:Subject:From:Date:From;
	b=ilFfCMWGilpOCnGgVbnw+R6IhuQflM70B+FdXRmTKVr1faxFrgpCROU0W8yd4lc+7
	 liSdIIdpcb7uZWY87tGE9/EnIqnwM08UR6CikQKTYFviBkoqNFtYBukqQk76Ay9Iy9
	 GmxPaXz6jMsuwtA7lrH+gycXrWIaAESOHO+Ov+R7Q5/v4AGnIi1rXwmSfQFvxGEwnF
	 UK+lJGwwM8nIrkvX4T3Ug8keZzw8DF3nWfOCq588/gSgiy9fN5NUHkiMDyzIznrp7Y
	 KOnXO8FoYJXYYRVWgCZkVFdJ2WWVpxFcyq6KbKzJ19LiyxVk6f2OXjiNAhSR7LPIj8
	 LrBe8XdG/Fm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9F1C79FB3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763683362.8871.930295467145019884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2d610a971f8428d1c77445d29dd934a96dc179aa71674521f7dc9c7c964cc5
Date: Mon, 05 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767636833
