Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9673EEA1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DE81C433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689499269;
	bh=/sKEyM8N1D+g4CRPnZMaWL+EMthrgKiAlDm6H/+evrI=;
	h=To:Subject:From:Date:From;
	b=Y/mdmHG+D0Stpt47VqDPhF4j9cZkp4vYyhiWmEOSuf8IEkesE7DCKL+6G9gwIFoc7
	 aNeCxApz+hjFUciAAY7eYnjcGPkWYi/hcqWKvTtwRQe/NFRop+lRJtAwKnJxtWSdkb
	 R/sxQjv6Vqvct7NThGbSU2yOFvKQmFD8LxPbUxIgjLIyojx3QaRxKixOi6cYXA0e2/
	 IOUPeAm+lS8ZsiEn2DMFO+ltxvzqSwC5TwszMDoZepHELX4WcEGwa2OYJXPZJ7Y3Gc
	 5zq3u8SCmuX4wVSXEasRHHl+lppAH1TGo3FmjPRe0MB8hMD+Pu9+x+vqngCjQHUl4O
	 +zU1RHKS3vssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7583EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949926886.32126.7442241503644999899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1b4d354bf56d12e16b4403c8d9fedbe5816b95e6873f8c317d2a02b217c4be
Date: Sun, 16 Jul 2023 09:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689499268
