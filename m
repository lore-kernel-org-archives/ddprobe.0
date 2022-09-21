Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B657B1FBE
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E6CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663718453;
	bh=J+hBsg2C4b4b1NyCLwW+UyazA9zYqvImF4vMVZGRsMU=;
	h=To:Subject:From:Date:From;
	b=UUKgR+iH+rBg0BSU+jHBL80ChW9thfFfSc/aISnZxB55n4Lg5/yd/s9wUsMGj2M1q
	 4xjPB/czE0JPbMaDwuvxaLGWyZgCFYeVmXmpgvfU9g6REg8j1s3SxASK89as9rAvGE
	 6B5Jpa2tersJIf/C/8VGByGQRczIh0FGUQkMm4sWtrf9aH5gUbZkYXA4DwNrfUxwmu
	 JBbmdgl1Er7QKCS45CpdYhrjOQgs0+w008VgauYbL1dy9RRIUiD/R2MUhyiVjOSvgp
	 5a4GSoN1j51f+PRR9G6fiJTuUYv/HKNvTGl39yuwEK6u0+jThhrnzNz+sDgEZr8HQk
	 QezSFJXK+UXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D848C6FA93
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371845337.23073.13825440479410529724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ade62f438a805d1a37239569d900fa99395544fe6829e952d9e4317d80f130c
Date: Wed, 21 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663718453
