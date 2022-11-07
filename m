Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2446D51D
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690ACC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667833254;
	bh=Wa1+OHpPvzCkM6XGWJT29BbqsB9atCADei2lkA2Er7E=;
	h=To:Subject:From:Date:From;
	b=kzoizLHMiHjsLPbpQ4ecjX69ynA5NEI9SOqCAitj2hkkFrjDilkt0uo8pWS5YkgHo
	 FW49N1nXCyj9aZviIwR89cdM0cAaWa8v/oliUeN+ECNvhe02yG056PFcAtx7Y2FGzF
	 4NEQEcl+DBS5oTSuJ6LnVudPyo3QEzW9InLmTxKnqzrZ3wlcJzfkGZ1qNJQ2JneIx9
	 53vyhs1ZQ4gtjujJqUQWmUFlneDKuFd6XJ2LE51Q4ghhHDCoYyIukMWFf+wDBcnU/z
	 uIO0Kt2O2MGcROmq79ptXit9XgC44YTNhWssZKtZ22coX1NvfS2LDK6ktT2Fjmbokh
	 27uxgaSwO330g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F5DC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783325432.11332.3446679933909836696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2ce40c842ca0378a8c754901d058bc22d30cb0ed993453302e624adce3e408
Date: Mon, 07 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667833254
