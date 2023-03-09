Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BCDC261
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF483C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678382526;
	bh=Wv7hr4tSGQNtdnuhV6mQWxYW775gAcmoY/jJou/bhMU=;
	h=To:Subject:From:Date:From;
	b=WNRnSxN08ENvnVv9whS2qJw2S62l0fVRX8HZpwOJHP9R48EtJ65Bz5XNuLmD/B3fm
	 bpU7e53ybN3f6O9CHBEPBwmC4NnIG5T5SF6DwZ7I8zuZX3svU2KcKToOMF0qXnLs7v
	 o/7T6VgrhQBpW48mfJP6Hp/j0cKFh+wDmPXl1v43eMHyQ/vnPhdH94Z+qvy6k+90m9
	 PqsBWfgs41v1xLQwZS0tByO6CuUcRSm1C0mE621VSQhbfnQi4pzYv4geiS6cTSwoMe
	 kPxED45J1p/9gpqJgYyPlKeEthMLfqrpVX1xFJcgXNzrFClT6+Lq6zh1LtqYQNMCv+
	 cr1b2eYSDLpPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB865C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167838252582.2305.15932720970221529493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424bff4f8958afb7d2b4e6c37d79d3ee1abad23cfb77ddaeb4113a365e2e89d6
Date: Thu, 09 Mar 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678382525
