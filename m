Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD562D61E
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrDvyeZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C597C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698188296;
	bh=BR2OcYWCADzLhjXmlUU99JJ9iGM9eJgXc48a26gN+9A=;
	h=To:Subject:From:Date:From;
	b=XrDvyeZgHI2A28IKEhNWHASwgqiTS0MfuiWkhPhF+WvR/X4orZdQj33zsyqBaNBbv
	 T4d+sKx5uAQCrVMneVbxgzyEmEumQ2q7W7AYyxOihfkSVRufNnBgPeGg5eNBhTU+iq
	 pyziju4+dd81dtGybOI953xGp6K0juY4DuZUS0dT7dcis1DIXWBBttuf+o5g4729fD
	 Fv009TKkPKIVvNxKkiZTq/gBOxbnFCQpDIz6WZMmDJxeFQklU8cpvX3yzExUo/FyYt
	 /0WK45/CGZJoAFIu93p6SgouOPnC3qs+sglz2LbaXBPy104rNk9JykEWsEYg02SdIm
	 wofTerJF67ZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC7DC25B48
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169818829644.4758.5953173945692270194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbf49f960871401b5614e6d7920d483da726e9aa519e7108ef38d930096f375
Date: Tue, 24 Oct 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698188296
