Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29EB10E6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E440C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686492126;
	bh=0Mn9iz1GGt1ZiLBZQydvT7HzUhxeweMg1dLUKgD4dew=;
	h=To:Subject:From:Date:From;
	b=mGnbhuw2K+r4nu33Rq3xlf1tZjCZAez+FSN/xYLdT9N2qyBEdQccLHukZSeaRAc6w
	 AItEV31Xjkl8Pg7q4m6PiN11pCDDIX9TkGYasQzCNprP2BzTXPlfOEEWfjHJtCuvsu
	 8TdNIP2+6KeuN73aHEpDlTfNMEw1nHxndhMh4OWpYSbj1ieup9wdVItARfmTYw1RLh
	 sipnule1NrEs+0tXoWOJVqFBFWutLAAeW7HC+4E6bIt9fi0xn224pUoKk5pEL1Jqlf
	 NHqz92pJ/3xzUYPzc3NgejCR4A59/d44XRIOrstNvaFCrWpx6zDvxLRcgBCBU6F7bh
	 MFUT4ybekR+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B12C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649212576.3589.12265023442714213193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffd2dae4b507dfa3fd454116f3d298f0f028d26bef6df48da5ccad831ec6272
Date: Sun, 11 Jun 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686492125
