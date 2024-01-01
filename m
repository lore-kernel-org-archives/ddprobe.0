Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227DDF59
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/HMUctI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 939CEC433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704144496;
	bh=HxEtcfXCYy9MNMIYOJauPBfoCEosTAMzM+3CKMf62zY=;
	h=To:Subject:From:Date:From;
	b=b/HMUctIUWMflLN0MJLGYljkcLpODmvOwA1NFVXfoL7Xzmx8yqi5qc/wvHIn+paRG
	 9DzVfz4Weg9jeSqfgfBw5t58HiFmhT4AEdDS5tmxpup0WDbG77Fr0BzSflLUbEgeZn
	 AfVbpEVEgce26jaNwgewvtqYjjiMlKW9oEsdk18YritHw9vegQPWm/4qLZhqY3nUab
	 ecYiGOA4GabAZLEx2Dt4AXw3gc4wOJGiJsy1x385djEC3WnsIye4jgndM7Qy2L4CiJ
	 fKAIIRL3KPG3w7dhFDb2gvjZ2sFWPuOvR1OJnN2mSCv7AqTIb3jfA1RwQ17NVl+2uQ
	 /n1NQNtkSFhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75669C4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170414449647.22419.14998166266969822554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315b297741a98369f74a9544d325843399a4da98287e855aade58efb03e8a869
Date: Mon, 01 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704144496
