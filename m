Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6235D63C1
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 17:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 051D2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 17:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684690926;
	bh=yVAtpOmBx31S9ouVNIWig32IVsS3GX4v6EEd8+0JVgY=;
	h=To:Subject:From:Date:From;
	b=B9ouFjmVMEKsjDVZBGQ9k/jvP3eMykRCwqdSg+evxZxS9l+LiGeQ7RbVtgcSYhY6k
	 YbHAsj/Nc7z+aAGeW81g35DSIDnS5fn1VCOMiGo61UetXNWZUlBTuzW49h3Shk8ss3
	 mi9fOe35AZKpxDJxPtqDc+vo5JOp/6I8C3aTTzgIrPmm7odXKomobP0aL6NmSMQl9p
	 3xqJRe9Yy31jrsp0YodnO1qKeQs7rvj4RP1DUBv8SWdPwRWMQTYR2vYrqu5mktrXSb
	 2cbZPupECRI5Ia/VqRjz7EL5cBt8AsQGK5cBrOLY61HUXTe9dMx11VlKgsxtBY6306
	 6WjuNcjUygLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6B16C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 17:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168469092585.1367.1571710439223526252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b339d09e6043e7ca2cc8fdd0134417ccadd22993bbb2c91eb844270aa509979
Date: Sun, 21 May 2023 17:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684690925
