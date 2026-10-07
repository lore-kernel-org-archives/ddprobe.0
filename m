Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6422233FE05
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791356434; cv=none; b=KiCEpKAZ0CVEjbaWUIBr4MfJhNtwJYVndaVtZhSQpBbyVjtwt7+sX/dhU4l27Ts5GROrSW32Z3rzYr98K5eKkV9DhW2tL58Ggtz8uHw7/qYqR7UpWO0Rro5Kfs7El9RfZJNeXPnQrEHPlSkbhdasApmErUQ/+yeOVKS0prjqUow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791356434; c=relaxed/simple;
	bh=YqLW8XrZqDzWO8OIqIX3hqoBvXAxmCRYPRwBJKC72eA=;
	h=To:Subject:From:Message-Id:Date; b=kJonLsBZt3qFPzQJRTyOGuCUlBx1sINmu+7tPTf8/dZPiHbgOle8rCRe2pmS7WrKygfL2fupCZyQla5/RP3xrr/nGKrBYgY86tPEF8Na+iWouASVUNRusFMsSNVZ23yaLe/qgq9n3xhwWqcpFE2WIq7rGn53UY+qjQyUOSsv42c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEnKUgfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEnKUgfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF3DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791356433;
	bh=YqLW8XrZqDzWO8OIqIX3hqoBvXAxmCRYPRwBJKC72eA=;
	h=To:Subject:From:Date:From;
	b=gEnKUgfaTndSYC6EGsZs5oSMWSK/b5N1D4apu/MUJk2U/A5oh5KIzBN7NBxcPWofc
	 /dzBrUHi2jpEogVxg0f3KL5Fl1gh3oxfgKne1U9mVMZchQmehYmjbRxf8R5qPA72Pb
	 Ptv4AxuP+Pe7+aBs10m7/72LLlCDO+2uRmKEAzVFyIlXCcWHr2pV+JLvTXKJOkzYMq
	 cvuh6iseLkt6xjfCSF4iSjdd0kr35mbvivPmEU6KPKqelaFQ5kVe9OITeyZyCt4Rwu
	 chhd5XgDJlAPrg8el6e6ESXTnKmcyi92xQJgk+r/UpuoR30F5dUK3GU4Sl0OVVx0nF
	 aPF50RDZKMzBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E5CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135643368.18167.9523291731378430818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc0f7af1899657e927af2e349f241bd7ed10caf362fa71fef9432fb53413666
Date: Wed, 07 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791356433
