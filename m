Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B68D1DFDA1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384894; cv=none; b=d0WhxA1toRh1eoDP3+lXVEDhiQmArHwpShmCUeyrfLb6DYZBxvpKD3enFou7JGA5SNwPVET6cRnHQHfTecls6vY3xFDz2P3SdhlHEtQoDHhvmlF2l/ZHwJ0DmiZzImIEBbACNz61A6c3/ViGJEINy5BvBFWycHvRGPIKpIXXlPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384894; c=relaxed/simple;
	bh=SxrjkQZSOs1QVl65MmlhqkMdYig7u12sCus8riYKvr8=;
	h=To:Subject:From:Message-Id:Date; b=EKOs5I+Sh5D1PrDDOj+CGnZvZOeD5lmHKIAnuy/KgvPXFRLt+U33nrSpzcyIyuxW3F9bQbnWRcVeQ7sh1C5IpdmSh0cXbSDJ/Kt1cGoBslxDGUDiDKSJMUsOoaFQuSCAwxM3Ioap5YWEvnOYzZ9OcZPyE1wqFK7EvZnwUkv8Sws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAt8jxih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAt8jxih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C36C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773384893;
	bh=SxrjkQZSOs1QVl65MmlhqkMdYig7u12sCus8riYKvr8=;
	h=To:Subject:From:Date:From;
	b=gAt8jxihc3SrnYFLfX9/4JDbIonC5NMI29InvzSdY2Xz5PG5ADhIIsbG8nyH7t/w0
	 9R5nKqL4k/0wTtfLWce9JTbOixZVsu+5l1Y6JFCsDQkJ76biipqUUDzRXhZpLYwYtC
	 +6yU3BbGz8ohXc1Sx1zrz0whbZIFP9TQQXCYFCwhU9SL8z7zeBfyJ8DOAFkE5hSInd
	 1H70+hvOQcZG82L0qJqaIV8MPOba9x8OycCEX+K/OXeMeSqvK2FibfzwHZzQxjNSMw
	 Lefp4gGWTNVJ7MQuSNd4kGAB/F2tyqH8vebrGl3AWsDuSghh2FdQnLjJB6xM5ZWlW2
	 ZYhnT0veKhgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94355106FD91
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338489357.29485.9551505545047890901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6098d474a662420b01d0ad6435d922017007049600062bd6afe5e7c403d204f
Date: Fri, 13 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773384893
