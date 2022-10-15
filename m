Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D487F653
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75375C433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665814253;
	bh=fMHDyRZkPnkUC68f8ggP3Rav4HrWuL6zBw5DrXuelMg=;
	h=To:Subject:From:Date:From;
	b=OBUqZFx1Ei8JyLtTnrWwu4dWFhRqLkMxjxmtL+WhnCj8D4QlgqMQH7srFlujQ8Qvb
	 p76YHr+v3seVwtnS8e94nzQiKCXZm6wWM4re3c7GfgAxcCSFCLejAkYFmbxGC5bPrw
	 rOdOkYg9x3pl6qVI+bTFySOPESzQyGfid/smPaML6XmEfUg3PwmEru8CPXkTIqgI31
	 03FwcEsF1sUtre0bAyR3I9k2DYRaU3ADz+Ajivs/xlzwg9XPjkSvaPACKOl3rSxEbM
	 ICYVb01+jGFYy5FdsBWd8Y2OipxDgSvmvmrFt1HKkMWctnCPFUpJ9Yu8k7tJ2byArw
	 JfueyhKntQUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5959EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581425333.28708.13872579009738203391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163c3d17f5494f3e2d820af9d13d212fb237f0bfe5780cbcc7d17d44412c0329
Date: Sat, 15 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665814253
