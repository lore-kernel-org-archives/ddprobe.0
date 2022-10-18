Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C748E7F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AFBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666072253;
	bh=ExVEzXsTe47GhnqiZk+OThYaSWSCkNivY1a3giMcJ0Q=;
	h=To:Subject:From:Date:From;
	b=EgnPyPDoDZeq2ivM92cy6z2Yw+BwV11zjKQ7otN7iB5mS6My+0lXOvykMHMpMkav/
	 o+8xN+AJFsf4vJR7uUcu8a5ZX06y3C9LoWrxGqq0GOBFpUhOS/NN3F2hTSM5vzcDZY
	 ZXqyM2y8r6P7/pBIKzo7VfqKdEBgvj2xcID/dOzeJsH4QMFz9Ep6TBJ17la0gUNw4t
	 xxDPtOVTn3wq3qFOW1FXpJbTg1ieuuHrUlPeD91bNSXeYc0y2q1fylf+LQDI7cSA3t
	 WY0h/r4MTEebVw/Hkf6ANuzRgvKNfBcr1yFUdn8zd8GSQmUHju0uQPvSt7HAjrY8/v
	 nEDqIqPBIlbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4CDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607225336.8892.14261376163915229569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c852484f18c8a54dca8594f57c37f832ce5d59a08e22740cecae5b6787fd6a
Date: Tue, 18 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666072253
