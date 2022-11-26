Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1149EB2B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0B1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669460454;
	bh=J8igq2gugZ4Ry5lY5vkrmA1P1HYdwVckMB/bLSXGpAs=;
	h=To:Subject:From:Date:From;
	b=hdGa5s/EEEYP7jbgOjH06Ai/NIJ45VPHj/iFr11j6Qc7tJsBrMIWTOoShkkT/ozrW
	 sH5xgwBgrMPX7aOYIdoH3ghAuWFztP0KVxGMKRUgtP1e5oIezFtCQ0fXpwHUip/4K3
	 XzDZ88e128uy/smWsvyGQS8oYZ5YAI+81Emu7uhosI1JMlE+YSC6nGh8AmX4bg8dvB
	 //4UnDn0JrdjtdsdhT44qj0Bme4lGs3uORsvlUPkKDDlaFZOO7vXFIgaUE1C1uP9Zl
	 0oB810577/Rwf9Y2KV07Wp86Ctfv3DSJluFUa5d+xK+GGGs7D2L6B4twID84ABfLzo
	 utHaYOiQPOAyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B76C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946045438.32607.14898534154510357211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75684c3009ad01552402edc1d47346a2d8680eec02005db42819e0476db5e188
Date: Sat, 26 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669460454
