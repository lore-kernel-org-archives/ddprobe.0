Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063718E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673332887;
	bh=nb9V77l+FCo1/UuHB8MoaFqx9xgBm2zc4vOk6WkeuHQ=;
	h=To:Subject:From:Date:From;
	b=Dmt6Hx8hVA/rvZFFlSk95NE2Sz6ru7ESXq15HmmcUBuiMmi4BpGW92fb1je16neT3
	 gGlqUgbyF8nV27UI7G+gwroS2t5T7DQT+SJ/s1vswPHZCOI5AIbkDvFt0WQrkkrREn
	 rCilNER3uUwkc1F5p3ZdYPRWJVKdQXz8GiUuEG0LBc6LXPi8E1u189ZMsfuyDGIlJT
	 sv7V5hmyTKRMH7XK+oOhsy22t/rdUu3EC50XGX2znsOOffxoplJvCKly9OJi4bwB5x
	 pjXVRTHtx8A5XI+tU0cHFFICWRpvEM07SxIoTQ9eaVEYfiMzQ2IgCSAlR6zcYBPf4/
	 ol2BFOcMadx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F5C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333288765.3734.17096097433447764629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa635eaffc1c3345ba63de371bc0c400f4b6d9d34b6bc31d0b07765ed8ce6b46
Date: Tue, 10 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673332887
