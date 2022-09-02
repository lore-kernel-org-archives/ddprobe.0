Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C32139C
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70862C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662117653;
	bh=LX8dpJRR0MbVahuEKOBqFSH78FIbLyvLnMqzETw5br0=;
	h=To:Subject:From:Date:From;
	b=Mtw5aN5+Rx5vBuybfQNG9iMS1b8rnLIGtAJmnnp1LRxjou5pNm5WeJlA9A/LptIFO
	 UBPI73Cx1d4d8bHW+J2ldtVVBP3USpqdhiYO3wOv00gA3wISSXAIqPta8WiqyWbyZo
	 cPIsRQWqaMnwvQVzvm0yhX7Gl9KPvfWRJMEKWkJ9gL31kKxiCHyjJlLXb/jorZRcVh
	 4D/0k50CgNg0AItzD+TrvwbveRgs6/PKnWFscRLWBaN1ZPmpF2nWkO4k4XIlamKgVG
	 6ZsHcFBSBeSQaTTw86HSFrTyBTGpNLxmEzfTVzfJFQjvZsWNzrjReyz9dOoFGMyIvI
	 EnvF/BI9agFYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512DCECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211765332.26289.9036505888795212523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64a60b285d877e6c7801f947913041b70b9eb0422fcae20c35726f65619cf41
Date: Fri, 02 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662117653
