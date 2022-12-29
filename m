Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04661389
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B699C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672301487;
	bh=1+st9m6WK60waHFcpxOfAov0vhqd0JeLxgsOfDw8IMU=;
	h=To:Subject:From:Date:From;
	b=YhvhQJe9djsrxPwwwsI/g+A50oskVfDISkksSHwYIyMBOI9Sw2GxIsTe46lqYdqq6
	 QQk2frIoK0HNNOBg5xTWg2u5LQrAgJ8DCZcjU/kHWyOPKceEiOhTWHwoMQxLyRyZOQ
	 LEU7mLGIqwKh2y5LDNDehBDEqvyloPmuWJNMencrOSR1iBmAVemjFyk8tCaIPIl/li
	 /hNlbWAhycQmVWcZ1yVQBladWAIsRV0W7ukKszacwr/tIMCUbLLkIgY0p8w9XRb0Hq
	 y6xEBdFwDFQ/oXc30Dvgzv9iyXrY/bTlt/wMDtDn+S2WMn5WZB4eKlemhaBWTQZp4K
	 qE48/uzyaDLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC87C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230148744.29618.9320584518700413615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fef34a33e5883adac29e909b7f7210be626b612501c7af98bf18a19eda8637
Date: Thu, 29 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672301487
