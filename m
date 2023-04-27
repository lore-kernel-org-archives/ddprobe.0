Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3F315CA
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26C7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682592065;
	bh=u9H8NBxIKtJry6gnGMB51VW10RJLk3//VizP7y4r8gI=;
	h=To:Subject:From:Date:From;
	b=GK/gQwOR3PDFcRZexjaKph2B0biEzCGupoEbNiW0hSMm6zNX5ZpwzoCBauYyFSkdC
	 yTl4W6Bi36RK9ge/NfgKS007qDqn/V+StBYJ7yRIQUvZ1Gb1FP/MiECl6hYMTY51Bz
	 d60wyGb/NG2OYwqpS6jdJc5SMj/nhI6b3edKGCTheWIVmxur12Ins/RTLx278YukYF
	 uIXmb+hXstUKmzS0SJnlv78ayhLo9y/ip1pDMqYj4hVmTua4h/Z5HQb8Ix1R/5JVcP
	 CjKQvyibjIqPq7ugBUPh9ZOEcT3PRPZD/oezdz/lGo5MNBJVwkdw2u/M4nWUv91SVB
	 p1Uiw/7b4eO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F24C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168259206574.9251.6209387571212442347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b82e5701e9b7a0e810de6527a2b11b5ea13a1d124095cec7429826e0be5fe89
Date: Thu, 27 Apr 2023 10:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682592065
