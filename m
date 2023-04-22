Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F8C39F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12430C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682174466;
	bh=XDDTLviFGCsYKJp1APaJqQIw7u05SnwP76nppUvT7q0=;
	h=To:Subject:From:Date:From;
	b=lhxn7ao3RIJNuHeNn2Uje6/fP/CwGNigCfny5yhdQPIy2Mcb8BUtu4AJXKNHc2wr1
	 xqyWSkEWw8MLFHG1R7+w5WFBDGBcH/iQUpROIdO2zQnqFLQkEphhcK3Awkn5wvN6Hi
	 Zy5KEGvAXgTgDwJnHgmwf5V2K84yK3vOBgavSuT8rKZPCoGJPClYKR4jsIqP+zOz/0
	 Ku+ab/ixyu0ocH0FbzAyLgylyPc3B6B5VYWFeNE0fBLX0LHEyAMS2nYzDnt58toyi6
	 IPxrO2gIqySIDZAML4qwRum2ir9o3wyFrWhG4dq83HtyJS93KBmhCvV2AuzeYVdWjV
	 BPgrnFtGLTYyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E06E6C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217446587.425.2670019827231637219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeca2b08b512ce42f15618c2ce3482a6c16c1d6049f9fef1c2eb2460ba51db05
Date: Sat, 22 Apr 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682174465
