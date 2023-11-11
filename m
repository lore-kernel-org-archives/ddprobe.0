Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA641C281
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewm3HdvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81096C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699726696;
	bh=klwrJmcyOBvvyHAnyrRXy9OslGsr/+rkwckisedx0ZE=;
	h=To:Subject:From:Date:From;
	b=Ewm3HdvYuZhk/nKySG4kf9OGn5XlBjF4iy2ffl0b2h/WarZySEiLWyia/wQ1ICKtI
	 eqDeQwkmDezfGYzZB1KpnOrCeKE3HddqiHV3l7GgBKgyyOe6KwBCsZLfVlk9HPvqZY
	 W0ZRbKv1ynxTmP/k6afV7Ec/1t+uBWA8oyIOT7ENe6eJ9dUDpUPQn/LxFMrkTd/rbj
	 2L7KSMsBU3J6C/6f2gSwCP7okhB2HG27swvRpPFNxQumbQ+fw7CAreYA4/hzVlQ2ox
	 cfZQobL4feQ4tj473J2HjZO4ViToN8mDvyCX26PvtYDt4hwxhkzYWJtKJ50BU1puaZ
	 Av50sJD8PFbHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F64C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972669637.9003.7375258829099138204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bed8e02caba94b209bd59931084ffc0a71d9c25050443a93e0586267c8ead3
Date: Sat, 11 Nov 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699726696
